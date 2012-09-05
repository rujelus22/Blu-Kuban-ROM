.class public final Lcom/google/android/youtube/core/model/PricingStructure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final duration:Lcom/google/android/youtube/core/model/Duration;

.field public final formats:Ljava/util/List;

.field private volatile hashCode:I

.field public final infoUri:Landroid/net/Uri;

.field public final price:Lcom/google/android/youtube/core/model/Money;

.field public final type:Lcom/google/android/youtube/core/model/PricingStructure$Type;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/model/PricingStructure$Type;Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    .line 50
    iput-object p2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    .line 51
    iput-object p3, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    .line 52
    iput-object p4, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    .line 53
    iput-object p5, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method public static createPurchase(Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const-string v0, "price may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "formats may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/google/android/youtube/core/model/PricingStructure;

    sget-object v1, Lcom/google/android/youtube/core/model/PricingStructure$Type;->PURCHASE:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/model/PricingStructure;-><init>(Lcom/google/android/youtube/core/model/PricingStructure$Type;Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static createRental(Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const-string v0, "duration may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "price may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "formats may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/google/android/youtube/core/model/PricingStructure;

    sget-object v1, Lcom/google/android/youtube/core/model/PricingStructure$Type;->RENT:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/model/PricingStructure;-><init>(Lcom/google/android/youtube/core/model/PricingStructure$Type;Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 142
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/PricingStructure;->buildUpon()Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .registers 3

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type(Lcom/google/android/youtube/core/model/PricingStructure$Type;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration(Lcom/google/android/youtube/core/model/Duration;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price(Lcom/google/android/youtube/core/model/Money;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats(Ljava/util/List;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    if-ne p1, p0, :cond_5

    .line 97
    :cond_4
    :goto_4
    return v0

    .line 93
    :cond_5
    instance-of v2, p1, Lcom/google/android/youtube/core/model/PricingStructure;

    if-nez v2, :cond_b

    move v0, v1

    .line 94
    goto :goto_4

    .line 96
    :cond_b
    check-cast p1, Lcom/google/android/youtube/core/model/PricingStructure;

    .line 97
    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/Money;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3b
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 106
    iget v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->hashCode:I

    .line 107
    if-nez v0, :cond_3f

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/PricingStructure$Type;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 110
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Duration;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    if-eqz v2, :cond_33

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_33
    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Money;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    iput v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->hashCode:I

    .line 116
    :cond_3f
    return v0

    :cond_40
    move v0, v1

    .line 110
    goto :goto_19

    :cond_42
    move v0, v1

    .line 111
    goto :goto_26
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    sget-object v2, Lcom/google/android/youtube/core/model/PricingStructure$Type;->RENT:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    if-ne v0, v2, :cond_77

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " duration=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "info=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "money=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "formats=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_77
    const-string v0, ""

    goto :goto_38
.end method
