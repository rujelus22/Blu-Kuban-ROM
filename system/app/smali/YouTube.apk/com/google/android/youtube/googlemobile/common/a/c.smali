.class final Lcom/google/android/youtube/googlemobile/common/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/io/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/googlemobile/common/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/googlemobile/common/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/a/c;->a:Lcom/google/android/youtube/googlemobile/common/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
