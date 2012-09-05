.class public Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImage;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:I


# instance fields
.field private volatile b:Landroid/graphics/Bitmap;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImage;->a:I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImage;->c:Z

    if-nez v0, :cond_b

    iput-object v1, p0, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImage;->b:Landroid/graphics/Bitmap;

    :cond_7
    :goto_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImage;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImage;->b:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_28

    if-eqz v0, :cond_7

    const-class v1, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImage;

    monitor-enter v1

    :try_start_17
    sget v0, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImage;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImage;->a:I

    if-gez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_25

    goto :goto_7
.end method
