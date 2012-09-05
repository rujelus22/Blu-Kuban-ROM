.class public final Lec;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lei;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lei",
        "<",
        "Leb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Leg;


# direct methods
.method public constructor <init>(Leg;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lec;->a:Leg;

    .line 18
    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 26
    const/4 v0, 0x0

    .line 27
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_2b

    .line 30
    const/16 v0, 0x400

    :try_start_b
    new-array v0, v0, [B

    .line 33
    :cond_d
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 34
    if-eq v2, v4, :cond_17

    .line 35
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 37
    :cond_17
    if-ne v2, v4, :cond_d

    .line 38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 39
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_39

    move-result-object v0

    .line 41
    :try_start_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_35

    .line 48
    :goto_23
    if-nez v0, :cond_2a

    .line 51
    const-string v1, "Error converting response to a PNG byte array"

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    .line 54
    :cond_2a
    return-object v0

    .line 41
    :catchall_2b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2f
    if-eqz v1, :cond_34

    .line 43
    :try_start_31
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_37

    .line 45
    :cond_34
    :goto_34
    throw v0

    :catch_35
    move-exception v1

    goto :goto_23

    :catch_37
    move-exception v1

    goto :goto_34

    .line 41
    :catchall_39
    move-exception v0

    goto :goto_2f
.end method


# virtual methods
.method public final bridge synthetic a([Lorg/apache/http/Header;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Leq;
        }
    .end annotation

    .prologue
    .line 12
    const-string v0, "ETag"

    invoke-static {p1, v0}, Lp;->a([Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lec;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    new-instance v2, Leb;

    iget-object v3, p0, Lec;->a:Leg;

    invoke-direct {v2, v1, v0, v3}, Leb;-><init>([BLjava/lang/String;Leg;)V

    return-object v2
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    const-string v0, "image/png"

    return-object v0
.end method
