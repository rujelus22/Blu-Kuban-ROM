.class Lcom/google/android/imageloader/ImageLoader$ImageError;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageError"
.end annotation


# static fields
.field private static final TIMEOUT:I = 0x1d4c0


# instance fields
.field private final mCause:Ljava/lang/Throwable;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4
    .parameter "cause"

    .prologue
    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 928
    if-nez p1, :cond_b

    .line 929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 931
    :cond_b
    iput-object p1, p0, Lcom/google/android/imageloader/ImageLoader$ImageError;->mCause:Ljava/lang/Throwable;

    .line 932
    invoke-static {}, Lcom/google/android/imageloader/ImageLoader$ImageError;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageError;->mTimestamp:J

    .line 933
    return-void
.end method

.method private static now()J
    .registers 2

    .prologue
    .line 944
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageError;->mCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isExpired()Z
    .registers 5

    .prologue
    .line 936
    invoke-static {}, Lcom/google/android/imageloader/ImageLoader$ImageError;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageError;->mTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
