.class public Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/media/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;",
        ">;"
    }
.end annotation


# instance fields
.field public final dateTaken:J

.field public final description:Ljava/lang/String;

.field public final imageUri:Landroid/net/Uri;

.field public final latitude:D

.field public final longitude:D

.field public final orientation:I

.field public final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;JIDDLjava/lang/String;)V
    .registers 11
    .parameter "imageUri"
    .parameter "description"
    .parameter "dateTaken"
    .parameter "orientation"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "path"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->imageUri:Landroid/net/Uri;

    .line 46
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->description:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->dateTaken:J

    .line 48
    iput p5, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->orientation:I

    .line 49
    iput-wide p6, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->latitude:D

    .line 50
    iput-wide p8, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->longitude:D

    .line 51
    iput-object p10, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->path:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;)I
    .registers 7
    .parameter "another"

    .prologue
    const/4 v0, 0x1

    .line 56
    if-nez p1, :cond_4

    .line 66
    :cond_3
    :goto_3
    return v0

    .line 60
    :cond_4
    iget-wide v1, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->dateTaken:J

    iget-wide v3, p1, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->dateTaken:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    .line 63
    iget-wide v0, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->dateTaken:J

    iget-wide v2, p1, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->dateTaken:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 64
    const/4 v0, 0x0

    goto :goto_3

    .line 66
    :cond_16
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->compareTo(Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Image [imageUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dateTaken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->dateTaken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
