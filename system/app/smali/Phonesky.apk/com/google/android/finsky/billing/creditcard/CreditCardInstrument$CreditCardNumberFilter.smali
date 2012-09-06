.class public Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;
.super Ljava/lang/Object;
.source "CreditCardInstrument.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreditCardNumberFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumbers(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .parameter "cc"

    .prologue
    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 188
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, count:I
    :goto_c
    if-ge v2, v1, :cond_1e

    .line 189
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 190
    .local v0, c:C
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;->isNumber(C)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 191
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 194
    .end local v0           #c:C
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static isAllowed(CC)Z
    .registers 3
    .parameter "c"
    .parameter "lastChar"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;->isNumber(C)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;->isSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;->isNumber(C)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static isNumber(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 175
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isSeparator(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 179
    const/16 v0, 0x20

    if-eq p0, v0, :cond_8

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 16
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 146
    if-lez p5, :cond_19

    add-int/lit8 v7, p5, -0x1

    invoke-interface {p4, v7}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    .line 147
    .local v3, lastChar:C
    :goto_8
    sub-int v4, p3, p2

    .line 149
    .local v4, len:I
    const/4 v7, 0x1

    if-ne v4, v7, :cond_1e

    .line 150
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 151
    .local v0, c:C
    invoke-static {v0, v3}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;->isAllowed(CC)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v7, 0x0

    .line 171
    .end local v0           #c:C
    :goto_18
    return-object v7

    .line 146
    .end local v3           #lastChar:C
    .end local v4           #len:I
    :cond_19
    const/4 v3, 0x0

    goto :goto_8

    .line 151
    .restart local v0       #c:C
    .restart local v3       #lastChar:C
    .restart local v4       #len:I
    :cond_1b
    const-string v7, ""

    goto :goto_18

    .line 152
    .end local v0           #c:C
    :cond_1e
    if-nez v4, :cond_22

    .line 153
    const/4 v7, 0x0

    goto :goto_18

    .line 156
    :cond_22
    new-array v5, v4, [C

    .line 157
    .local v5, out:[C
    const/4 v6, 0x0

    .line 158
    .local v6, outidx:I
    const/4 v1, 0x0

    .line 159
    .local v1, filtered:Z
    move v2, p2

    .local v2, i:I
    :goto_27
    if-ge v2, p3, :cond_3b

    .line 160
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 161
    .restart local v0       #c:C
    invoke-static {v0, v3}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;->isAllowed(CC)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 162
    aput-char v0, v5, v6

    .line 163
    move v3, v0

    .line 159
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 165
    :cond_39
    const/4 v1, 0x1

    goto :goto_36

    .line 168
    .end local v0           #c:C
    :cond_3b
    if-eqz v1, :cond_44

    .line 169
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v6}, Ljava/lang/String;-><init>([CII)V

    goto :goto_18

    .line 171
    :cond_44
    const/4 v7, 0x0

    goto :goto_18
.end method
