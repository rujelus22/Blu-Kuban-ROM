.class public Lcom/vlingo/client/car/PromptContent;
.super Ljava/lang/Object;
.source "PromptContent.java"


# instance fields
.field public ex1:Ljava/lang/CharSequence;

.field public ex2:Ljava/lang/CharSequence;

.field public ex3:Ljava/lang/CharSequence;

.field public exIcon1:I

.field public exIcon2:I

.field public exIcon3:I

.field public hotTip:Ljava/lang/CharSequence;

.field public icon:I

.field public subheading:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/car/PromptContent;->icon:I

    .line 30
    return-void
.end method

.method public static getDialPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;
    .registers 3
    .parameter "res"

    .prologue
    .line 33
    new-instance v0, Lcom/vlingo/client/car/PromptContent;

    invoke-direct {v0}, Lcom/vlingo/client/car/PromptContent;-><init>()V

    .line 34
    .local v0, c:Lcom/vlingo/client/car/PromptContent;
    const v1, 0x7f0900e7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    .line 35
    const v1, 0x7f0900e8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    .line 36
    const v1, 0x7f0900e9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    .line 37
    const v1, 0x7f02011f

    iput v1, v0, Lcom/vlingo/client/car/PromptContent;->icon:I

    .line 38
    const v1, 0x7f090331

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->subheading:Ljava/lang/CharSequence;

    .line 39
    return-object v0
.end method

.method public static getGenericPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;
    .registers 3
    .parameter "res"

    .prologue
    .line 73
    new-instance v0, Lcom/vlingo/client/car/PromptContent;

    invoke-direct {v0}, Lcom/vlingo/client/car/PromptContent;-><init>()V

    .line 74
    .local v0, c:Lcom/vlingo/client/car/PromptContent;
    invoke-static {p0, v0}, Lcom/vlingo/client/car/PromptContent;->getRandHintSetFromSetOne(Landroid/content/res/Resources;Lcom/vlingo/client/car/PromptContent;)V

    .line 75
    invoke-static {p0, v0}, Lcom/vlingo/client/car/PromptContent;->getRandHintSetFromSetTwo(Landroid/content/res/Resources;Lcom/vlingo/client/car/PromptContent;)V

    .line 76
    invoke-static {p0, v0}, Lcom/vlingo/client/car/PromptContent;->getRandHintSetFromSetThree(Landroid/content/res/Resources;Lcom/vlingo/client/car/PromptContent;)V

    .line 77
    iget-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    .line 78
    iget-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    .line 79
    iget-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    .line 80
    return-object v0
.end method

.method public static getMemoPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;
    .registers 3
    .parameter "res"

    .prologue
    .line 62
    new-instance v0, Lcom/vlingo/client/car/PromptContent;

    invoke-direct {v0}, Lcom/vlingo/client/car/PromptContent;-><init>()V

    .line 63
    .local v0, c:Lcom/vlingo/client/car/PromptContent;
    const v1, 0x7f090332

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->hotTip:Ljava/lang/CharSequence;

    .line 64
    const v1, 0x7f0900f7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    .line 67
    const v1, 0x7f02012f

    iput v1, v0, Lcom/vlingo/client/car/PromptContent;->icon:I

    .line 68
    const v1, 0x7f090333

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->subheading:Ljava/lang/CharSequence;

    .line 69
    return-object v0
.end method

.method public static getNavPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;
    .registers 3
    .parameter "res"

    .prologue
    .line 52
    new-instance v0, Lcom/vlingo/client/car/PromptContent;

    invoke-direct {v0}, Lcom/vlingo/client/car/PromptContent;-><init>()V

    .line 53
    .local v0, c:Lcom/vlingo/client/car/PromptContent;
    const v1, 0x7f0900f9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    .line 54
    const v1, 0x7f0900fa

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    .line 55
    const v1, 0x7f0900fb

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    .line 56
    const v1, 0x7f02013a

    iput v1, v0, Lcom/vlingo/client/car/PromptContent;->icon:I

    .line 57
    const v1, 0x7f090334

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->subheading:Ljava/lang/CharSequence;

    .line 58
    return-object v0
.end method

.method private static getRandHintSetFromSetOne(Landroid/content/res/Resources;Lcom/vlingo/client/car/PromptContent;)V
    .registers 6
    .parameter "res"
    .parameter "c"

    .prologue
    const v3, 0x7f02011f

    .line 84
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 85
    .local v1, r:Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v0, v2, 0x3

    .line 86
    .local v0, index:I
    if-nez v0, :cond_1f

    .line 87
    const v2, 0x7f0900ea

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    .line 88
    iput v3, p1, Lcom/vlingo/client/car/PromptContent;->exIcon1:I

    .line 90
    :cond_1f
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    .line 91
    const v2, 0x7f0900eb

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    .line 92
    iput v3, p1, Lcom/vlingo/client/car/PromptContent;->exIcon1:I

    .line 94
    :cond_2d
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3b

    .line 95
    const v2, 0x7f0900ec

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    .line 96
    iput v3, p1, Lcom/vlingo/client/car/PromptContent;->exIcon1:I

    .line 98
    :cond_3b
    return-void
.end method

.method private static getRandHintSetFromSetThree(Landroid/content/res/Resources;Lcom/vlingo/client/car/PromptContent;)V
    .registers 7
    .parameter "res"
    .parameter "c"

    .prologue
    const v4, 0x7f02012f

    .line 127
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 129
    .local v2, r:Ljava/util/Random;
    const/4 v1, 0x5

    .line 131
    .local v1, numHints:I
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isGaudiPhone()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isEpic2Phone()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 133
    :cond_15
    const/4 v1, 0x3

    .line 136
    :cond_16
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int v0, v3, v1

    .line 137
    .local v0, index:I
    if-nez v0, :cond_30

    .line 138
    const v3, 0x7f0900f2

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    .line 139
    const v3, 0x7f020136

    iput v3, p1, Lcom/vlingo/client/car/PromptContent;->exIcon3:I

    .line 141
    :cond_30
    const/4 v3, 0x1

    if-ne v0, v3, :cond_41

    .line 142
    const v3, 0x7f0900f3

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    .line 143
    const v3, 0x7f02013e

    iput v3, p1, Lcom/vlingo/client/car/PromptContent;->exIcon3:I

    .line 145
    :cond_41
    const/4 v3, 0x2

    if-ne v0, v3, :cond_52

    .line 146
    const v3, 0x7f0900f4

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    .line 147
    const v3, 0x7f020122

    iput v3, p1, Lcom/vlingo/client/car/PromptContent;->exIcon3:I

    .line 149
    :cond_52
    const/4 v3, 0x3

    if-ne v0, v3, :cond_60

    .line 150
    const v3, 0x7f0900f5

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    .line 151
    iput v4, p1, Lcom/vlingo/client/car/PromptContent;->exIcon3:I

    .line 153
    :cond_60
    const/4 v3, 0x4

    if-ne v0, v3, :cond_6e

    .line 154
    const v3, 0x7f0900f6

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    .line 155
    iput v4, p1, Lcom/vlingo/client/car/PromptContent;->exIcon3:I

    .line 157
    :cond_6e
    return-void
.end method

.method private static getRandHintSetFromSetTwo(Landroid/content/res/Resources;Lcom/vlingo/client/car/PromptContent;)V
    .registers 9
    .parameter "res"
    .parameter "c"

    .prologue
    const v6, 0x7f020133

    const/4 v3, 0x2

    const v5, 0x7f02013a

    .line 101
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 102
    .local v2, r:Ljava/util/Random;
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_64

    const/4 v1, 0x5

    .line 103
    .local v1, numHints:I
    :goto_15
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int v0, v4, v1

    .line 104
    .local v0, index:I
    if-nez v0, :cond_2c

    .line 105
    const v4, 0x7f0900ed

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    .line 106
    iput v6, p1, Lcom/vlingo/client/car/PromptContent;->exIcon2:I

    .line 108
    :cond_2c
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3a

    .line 109
    const v4, 0x7f0900ee

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    .line 110
    iput v6, p1, Lcom/vlingo/client/car/PromptContent;->exIcon2:I

    .line 112
    :cond_3a
    if-ne v0, v3, :cond_47

    .line 113
    const v3, 0x7f0900ef

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    .line 114
    iput v5, p1, Lcom/vlingo/client/car/PromptContent;->exIcon2:I

    .line 116
    :cond_47
    const/4 v3, 0x3

    if-ne v0, v3, :cond_55

    .line 117
    const v3, 0x7f0900f0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    .line 118
    iput v5, p1, Lcom/vlingo/client/car/PromptContent;->exIcon2:I

    .line 120
    :cond_55
    const/4 v3, 0x4

    if-ne v0, v3, :cond_63

    .line 121
    const v3, 0x7f0900f1

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    .line 122
    iput v5, p1, Lcom/vlingo/client/car/PromptContent;->exIcon2:I

    .line 124
    :cond_63
    return-void

    .end local v0           #index:I
    .end local v1           #numHints:I
    :cond_64
    move v1, v3

    .line 102
    goto :goto_15
.end method

.method public static getTextPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;
    .registers 3
    .parameter "res"

    .prologue
    .line 43
    new-instance v0, Lcom/vlingo/client/car/PromptContent;

    invoke-direct {v0}, Lcom/vlingo/client/car/PromptContent;-><init>()V

    .line 44
    .local v0, c:Lcom/vlingo/client/car/PromptContent;
    const v1, 0x7f0900fc

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    .line 45
    const v1, 0x7f0900fd

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    .line 46
    const v1, 0x7f020133

    iput v1, v0, Lcom/vlingo/client/car/PromptContent;->icon:I

    .line 47
    const v1, 0x7f090335

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/car/PromptContent;->subheading:Ljava/lang/CharSequence;

    .line 48
    return-object v0
.end method
