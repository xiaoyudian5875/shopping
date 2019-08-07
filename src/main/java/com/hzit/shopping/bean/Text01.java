package com.hzit.shopping.bean;


/**
 * 两个线程 第一个线程打印数字 第二个线程打印字母 ---->12A34B56C......5152Z
 *
 * @author THINK
 *
 */
public class Text01 {

    public static void main(String[] args) {

        Object lock = "lock";
        NumberRunnable numberRunnable = new NumberRunnable(lock);
        CharRunnable charRunnable = new CharRunnable(lock);

        Thread num = new Thread(numberRunnable);
        Thread ch = new Thread(charRunnable);

        num.start();
        ch.start();

    }
}

/**
 * 数字
 *
 * @author THINK
 *
 */
class NumberRunnable implements Runnable {
    private Object lock;

    public NumberRunnable(Object lock) {
        this.lock = lock;
    }

    @Override
    public void run() {
        synchronized (lock) {

            for (int i = 0; i < 52; i += 2) {
                System.out.print((i + 1) + "" + (i + 2));
                lock.notifyAll();// 唤醒字母
                try {
                    Thread.sleep(1000);
                    lock.wait();
                } catch (InterruptedException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            lock.notifyAll();
        }
    }

}

class CharRunnable implements Runnable {
    private Object lock;

    public CharRunnable(Object lock) {
        this.lock = lock;
    }

    @Override
    public void run() {
        synchronized (lock) {
            for (int i = 0; i < 26; i++) {
                char ch = (char) ('A' + i);
                System.out.print(ch);
                lock.notifyAll();// 唤醒数字
                try {
                    Thread.sleep(1000);
                    lock.wait();
                } catch (InterruptedException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            lock.notifyAll();
        }

    }

}
