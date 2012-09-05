.class public final enum Lcom/google/android/finsky/billing/creditcard/CreditCardType;
.super Ljava/lang/Enum;
.source "CreditCardType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/creditcard/CreditCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field public static final enum AMEX:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field public static final enum DISCOVER:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field public static final enum MC:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field public static final enum VISA:Lcom/google/android/finsky/billing/creditcard/CreditCardType;


# instance fields
.field public final cvcLength:I

.field public final numberLengths:[I

.field public final numberPrefixRanges:[Ljava/lang/String;

.field public final protobufType:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const-string v1, "DISCOVER"

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x10

    aput v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "6011"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "650"

    aput-object v8, v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;-><init>(Ljava/lang/String;II[II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->DISCOVER:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    .line 19
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const-string v1, "AMEX"

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xf

    aput v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "34"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "37"

    aput-object v8, v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;-><init>(Ljava/lang/String;II[II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->AMEX:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    .line 20
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const-string v1, "MC"

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_90

    const/4 v5, 0x3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "51-55"

    aput-object v8, v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;-><init>(Ljava/lang/String;II[II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->MC:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    .line 21
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const-string v1, "VISA"

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_98

    const/4 v5, 0x3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "4"

    aput-object v8, v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;-><init>(Ljava/lang/String;II[II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->VISA:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->DISCOVER:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->AMEX:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->MC:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->VISA:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->$VALUES:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-void

    .line 20
    :array_90
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 21
    :array_98
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II[II[Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter "protobufType"
    .parameter "ccLength"
    .parameter "cvcLength"
    .parameter "prefixRanges"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->protobufType:I

    .line 60
    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->numberLengths:[I

    .line 61
    iput p5, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->cvcLength:I

    .line 62
    iput-object p6, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->numberPrefixRanges:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static getMaxCvcLength()I
    .registers 6

    .prologue
    .line 163
    const/high16 v4, -0x8000

    .line 164
    .local v4, max:I
    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->values()[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_15

    aget-object v1, v0, v2

    .line 165
    .local v1, ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    iget v5, v1, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->cvcLength:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 167
    .end local v1           #ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    :cond_15
    return v4
.end method

.method public static getMaxNumberLength()I
    .registers 10

    .prologue
    .line 149
    const/high16 v9, -0x8000

    .line 150
    .local v9, max:I
    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->values()[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_9
    if-ge v4, v5, :cond_21

    aget-object v2, v0, v4

    .line 151
    .local v2, ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    iget-object v8, v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->numberLengths:[I

    .line 152
    .local v8, lengths:[I
    move-object v1, v8

    .local v1, arr$:[I
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_12
    if-ge v3, v6, :cond_1d

    aget v7, v1, v3

    .line 153
    .local v7, length:I
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 150
    .end local v7           #length:I
    :cond_1d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_9

    .line 156
    .end local v1           #arr$:[I
    .end local v2           #ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .end local v6           #len$:I
    .end local v8           #lengths:[I
    :cond_21
    return v9
.end method

.method public static getTypeForNumber(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .registers 6
    .parameter "number"

    .prologue
    .line 32
    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->values()[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 33
    .local v1, ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->isValidNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 37
    .end local v1           #ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    :goto_10
    return-object v1

    .line 32
    .restart local v1       #ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 37
    .end local v1           #ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static getTypeForPrefix(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .registers 6
    .parameter "prefix"

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->values()[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 45
    .local v1, ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->isValidPrefix(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 49
    .end local v1           #ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    :goto_10
    return-object v1

    .line 44
    .restart local v1       #ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 49
    .end local v1           #ccDef:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .registers 2
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->$VALUES:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/creditcard/CreditCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-object v0
.end method


# virtual methods
.method protected hasValidChecksum(Ljava/lang/String;)Z
    .registers 11
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, chk:I
    const/4 v3, 0x0

    .line 121
    .local v3, timesTwo:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_f
    if-ltz v2, :cond_30

    .line 122
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, digit:I
    mul-int v5, v3, v1

    add-int/2addr v1, v5

    .line 124
    int-to-double v5, v1

    div-int/lit8 v7, v1, 0xa

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v1, v5

    .line 125
    add-int/2addr v0, v1

    .line 126
    rsub-int/lit8 v3, v3, 0x1

    .line 121
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 128
    .end local v1           #digit:I
    :cond_30
    rem-int/lit8 v5, v0, 0xa

    if-nez v5, :cond_35

    const/4 v4, 0x1

    .line 130
    .end local v0           #chk:I
    .end local v2           #i:I
    .end local v3           #timesTwo:I
    :cond_35
    return v4
.end method

.method public hasValidLength(Ljava/lang/String;)Z
    .registers 5
    .parameter "number"

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->numberLengths:[I

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->numberLengths:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_12

    .line 139
    const/4 v1, 0x1

    .line 142
    :goto_11
    return v1

    .line 137
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isValidNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->hasValidLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->hasValidChecksum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->isValidPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isValidPrefix(Ljava/lang/String;)Z
    .registers 14
    .parameter "prefix"

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8c

    .line 75
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    iget-object v8, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->numberPrefixRanges:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_8c

    .line 76
    iget-object v8, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->numberPrefixRanges:[Ljava/lang/String;

    aget-object v8, v8, v2

    const-string v9, "-"

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, parts:[Ljava/lang/String;
    aget-object v0, v4, v7

    .line 80
    .local v0, commonPrefix:Ljava/lang/String;
    array-length v8, v4

    if-ne v8, v11, :cond_31

    .line 81
    aget-object v8, v4, v7

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3e

    .line 75
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 88
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 93
    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 94
    .local v5, start:I
    move v1, v5

    .line 95
    .local v1, end:I
    array-length v8, v4

    if-ne v8, v11, :cond_6d

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    :cond_6d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v8, v9, :cond_3b

    .line 102
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 103
    .local v3, numberPrefix:I
    if-lt v3, v5, :cond_3b

    if-gt v3, v1, :cond_3b

    .line 108
    .end local v0           #commonPrefix:Ljava/lang/String;
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #numberPrefix:I
    .end local v4           #parts:[Ljava/lang/String;
    .end local v5           #start:I
    :goto_8b
    return v6

    :cond_8c
    move v6, v7

    goto :goto_8b
.end method
