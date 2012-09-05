.class public final Lcom/google/android/youtube/core/model/PricingStructure$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private duration:Lcom/google/android/youtube/core/model/Duration;

.field private formats:Ljava/util/List;

.field private infoUri:Landroid/net/Uri;

.field private price:Lcom/google/android/youtube/core/model/Money;

.field private type:Lcom/google/android/youtube/core/model/PricingStructure$Type;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/PricingStructure$Type;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    .line 202
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Duration;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Money;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    .line 206
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->build()Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 197
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/youtube/core/model/PricingStructure;
    .registers 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    .line 180
    :goto_6
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    sget-object v2, Lcom/google/android/youtube/core/model/PricingStructure$Type;->RENT:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    if-ne v1, v2, :cond_1c

    .line 181
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/youtube/core/model/PricingStructure;->createRental(Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    .line 183
    :goto_16
    return-object v0

    .line 179
    :cond_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_6

    .line 183
    :cond_1c
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/core/model/PricingStructure;->createPurchase(Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    goto :goto_16
.end method

.method public final duration(Lcom/google/android/youtube/core/model/Duration;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    .line 160
    return-object p0
.end method

.method public final formats(Ljava/util/List;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    .line 175
    return-object p0
.end method

.method public final infoUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    .line 165
    return-object p0
.end method

.method public final price(Lcom/google/android/youtube/core/model/Money;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    .line 170
    return-object p0
.end method

.method public final type(Lcom/google/android/youtube/core/model/PricingStructure$Type;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    .line 155
    return-object p0
.end method
