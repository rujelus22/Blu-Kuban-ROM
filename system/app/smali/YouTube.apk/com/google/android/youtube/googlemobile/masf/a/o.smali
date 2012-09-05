.class public abstract Lcom/google/android/youtube/googlemobile/masf/a/o;
.super Lcom/google/android/youtube/googlemobile/masf/a/a;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/masf/e;


# instance fields
.field protected a:Lcom/google/android/youtube/googlemobile/masf/d;

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/googlemobile/masf/a/o;->a(I)V

    iput p2, p0, Lcom/google/android/youtube/googlemobile/masf/a/o;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/googlemobile/masf/d;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/a/o;->a:Lcom/google/android/youtube/googlemobile/masf/d;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/googlemobile/masf/a/o;->a(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/o;->b:I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public abstract b()I
.end method

.method public abstract c()Ljava/io/InputStream;
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/o;->b:I

    return v0
.end method

.method public final h()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/o;->a:Lcom/google/android/youtube/googlemobile/masf/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/o;->a:Lcom/google/android/youtube/googlemobile/masf/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/d;->b()V

    :cond_9
    return-void
.end method
