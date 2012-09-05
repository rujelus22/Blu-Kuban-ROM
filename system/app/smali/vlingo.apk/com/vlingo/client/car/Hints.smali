.class public Lcom/vlingo/client/car/Hints;
.super Ljava/lang/Object;
.source "Hints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/Hints$1;,
        Lcom/vlingo/client/car/Hints$PromptExample;
    }
.end annotation


# static fields
.field public static final INDEX_DIAL:I = 0x1

.field public static final INDEX_NAV:I = 0x2

.field public static final INDEX_SMS:I = 0x0

.field public static final INDEX_SR:I = 0x3

.field private static final hints:[[Ljava/lang/String;

.field private static final promptExamples:[[Ljava/lang/String;

.field private static final res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    .line 31
    new-array v0, v8, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    sput-object v0, Lcom/vlingo/client/car/Hints;->hints:[[Ljava/lang/String;

    .line 60
    new-array v0, v8, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/vlingo/client/car/Hints;->res:Landroid/content/res/Resources;

    const v3, 0x7f0900c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    sput-object v0, Lcom/vlingo/client/car/Hints;->promptExamples:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method

.method public static getRandomHint()Ljava/lang/String;
    .registers 5

    .prologue
    .line 97
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 98
    .local v2, r:Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget-object v4, Lcom/vlingo/client/car/Hints;->hints:[[Ljava/lang/String;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 99
    .local v1, index:I
    sget-object v3, Lcom/vlingo/client/car/Hints;->hints:[[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 100
    .local v0, collection:[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    array-length v4, v0

    rem-int/2addr v3, v4

    aget-object v3, v0, v3

    return-object v3
.end method

.method public static getRandomHintForType(I)Ljava/lang/String;
    .registers 5
    .parameter "type"

    .prologue
    .line 104
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 105
    .local v1, r:Ljava/util/Random;
    sget-object v2, Lcom/vlingo/client/car/Hints;->hints:[[Ljava/lang/String;

    aget-object v0, v2, p0

    .line 106
    .local v0, collection:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    array-length v3, v0

    rem-int/2addr v2, v3

    aget-object v2, v0, v2

    return-object v2
.end method

.method public static getRandomPromptExamples()[Lcom/vlingo/client/car/Hints$PromptExample;
    .registers 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 110
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 113
    new-array v2, v10, [Lcom/vlingo/client/car/Hints$PromptExample;

    .line 115
    .local v2, exs:[Lcom/vlingo/client/car/Hints$PromptExample;
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 116
    .local v4, r:Ljava/util/Random;
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sget-object v8, Lcom/vlingo/client/car/Hints;->promptExamples:[[Ljava/lang/String;

    array-length v8, v8

    rem-int v6, v7, v8

    .line 118
    .local v6, typeIndex:I
    sget-object v7, Lcom/vlingo/client/car/Hints;->promptExamples:[[Ljava/lang/String;

    aget-object v0, v7, v6

    .line 119
    .local v0, collection:[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    array-length v8, v0

    rem-int v1, v7, v8

    .line 120
    .local v1, exIndex:I
    aget-object v7, v0, v1

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 121
    .local v3, html:Landroid/text/Spanned;
    const/4 v5, 0x0

    .line 122
    .local v5, res:I
    if-ne v6, v9, :cond_66

    .line 123
    const v5, 0x7f02004d

    .line 130
    :cond_36
    :goto_36
    const/4 v7, 0x0

    new-instance v8, Lcom/vlingo/client/car/Hints$PromptExample;

    invoke-direct {v8, v3, v5, v12}, Lcom/vlingo/client/car/Hints$PromptExample;-><init>(Ljava/lang/CharSequence;ILcom/vlingo/client/car/Hints$1;)V

    aput-object v8, v2, v7

    .line 132
    add-int/lit8 v6, v6, 0x1

    sget-object v7, Lcom/vlingo/client/car/Hints;->promptExamples:[[Ljava/lang/String;

    array-length v7, v7

    rem-int/2addr v6, v7

    .line 133
    sget-object v7, Lcom/vlingo/client/car/Hints;->promptExamples:[[Ljava/lang/String;

    aget-object v0, v7, v6

    .line 134
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    array-length v8, v0

    rem-int v1, v7, v8

    .line 135
    aget-object v7, v0, v1

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 136
    if-ne v6, v9, :cond_78

    .line 137
    const v5, 0x7f02004d

    .line 144
    :cond_5e
    :goto_5e
    new-instance v7, Lcom/vlingo/client/car/Hints$PromptExample;

    invoke-direct {v7, v3, v5, v12}, Lcom/vlingo/client/car/Hints$PromptExample;-><init>(Ljava/lang/CharSequence;ILcom/vlingo/client/car/Hints$1;)V

    aput-object v7, v2, v9

    .line 145
    return-object v2

    .line 124
    :cond_66
    if-ne v6, v10, :cond_6c

    .line 125
    const v5, 0x7f02004e

    goto :goto_36

    .line 126
    :cond_6c
    if-nez v6, :cond_72

    .line 127
    const v5, 0x7f02004f

    goto :goto_36

    .line 128
    :cond_72
    if-ne v6, v11, :cond_36

    .line 129
    const v5, 0x7f020050

    goto :goto_36

    .line 138
    :cond_78
    if-ne v6, v10, :cond_7e

    .line 139
    const v5, 0x7f02004e

    goto :goto_5e

    .line 140
    :cond_7e
    if-nez v6, :cond_84

    .line 141
    const v5, 0x7f02004f

    goto :goto_5e

    .line 142
    :cond_84
    if-ne v6, v11, :cond_5e

    .line 143
    const v5, 0x7f020050

    goto :goto_5e
.end method
