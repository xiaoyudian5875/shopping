package com.hzit.shopping.controller;

import org.junit.jupiter.api.Test;

import java.util.HashMap;
import java.util.Map;

public class Text {

    @Test
    public void texe01() {
        String str = "qweqwreerrrrrtyyt";
        String s = Text.compressStr(str);
        System.out.println(s);

    }


    @Test
    public void test() {
        String str = "onefiveeightfoursixfive";
        String str2 = "fivesixeightfour";
        String s = Text.englishToNumber(str);
        System.out.println(s);
    }

    @Test
    public void test02() {
        Text.text02(100);
    }


    /**
     * 拼接字符串
     *
     * @param str
     * @return
     */
    public static String compressStr(String str) {
        StringBuilder sb = new StringBuilder();
        int sum = 1;//连续字符的个数
        char c1 = str.charAt(0);//取第一个字符
        for (int i = 1; i < str.length(); i++) {
            char c2 = str.charAt(i);//循环取字符
            if (c1 == c2) {//把前一个字符和当前字符比较
                sum++;     //相同的字符个数加1
                continue;
            }
            if (sum > 1) { //拼接字符
                sb.append(c1).append(sum);
            } else {
                sb.append(c1);
            }
            c1 = c2;//当前字符变为前一个字符
            sum = 1;  //个数归1
        }
        if (sum > 1) {    //加上最后一个字符及个数
            sb.append(c1).append(sum);
        } else {
            sb.append(c1);
        }
        return sb.toString();
    }

    /**
     * 英文转数字
     *
     * @param arr
     * @return
     */
    public static String englishToNumber(String arr) {
        Map<String, String> map = new HashMap<String, String>();
        map.put("zero", "0");
        map.put("one", "1");
        map.put("two", "2");
        map.put("three", "3");
        map.put("four", "4");
        map.put("five", "5");
        map.put("six", "6");
        map.put("seven", "7");
        map.put("eight", "8");
        map.put("nine", "9");
        String message = "";

        while (!"".equals(arr)) {
            if (arr.startsWith("on") || arr.startsWith("tw") || arr.startsWith("si")) {
                message += map.get(arr.substring(0, 3));
                arr = arr.substring(3, arr.length());
            }
            if (arr.startsWith("ze") || arr.startsWith("fo") || arr.startsWith("fi") || arr.startsWith("ni")) {
                message += map.get(arr.substring(0, 4));
                arr = arr.substring(4, arr.length());
            }
            if (arr.startsWith("th") || arr.startsWith("se") || arr.startsWith("ei")) {
                message += map.get(arr.substring(0, 5));
                arr = arr.substring(5, arr.length());
            }
        }
        return message;
    }

    /**
     * n个人围成一圈
     *
     * @param n
     */
    public static void text02(int n) {
        boolean[] arr = new boolean[n]; // 创建一个布尔型数组
        int contNum = 0; // 数数，计算数了多少个,数到3就退1个
        int index = 0; // 第几个位置，数到的位置
        int arrlength = arr.length; // 数字队列还有多少个
        // System.out.println(arr[arrlength-1]);
        for (int i = 0; i < arr.length; i++) {
            arr[i] = true; // 把数组的值得全部置为true
        }
        while (arrlength > 1) // 留下最后一个
        {
            if (arr[index] == true) {
                contNum++; // 从1开始数
                if (contNum == 3) // 从1开始的，数到3就是第三个数字了
                {
                    arr[index] = false; // 数到第三个数，把它的值变为false
                    arrlength--; // 数组长度减去1
                    contNum = 0; // 重新数数
                }
            }
            index++; // 每判断一个，加1
            if (index == arr.length) // 判断是否到了最后的数字，到了,重新从0开始
            {
                index = 0;
            }
        }
        // 打印数组中有true值的那个下标值，即最后那个是第几个
        for (int j = 0; j < arr.length; j++) {
            if (arr[j] == true) {
                System.out.println("最后留下来的是第" + String.valueOf(j + 1) + "个");
            }
        }
    }
}
