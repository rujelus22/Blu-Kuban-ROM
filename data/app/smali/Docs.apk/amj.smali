.class public final Lamj;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LamW;)Lame;
    .registers 7
    .parameter

    .prologue
    .line 81
    invoke-virtual {p1}, LamW;->a()Z

    move-result v1

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LamW;->a(Z)V

    .line 84
    :try_start_8
    invoke-static {p1}, Lamr;->a(LamW;)Lame;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_30
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_b} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_35
    .catch Lami; {:try_start_8 .. :try_end_b} :catch_55

    move-result-object v0

    .line 95
    invoke-virtual {p1, v1}, LamW;->a(Z)V

    :goto_f
    return-object v0

    .line 85
    :catch_10
    move-exception v0

    .line 86
    :try_start_11
    new-instance v2, Lami;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lami;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_30

    .line 95
    :catchall_30
    move-exception v0

    invoke-virtual {p1, v1}, LamW;->a(Z)V

    throw v0

    .line 87
    :catch_35
    move-exception v0

    .line 88
    :try_start_36
    new-instance v2, Lami;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lami;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 89
    :catch_55
    move-exception v0

    .line 90
    invoke-virtual {v0}, Lami;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/EOFException;

    if-eqz v2, :cond_64

    .line 91
    sget-object v0, Lamg;->a:Lamg;
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_30

    .line 95
    invoke-virtual {p1, v1}, LamW;->a(Z)V

    goto :goto_f

    .line 93
    :cond_64
    :try_start_64
    throw v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_30
.end method

.method public a(Ljava/io/Reader;)Lame;
    .registers 5
    .parameter

    .prologue
    .line 58
    :try_start_0
    new-instance v0, LamW;

    invoke-direct {v0, p1}, LamW;-><init>(Ljava/io/Reader;)V

    .line 59
    invoke-virtual {p0, v0}, Lamj;->a(LamW;)Lame;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lame;->e()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v0}, LamW;->a()Lana;

    move-result-object v0

    sget-object v2, Lana;->j:Lana;

    if-eq v0, v2, :cond_34

    .line 61
    new-instance v0, Laml;

    const-string v1, "Did not consume the entire document."

    invoke-direct {v0, v1}, Laml;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catch Land; {:try_start_0 .. :try_end_1f} :catch_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_26
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1f} :catch_2d

    .line 64
    :catch_1f
    move-exception v0

    .line 65
    new-instance v1, Laml;

    invoke-direct {v1, v0}, Laml;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 66
    :catch_26
    move-exception v0

    .line 67
    new-instance v1, Lamf;

    invoke-direct {v1, v0}, Lamf;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :catch_2d
    move-exception v0

    .line 69
    new-instance v1, Laml;

    invoke-direct {v1, v0}, Laml;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :cond_34
    return-object v1
.end method

.method public a(Ljava/lang/String;)Lame;
    .registers 3
    .parameter

    .prologue
    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lamj;->a(Ljava/io/Reader;)Lame;

    move-result-object v0

    return-object v0
.end method
