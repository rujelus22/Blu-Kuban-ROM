.class public final Lcom/google/android/youtube/core/model/Money;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final currency:Ljava/util/Currency;

.field private volatile hashCode:I

.field public final value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/model/Money;-><init>(ILjava/util/Currency;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/util/Currency;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/android/youtube/core/model/Money;->value:I

    .line 33
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Money;->currency:Ljava/util/Currency;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p1}, Lcom/google/android/youtube/core/model/Money;->parseValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/youtube/core/model/Money;-><init>(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Currency;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Lcom/google/android/youtube/core/model/Money;->parseValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/youtube/core/model/Money;-><init>(ILjava/util/Currency;)V

    .line 50
    return-void
.end method

.method private static parseValue(Ljava/lang/String;)I
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 91
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 92
    array-length v0, v3

    if-lez v0, :cond_4a

    aget-object v0, v3, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 93
    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x0

    .line 95
    :goto_1e
    array-length v4, v3

    if-le v4, v2, :cond_46

    aget-object v4, v3, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 96
    aget-object v4, v3, v2

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_47

    move v1, v2

    :goto_44
    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 99
    :cond_46
    return v0

    .line 97
    :cond_47
    const/16 v1, 0xa

    goto :goto_44

    :cond_4a
    move v0, v1

    goto :goto_1e
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p1, p0, :cond_5

    .line 69
    :cond_4
    :goto_4
    return v0

    .line 65
    :cond_5
    instance-of v2, p1, Lcom/google/android/youtube/core/model/Money;

    if-nez v2, :cond_b

    move v0, v1

    .line 66
    goto :goto_4

    .line 68
    :cond_b
    check-cast p1, Lcom/google/android/youtube/core/model/Money;

    .line 69
    iget v2, p0, Lcom/google/android/youtube/core/model/Money;->value:I

    iget v3, p1, Lcom/google/android/youtube/core/model/Money;->value:I

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Money;->currency:Ljava/util/Currency;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Money;->currency:Ljava/util/Currency;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1d
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/youtube/core/model/Money;->hashCode:I

    .line 75
    if-nez v0, :cond_13

    .line 76
    iget v0, p0, Lcom/google/android/youtube/core/model/Money;->value:I

    add-int/lit16 v0, v0, 0x20f

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Money;->currency:Ljava/util/Currency;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    iput v0, p0, Lcom/google/android/youtube/core/model/Money;->hashCode:I

    .line 81
    :cond_13
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Money;->value:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Money;->value:I

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "currency=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Money;->currency:Ljava/util/Currency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
