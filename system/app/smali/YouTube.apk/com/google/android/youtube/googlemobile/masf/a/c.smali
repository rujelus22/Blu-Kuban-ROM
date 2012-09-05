.class public final Lcom/google/android/youtube/googlemobile/masf/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/masf/e;


# instance fields
.field private a:Lcom/google/android/youtube/googlemobile/masf/d;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/android/youtube/googlemobile/masf/d;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_2c

    iput p2, p0, Lcom/google/android/youtube/googlemobile/masf/a/c;->b:I

    :goto_7
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_d
    :goto_d
    if-lez v0, :cond_51

    add-int/lit8 v1, v0, -0x1

    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {p3}, Lcom/google/android/youtube/googlemobile/common/io/f;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p3

    goto :goto_d

    :cond_2c
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/c;->b:I

    goto :goto_7

    :cond_30
    const-string v2, "n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognised encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    if-lez p2, :cond_5d

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/d;

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/c;->b:I

    invoke-direct {v0, p3, v1}, Lcom/google/android/youtube/googlemobile/masf/d;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/c;->a:Lcom/google/android/youtube/googlemobile/masf/d;

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/d;

    const v1, 0x7fffffff

    invoke-direct {v0, p3, v1}, Lcom/google/android/youtube/googlemobile/masf/d;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/c;->a:Lcom/google/android/youtube/googlemobile/masf/d;

    goto :goto_5c
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/c;->b:I

    return v0
.end method

.method public final c()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/c;->a:Lcom/google/android/youtube/googlemobile/masf/d;

    return-object v0
.end method
