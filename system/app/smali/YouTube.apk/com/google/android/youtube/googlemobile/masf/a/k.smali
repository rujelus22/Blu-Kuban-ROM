.class public final Lcom/google/android/youtube/googlemobile/masf/a/k;
.super Lcom/google/android/youtube/googlemobile/masf/a/o;


# instance fields
.field private b:Lcom/google/android/youtube/googlemobile/masf/a/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/masf/d;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/masf/a/o;-><init>(Lcom/google/android/youtube/googlemobile/masf/d;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v2, Lcom/google/android/youtube/googlemobile/masf/a/c;

    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/youtube/googlemobile/masf/a/c;-><init>(Ljava/lang/String;ILcom/google/android/youtube/googlemobile/masf/d;)V

    iput-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/a/c;

    return-void
.end method


# virtual methods
.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/a/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/c;->b()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/k;->b:Lcom/google/android/youtube/googlemobile/masf/a/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/c;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
