.class public Lcom/google/android/apps/plus/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static randGen:Ljava/util/Random;

.field private static sNumbersAndLetters:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/util/StringUtils;->randGen:Ljava/util/Random;

    .line 28
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/util/StringUtils;->sNumbersAndLetters:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static firstLetter(Ljava/lang/String;)C
    .registers 4
    .parameter "string"

    .prologue
    const/16 v1, 0x20

    .line 116
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 124
    :cond_a
    :goto_a
    return v1

    .line 120
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 121
    .local v0, firstLetter:C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 122
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    goto :goto_a
.end method

.method public static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "emailId"

    .prologue
    .line 133
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, parts:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    .line 135
    const/4 v1, 0x0

    .line 137
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x1

    aget-object v1, v0, v1

    goto :goto_b
.end method

.method public static randomString(I)Ljava/lang/String;
    .registers 6
    .parameter "length"

    .prologue
    .line 51
    const/4 v2, 0x1

    if-ge p0, v2, :cond_5

    .line 52
    const/4 v2, 0x0

    .line 61
    :goto_4
    return-object v2

    .line 56
    :cond_5
    new-array v1, p0, [C

    .line 57
    .local v1, randBuffer:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 58
    sget-object v2, Lcom/google/android/apps/plus/util/StringUtils;->sNumbersAndLetters:[C

    sget-object v3, Lcom/google/android/apps/plus/util/StringUtils;->randGen:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 61
    :cond_1c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_4
.end method

.method public static replaceHtmlEntities(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 72
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 77
    .end local p0
    :goto_9
    return-object p0

    .restart local p0
    :cond_a
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 88
    if-nez p0, :cond_3

    .line 91
    .end local p0
    :goto_2
    return-object p0

    .restart local p0
    :cond_3
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method
