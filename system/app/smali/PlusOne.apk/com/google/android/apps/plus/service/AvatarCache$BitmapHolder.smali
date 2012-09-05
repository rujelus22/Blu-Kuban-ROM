.class Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
.super Ljava/lang/Object;
.source "AvatarCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/AvatarCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapHolder"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final bytes:[B

.field final complete:Z

.field volatile fresh:Z


# direct methods
.method public constructor <init>([BZ)V
    .registers 4
    .parameter "bytes"
    .parameter "complete"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bytes:[B

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->fresh:Z

    .line 115
    iput-boolean p2, p0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->complete:Z

    .line 116
    return-void
.end method
