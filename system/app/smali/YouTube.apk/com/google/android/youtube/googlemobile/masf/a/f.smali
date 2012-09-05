.class public final Lcom/google/android/youtube/googlemobile/masf/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/youtube/googlemobile/masf/a/o;

.field private b:Ljava/io/DataInputStream;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/masf/a/o;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->a:Lcom/google/android/youtube/googlemobile/masf/a/o;

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/a/o;->g()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->g:I

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/a/o;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->f:I

    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/a/o;->c()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->b:Ljava/io/DataInputStream;

    instance-of v1, p1, Lcom/google/android/youtube/googlemobile/masf/a/h;

    if-eqz v1, :cond_60

    check-cast p1, Lcom/google/android/youtube/googlemobile/masf/a/h;

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/a/h;->e()Lcom/google/android/youtube/googlemobile/masf/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/masf/a/b;->e()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->e:I

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->e:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->c:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->e:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->d:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v0

    :goto_42
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->c:[Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->d:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    :cond_60
    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->f:I

    if-lez v1, :cond_b7

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->e:I

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->f:I

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->e:I

    if-lez v1, :cond_b7

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->e:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->c:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->e:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->d:[Ljava/lang/String;

    :goto_84
    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->e:I

    if-ge v0, v1, :cond_b7

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->c:[Ljava/lang/String;

    aput-object v1, v2, v0

    iget v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->f:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->f:I

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->d:[Ljava/lang/String;

    aput-object v1, v2, v0

    iget v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->f:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_b7
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->g:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->f:I

    return v0
.end method

.method public final c()Ljava/io/DataInputStream;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->b:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public final d()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final e()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/f;->d:[Ljava/lang/String;

    return-object v0
.end method
