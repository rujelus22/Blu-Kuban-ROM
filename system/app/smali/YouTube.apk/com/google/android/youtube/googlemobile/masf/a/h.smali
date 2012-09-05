.class public final Lcom/google/android/youtube/googlemobile/masf/a/h;
.super Lcom/google/android/youtube/googlemobile/masf/a/o;


# instance fields
.field private final b:Lcom/google/android/youtube/googlemobile/masf/a/b;

.field private final c:[Lcom/google/android/youtube/googlemobile/masf/a/b;

.field private final d:I


# direct methods
.method public constructor <init>(IILcom/google/android/youtube/googlemobile/masf/a/b;[Lcom/google/android/youtube/googlemobile/masf/a/b;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/masf/a/o;-><init>(II)V

    iput-object p3, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->b:Lcom/google/android/youtube/googlemobile/masf/a/b;

    iput-object p4, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->c:[Lcom/google/android/youtube/googlemobile/masf/a/b;

    array-length v0, p4

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/googlemobile/masf/d;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/masf/a/o;-><init>(Lcom/google/android/youtube/googlemobile/masf/d;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_8
    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/a/b;->a(Ljava/io/InputStream;)Lcom/google/android/youtube/googlemobile/masf/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->b:Lcom/google/android/youtube/googlemobile/masf/a/b;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->d:I

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->d:I

    new-array v0, v0, [Lcom/google/android/youtube/googlemobile/masf/a/b;

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->c:[Lcom/google/android/youtube/googlemobile/masf/a/b;

    const/4 v0, 0x0

    :goto_1b
    iget v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->d:I

    if-ge v0, v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->c:[Lcom/google/android/youtube/googlemobile/masf/a/b;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/masf/a/b;->a(Ljava/io/InputStream;)Lcom/google/android/youtube/googlemobile/masf/a/b;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_2a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :catch_2a
    move-exception v0

    throw v0

    :cond_2c
    return-void
.end method


# virtual methods
.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->b:Lcom/google/android/youtube/googlemobile/masf/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/b;->d()Lcom/google/android/youtube/googlemobile/masf/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/masf/e;->b()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->b:Lcom/google/android/youtube/googlemobile/masf/a/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/a/b;->d()Lcom/google/android/youtube/googlemobile/masf/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/masf/e;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/android/youtube/googlemobile/masf/a/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->b:Lcom/google/android/youtube/googlemobile/masf/a/b;

    return-object v0
.end method

.method public final f()[Lcom/google/android/youtube/googlemobile/masf/a/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/h;->c:[Lcom/google/android/youtube/googlemobile/masf/a/b;

    return-object v0
.end method
