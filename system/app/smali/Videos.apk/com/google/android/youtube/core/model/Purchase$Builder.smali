.class public final Lcom/google/android/youtube/core/model/Purchase$Builder;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/ModelBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;"
    }
.end annotation


# instance fields
.field private expirationDate:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

.field private itemUri:Landroid/net/Uri;

.field private pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

.field private purchaseDate:Ljava/util/Date;

.field private purchasedVideo:Lcom/google/android/youtube/core/model/Video;

.field private status:Lcom/google/android/youtube/core/model/Purchase$Status;

.field private streamable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->OTHER:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 135
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$Status;->OTHER:Lcom/google/android/youtube/core/model/Purchase$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 217
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    .line 218
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    .line 219
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    .line 220
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/PricingStructure;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    .line 221
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 222
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    .line 223
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 224
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->build()Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 209
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 211
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/Purchase;
    .registers 11

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    iget-boolean v8, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    iget-object v9, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/model/Purchase;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase$ItemType;Landroid/net/Uri;Ljava/util/Date;Ljava/util/Date;Lcom/google/android/youtube/core/model/PricingStructure;Lcom/google/android/youtube/core/model/Purchase$Status;ZLcom/google/android/youtube/core/model/Video;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->build()Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v0

    return-object v0
.end method

.method public expirationDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .registers 2
    .parameter "value"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    .line 151
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .registers 2
    .parameter "value"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public itemType(Lcom/google/android/youtube/core/model/Purchase$ItemType;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .registers 2
    .parameter "value"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 156
    return-object p0
.end method

.method public itemUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .registers 2
    .parameter "value"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    .line 161
    return-object p0
.end method

.method public pricePaid(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .registers 2
    .parameter "value"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    .line 166
    return-object p0
.end method

.method public purchaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .registers 2
    .parameter "value"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    .line 146
    return-object p0
.end method

.method public purchasedVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .registers 2
    .parameter "video"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 181
    return-object p0
.end method

.method public status(Lcom/google/android/youtube/core/model/Purchase$Status;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .registers 2
    .parameter "status"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 171
    return-object p0
.end method

.method public streamable(Z)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .registers 2
    .parameter "streamable"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    .line 176
    return-object p0
.end method
