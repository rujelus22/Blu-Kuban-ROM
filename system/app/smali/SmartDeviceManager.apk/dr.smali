.class public abstract Ldr;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lei;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lei",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation
.end method

.method public final a([Lorg/apache/http/Header;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Leq;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 25
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_40

    .line 26
    const/16 v0, 0x400

    :try_start_a
    new-array v0, v0, [C

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    :goto_11
    invoke-virtual {v1, v0}, Ljava/io/Reader;->read([C)I
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_30

    move-result v3

    .line 30
    const/4 v4, -0x1

    if-ne v3, v4, :cond_37

    .line 32
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ldr;->a(Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_30
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_24} :catch_29

    move-result-object v0

    .line 43
    :try_start_25
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_3c

    .line 47
    :goto_28
    return-object v0

    .line 35
    :catch_29
    move-exception v0

    .line 36
    :try_start_2a
    new-instance v2, Leq;

    invoke-direct {v2, v0}, Leq;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    .line 43
    :catchall_30
    move-exception v0

    :goto_31
    if-eqz v1, :cond_36

    .line 45
    :try_start_33
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_3e

    .line 47
    :cond_36
    :goto_36
    throw v0

    .line 39
    :cond_37
    const/4 v4, 0x0

    :try_start_38
    invoke-virtual {v2, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_30

    goto :goto_11

    :catch_3c
    move-exception v1

    goto :goto_28

    :catch_3e
    move-exception v1

    goto :goto_36

    .line 43
    :catchall_40
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_31
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    const-string v0, "application/json; charset=UTF-8"

    return-object v0
.end method
