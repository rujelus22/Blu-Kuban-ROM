.class final Lcom/google/android/youtube/googlemobile/common/io/a/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static synthetic a(Lcom/google/android/youtube/googlemobile/common/io/a/f;Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/f;->b:I

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/a/f;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/common/io/a/f;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/f;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/youtube/googlemobile/common/io/a/f;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
