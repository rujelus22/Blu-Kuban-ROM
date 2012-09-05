.class public abstract Lcom/google/android/youtube/googlemobile/common/io/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;


# instance fields
.field private final a:Lcom/google/android/youtube/googlemobile/common/io/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/k;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/googlemobile/common/io/k;-><init>(Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/c;->a:Lcom/google/android/youtube/googlemobile/common/io/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/c;->a:Lcom/google/android/youtube/googlemobile/common/io/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/io/k;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;[B)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/c;->a:Lcom/google/android/youtube/googlemobile/common/io/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/k;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/c;->a:Lcom/google/android/youtube/googlemobile/common/io/k;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/googlemobile/common/io/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
