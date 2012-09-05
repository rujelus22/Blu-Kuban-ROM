.class public Lcom/samsung/swift/util/MarketSpecificModifier;
.super Ljava/lang/Object;
.source "MarketSpecificModifier.java"


# static fields
.field public static CHINESE:I

.field private static instance:Lcom/samsung/swift/util/MarketSpecificModifier;


# instance fields
.field model:I

.field private regexPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput v0, Lcom/samsung/swift/util/MarketSpecificModifier;->CHINESE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/swift/util/MarketSpecificModifier;->model:I

    .line 16
    invoke-static {}, Lcom/samsung/swift/Swift;->getSaleCode()Ljava/lang/String;

    move-result-object v2

    .line 17
    .local v2, m:Ljava/lang/String;
    if-nez v2, :cond_d

    .line 34
    :cond_c
    :goto_c
    return-void

    .line 20
    :cond_d
    const-string v4, "chinese_sale_codes"

    invoke-static {v4}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 24
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, lm:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    array-length v4, v1

    if-ge v0, v4, :cond_c

    .line 27
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 29
    const-string v4, "Wi-Fi"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/swift/util/MarketSpecificModifier;->regexPattern:Ljava/util/regex/Pattern;

    .line 30
    sget v4, Lcom/samsung/swift/util/MarketSpecificModifier;->CHINESE:I

    iput v4, p0, Lcom/samsung/swift/util/MarketSpecificModifier;->model:I

    goto :goto_c

    .line 25
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public static getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/swift/util/MarketSpecificModifier;->instance:Lcom/samsung/swift/util/MarketSpecificModifier;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/samsung/swift/util/MarketSpecificModifier;

    invoke-direct {v0}, Lcom/samsung/swift/util/MarketSpecificModifier;-><init>()V

    sput-object v0, Lcom/samsung/swift/util/MarketSpecificModifier;->instance:Lcom/samsung/swift/util/MarketSpecificModifier;

    .line 43
    :cond_b
    sget-object v0, Lcom/samsung/swift/util/MarketSpecificModifier;->instance:Lcom/samsung/swift/util/MarketSpecificModifier;

    return-object v0
.end method


# virtual methods
.method public modifyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"

    .prologue
    .line 48
    if-eqz p1, :cond_14

    .line 50
    iget v0, p0, Lcom/samsung/swift/util/MarketSpecificModifier;->model:I

    sget v1, Lcom/samsung/swift/util/MarketSpecificModifier;->CHINESE:I

    if-ne v0, v1, :cond_14

    .line 52
    iget-object v0, p0, Lcom/samsung/swift/util/MarketSpecificModifier;->regexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "WLAN"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    :cond_14
    return-object p1
.end method
