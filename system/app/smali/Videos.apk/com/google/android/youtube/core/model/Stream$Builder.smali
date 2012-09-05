.class public final Lcom/google/android/youtube/core/model/Stream$Builder;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private gdataFormat:I

.field private mimeType:Ljava/lang/String;

.field private quality:Lcom/google/android/youtube/core/model/Stream$Quality;

.field private sizeInBytes:J

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    .line 291
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 292
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat:I

    .line 294
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    .line 295
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 284
    iget v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 285
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 286
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/Stream;
    .registers 8

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 270
    new-instance v0, Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat:I

    iget-wide v5, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;IJ)V

    .line 272
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;I)V

    goto :goto_17
.end method

.method public gdataFormat(I)Lcom/google/android/youtube/core/model/Stream$Builder;
    .registers 2
    .parameter "gdataFormat"

    .prologue
    .line 264
    iput p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat:I

    .line 265
    return-object p0
.end method

.method public mimeType(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Stream$Builder;
    .registers 2
    .parameter "mimeType"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public quality(Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Builder;
    .registers 2
    .parameter "quality"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 250
    return-object p0
.end method

.method public sizeInBytes(J)Lcom/google/android/youtube/core/model/Stream$Builder;
    .registers 3
    .parameter "sizeInBytes"

    .prologue
    .line 254
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    .line 255
    return-object p0
.end method

.method public uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    .line 245
    return-object p0
.end method
