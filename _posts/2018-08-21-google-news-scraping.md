---
layout: post
title: Scraping Google News with 'rvest'
date: '2018-08-21'
author: Allan Quadros
tags:
- rvest
- web scraping
- GoogleNews
categories: R
---

## Scraping Google News with `rvest` (2020's update)

Updated on 2026-08-25.
This is an enhanced and substantially different version of the original article published in R-Bloggers in 2018.

---

This is an example of how to scrape Google News website with the `rvest` package. 

First off, you should take a look at the Google News website [HERE](https://news.google.com/){:target="_blank"}, which I reproduce below:

<!-- ![](/post/web-scrap/![](/web-scrap/2018-08-21-google_news_scraping_files/google_news_screenshot.png)2018-08-21-google_news_scraping_files/google_news_screenshot.png) -->

![]({{ site.baseurl }}/assets/img/posts/2018-08-21-google-news-scraping/img/screenshot1.png){: width="100%"}

You may notice, on the right side of the page, that we are using Google Chrome **dev-tools**. This is necessary in order to identify the *html nodes* we need. You can access this tool by hitting the **F12** key. The html nodes are passed as arguments to the `rvest` functions.

Basically, the idea is to extract the communication vehicle (vehicle), the time elapsed since the news was published (time), and the main headline (headline).

The code and comments are presented below: 


{% highlight r %}
# loading the packages:
library(dplyr) # for pipes and the data_frame function
library(rvest) # webscraping
library(stringr) # to deal with strings and to clean up our data
{% endhighlight %}



{% highlight r %}
# extracting the whole website
google <- read_html("https://news.google.com/")
{% endhighlight %}


As we can see, the Google News website is divided in rectangular chunks of headlines and other info. Therefore, our strategy is to first scrape the whole chunks, and then, for each chunk scrape the information of interest: vehicle, time, and headlines.

We start scraping the whole chunks of articles. By using the "inspect" tool of our browser, we can see that the _"article"_ \HTML node is the one that identifies each chunk.

![]({{ site.baseurl }}/assets/img/posts/2018-08-21-google-news-scraping/img/screenshot2.png){: width="100%"}



{% highlight r %}
# extracting the headlines
# and using stringr for cleaning
article_all <- google %>% html_nodes("article")

article_all
{% endhighlight %}



{% highlight text %}
## {xml_nodeset (0)}
{% endhighlight %}

Having the whole chunks, now we can separately scrape the information of interest:


{% highlight r %}
times <- article_all %>%
  html_node("time") %>%
  html_text()

vehicles <- article_all %>%
  html_nodes("a.wEwyrc.AVN2gc.uQIVzc.Sksgp") %>%
  html_text()

headlines <- article_all %>%
  html_nodes("a.DY5T1d") %>%
  html_text()
{% endhighlight %}

Let's take a look at these vectors:


{% highlight r %}
# take a look at the first ten
headlines[1:10]
{% endhighlight %}



{% highlight text %}
##  [1] NA NA NA NA NA NA NA NA NA NA
{% endhighlight %}



{% highlight r %}
vehicles[1:10]
{% endhighlight %}



{% highlight text %}
##  [1] NA NA NA NA NA NA NA NA NA NA
{% endhighlight %}



{% highlight r %}
times[1:10]
{% endhighlight %}



{% highlight text %}
##  [1] NA NA NA NA NA NA NA NA NA NA
{% endhighlight %}


It seems all good!

Then, we can proceed to generate our final `tibble`:


{% highlight r %}
tb_news <- tibble(headlines, vehicles, times)

tb_news
{% endhighlight %}



{% highlight text %}
## # A tibble: 0 × 3
## # ℹ 3 variables: headlines <chr>, vehicles <chr>, times <chr>
{% endhighlight %}

That's all!
