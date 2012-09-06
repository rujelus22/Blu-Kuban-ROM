.class public LGg;
.super Ljava/lang/Object;
.source "ClientFlagJsonParserImpl.java"

# interfaces
.implements LGe;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;LFX;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 37
    :try_start_5
    new-instance v0, Lamj;

    invoke-direct {v0}, Lamj;-><init>()V

    invoke-virtual {v0, v1}, Lamj;->a(Ljava/io/Reader;)Lame;

    move-result-object v0

    check-cast v0, Lamh;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_5b
    .catch Lami; {:try_start_5 .. :try_end_10} :catch_52

    .line 42
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_8a

    .line 51
    :goto_13
    monitor-enter p2

    .line 52
    if-eqz p3, :cond_19

    .line 53
    :try_start_16
    invoke-interface {p2}, LFX;->b()V

    .line 55
    :cond_19
    invoke-virtual {v0}, Lamh;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lame;

    .line 57
    invoke-virtual {v1}, Lame;->d()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 58
    check-cast v1, Lamk;

    .line 59
    invoke-virtual {v1}, Lamk;->f()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lamk;->a()Z

    move-result v1

    invoke-interface {p2, v0, v1}, LFX;->a(Ljava/lang/String;Z)V

    goto :goto_21

    .line 68
    :catchall_4f
    move-exception v0

    monitor-exit p2
    :try_end_51
    .catchall {:try_start_16 .. :try_end_51} :catchall_4f

    throw v0

    .line 38
    :catch_52
    move-exception v0

    .line 39
    :try_start_53
    new-instance v2, LGf;

    const-string v3, "Error parsing client flags file: "

    invoke-direct {v2, v3, v0}, LGf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_5b

    .line 41
    :catchall_5b
    move-exception v0

    .line 42
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_8c

    .line 45
    :goto_5f
    throw v0

    .line 61
    :cond_60
    :try_start_60
    invoke-virtual {v1}, Lamk;->g()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lamk;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, LFX;->a(Ljava/lang/String;I)V

    goto :goto_21

    .line 63
    :cond_74
    invoke-virtual {v1}, Lamk;->h()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lamk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 68
    :cond_88
    monitor-exit p2
    :try_end_89
    .catchall {:try_start_60 .. :try_end_89} :catchall_4f

    .line 69
    return-void

    .line 43
    :catch_8a
    move-exception v1

    goto :goto_13

    :catch_8c
    move-exception v1

    goto :goto_5f
.end method

.method public final a(Ljava/lang/String;LFX;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 76
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    const-string v0, "ClientFlagJsonParserImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local flag override path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v2, 0x0

    .line 81
    :try_start_29
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_2e} :catch_37

    .line 82
    :try_start_2e
    invoke-virtual {p0, v1, p2, p3}, LGg;->a(Ljava/io/InputStream;LFX;Z)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_69
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_31} :catch_6b

    .line 88
    if-eqz v1, :cond_36

    .line 90
    :try_start_33
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_65

    .line 96
    :cond_36
    :goto_36
    return-void

    .line 83
    :catch_37
    move-exception v0

    move-object v1, v2

    .line 86
    :goto_39
    :try_start_39
    const-string v2, "ClientFlagJsonParserImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local flag file not available: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_39 .. :try_end_55} :catchall_69

    .line 88
    if-eqz v1, :cond_36

    .line 90
    :try_start_57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_36

    .line 91
    :catch_5b
    move-exception v0

    goto :goto_36

    .line 88
    :catchall_5d
    move-exception v0

    move-object v1, v2

    :goto_5f
    if-eqz v1, :cond_64

    .line 90
    :try_start_61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_67

    .line 93
    :cond_64
    :goto_64
    throw v0

    .line 91
    :catch_65
    move-exception v0

    goto :goto_36

    :catch_67
    move-exception v1

    goto :goto_64

    .line 88
    :catchall_69
    move-exception v0

    goto :goto_5f

    .line 83
    :catch_6b
    move-exception v0

    goto :goto_39
.end method
