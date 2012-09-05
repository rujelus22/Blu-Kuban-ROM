.class public final Lcom/google/android/youtube/googlemobile/common/io/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/youtube/googlemobile/common/io/f;


# instance fields
.field private b:Lcom/google/android/youtube/googlemobile/common/io/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/f;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/io/f;-><init>()V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/io/f;->a:Lcom/google/android/youtube/googlemobile/common/io/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/f;->a:Lcom/google/android/youtube/googlemobile/common/io/f;

    iget-object v0, v0, Lcom/google/android/youtube/googlemobile/common/io/f;->b:Lcom/google/android/youtube/googlemobile/common/io/g;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/googlemobile/common/io/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/youtube/googlemobile/common/io/g;)V
    .registers 2

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/f;->a:Lcom/google/android/youtube/googlemobile/common/io/f;

    iput-object p0, v0, Lcom/google/android/youtube/googlemobile/common/io/f;->b:Lcom/google/android/youtube/googlemobile/common/io/g;

    return-void
.end method
