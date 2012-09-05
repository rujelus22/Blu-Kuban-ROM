.class Lcom/sec/android/app/calculator/Cmyfunc;
.super Ljava/lang/Object;
.source "Logic.java"


# static fields
.field private static mOrigin:Ljava/lang/String;

.field static final mStrTokens:[Ljava/lang/String;

.field private static mTrans:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "("

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ")"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "abs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "^"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tan"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ln"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u221a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "log"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u00d7"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u00f7"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2212"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mStrTokens:[Ljava/lang/String;

    .line 160
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mTrans:Ljava/lang/String;

    .line 174
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearmOrigin()V
    .registers 1

    .prologue
    .line 185
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mOrigin:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public static getmOrigin()Ljava/lang/String;
    .registers 1

    .prologue
    .line 177
    sget-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public static getmTrans()Ljava/lang/String;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Lcom/sec/android/app/calculator/Cmyfunc;->mTrans:Ljava/lang/String;

    return-object v0
.end method

.method static isChar(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 130
    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_e

    const/16 v0, 0x65

    if-eq p0, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static isCharSet(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p0}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p0}, Lcom/sec/android/app/calculator/Cmyfunc;->isSpace(C)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p0}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_30

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_30

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_30

    const/16 v0, 0x45

    if-eq p0, v0, :cond_30

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_30

    const/16 v0, 0xa

    if-eq p0, v0, :cond_30

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method static isDigit(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 138
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x65

    if-eq p0, v0, :cond_18

    const/16 v0, 0x3c0

    if-eq p0, v0, :cond_18

    const/16 v0, 0x45

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static isOnlyDigit(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 143
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static isOpByTwo(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 116
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_20

    const/16 v0, 0xd7

    if-eq p0, v0, :cond_20

    const/16 v0, 0xf7

    if-eq p0, v0, :cond_20

    const/16 v0, 0x5e

    if-eq p0, v0, :cond_20

    const/16 v0, 0x25

    if-eq p0, v0, :cond_20

    const/16 v0, 0xad

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2212

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static isOprator(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 112
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2212

    if-eq p0, v0, :cond_14

    const/16 v0, 0xd7

    if-eq p0, v0, :cond_14

    const/16 v0, 0xf7

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static isSpace(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 126
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static isToken(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 84
    sparse-switch p0, :sswitch_data_8

    .line 108
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 104
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 84
    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x21 -> :sswitch_5
        0x25 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2b -> :sswitch_5
        0x2d -> :sswitch_5
        0x5e -> :sswitch_5
        0x61 -> :sswitch_5
        0x63 -> :sswitch_5
        0x67 -> :sswitch_5
        0x6c -> :sswitch_5
        0x73 -> :sswitch_5
        0x74 -> :sswitch_5
        0xad -> :sswitch_5
        0xd7 -> :sswitch_5
        0xf7 -> :sswitch_5
        0x2212 -> :sswitch_5
        0x221a -> :sswitch_5
    .end sparse-switch
.end method

.method public static setmOrigin(Ljava/lang/String;)V
    .registers 1
    .parameter "mOrigin"

    .prologue
    .line 181
    sput-object p0, Lcom/sec/android/app/calculator/Cmyfunc;->mOrigin:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public static setmTrans(Ljava/lang/String;)V
    .registers 1
    .parameter "mTrans"

    .prologue
    .line 167
    sput-object p0, Lcom/sec/android/app/calculator/Cmyfunc;->mTrans:Ljava/lang/String;

    .line 168
    return-void
.end method

.method static whereLastToken(Ljava/lang/String;Z)I
    .registers 6
    .parameter "strExp"
    .parameter "bContainToken"

    .prologue
    .line 67
    const/4 v1, -0x1

    .line 70
    .local v1, nFind:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v3, Lcom/sec/android/app/calculator/Cmyfunc;->mStrTokens:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_26

    .line 71
    sget-object v3, Lcom/sec/android/app/calculator/Cmyfunc;->mStrTokens:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 72
    .local v2, nTmp:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    .line 73
    const/4 v3, 0x1

    if-ne p1, v3, :cond_20

    .line 74
    sget-object v3, Lcom/sec/android/app/calculator/Cmyfunc;->mStrTokens:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    .line 75
    :cond_20
    if-ge v1, v2, :cond_23

    .line 76
    move v1, v2

    .line 70
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    .end local v2           #nTmp:I
    :cond_26
    return v1
.end method
