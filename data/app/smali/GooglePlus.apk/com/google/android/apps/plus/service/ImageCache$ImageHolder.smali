.class Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageHolder"
.end annotation


# instance fields
.field final bytes:[B

.field final complete:Z

.field decodeInBackground:Z

.field volatile fresh:Z

.field image:Ljava/lang/Object;


# direct methods
.method public constructor <init>([BZ)V
    .registers 4
    .parameter "bytes"
    .parameter "complete"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->fresh:Z

    .line 182
    iput-boolean p2, p0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->complete:Z

    .line 183
    return-void
.end method


# virtual methods
.method public size()I
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
