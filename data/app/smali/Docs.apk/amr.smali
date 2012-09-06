.class public final Lamr;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static a(LamW;)Lame;
    .registers 3
    .parameter

    .prologue
    .line 40
    const/4 v1, 0x1

    .line 42
    :try_start_1
    invoke-virtual {p0}, LamW;->a()Lana;

    .line 43
    const/4 v1, 0x0

    .line 44
    sget-object v0, Lams;->v:Lamm;

    invoke-virtual {v0, p0}, Lamm;->a(LamW;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lame;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Land; {:try_start_1 .. :try_end_d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_28

    .line 51
    :goto_d
    return-object v0

    .line 45
    :catch_e
    move-exception v0

    .line 50
    if-eqz v1, :cond_14

    .line 51
    sget-object v0, Lamg;->a:Lamg;

    goto :goto_d

    .line 53
    :cond_14
    new-instance v1, Lamf;

    invoke-direct {v1, v0}, Lamf;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 54
    :catch_1a
    move-exception v0

    .line 55
    new-instance v1, Laml;

    invoke-direct {v1, v0}, Laml;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :catch_21
    move-exception v0

    .line 57
    new-instance v1, Lamf;

    invoke-direct {v1, v0}, Lamf;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :catch_28
    move-exception v0

    .line 59
    new-instance v1, Laml;

    invoke-direct {v1, v0}, Laml;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lame;Lanb;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    sget-object v0, Lams;->v:Lamm;

    invoke-virtual {v0, p1, p0}, Lamm;->a(Lanb;Ljava/lang/Object;)V

    .line 68
    return-void
.end method
