## =====================================

## 4章練習問題

## =====================================

## (1)解答

標本平均 <- numeric(length = 5000)

for (i in 1:5000) {

    ## N(50,10^2) からn=20の標本を抽出
    標本 <- rnorm(n = 20, mean = 50, sd = 10)

    ## 標本平均を計算する
    標本平均[i] <- mean(標本)    
    
}

## 経験的な標本分布と理論的な標本分布を重ねて表示させる
hist(標本平均, freq = FALSE)
curve(dnorm(x, mean = 50, sd = sqrt(100 / 20)), add = TRUE)

## (2)解答
curve(dnorm(x, sd = sqrt(1 / 25)), 10, -10)
curve(dnorm(x, sd = sqrt(1 / 16)), 10, -10)
curve(dnorm(x, sd = sqrt(1 / 9)), 10, -10)
curve(dnorm(x, sd = sqrt(1 / 4)), 10, -10)
curve(dnorm(x, sd = sqrt(1 / 1)), 10, -10)
