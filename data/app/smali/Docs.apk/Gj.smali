.class public LGj;
.super Ljava/lang/Object;
.source "ClientFlagSynchronizerImpl.java"

# interfaces
.implements LGh;


# instance fields
.field private final a:LFX;

.field private final a:LFZ;

.field private final a:LGe;

.field private final a:LIL;


# direct methods
.method public constructor <init>(LIL;LFX;LFZ;LGe;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, LGj;->a:LIL;

    .line 51
    iput-object p2, p0, LGj;->a:LFX;

    .line 52
    iput-object p3, p0, LGj;->a:LFZ;

    .line 53
    iput-object p4, p0, LGj;->a:LGe;

    .line 54
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 135
    :try_start_0
    iget-object v0, p0, LGj;->a:LIL;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, LJj;->a(LIL;Ljava/lang/String;Ljava/net/URI;IZ)Lorg/apache/http/HttpResponse;
    :try_end_c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_c} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_28
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_c} :catch_50
    .catch LJi; {:try_start_0 .. :try_end_c} :catch_6a
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_c} :catch_84
    .catch LJk; {:try_start_0 .. :try_end_c} :catch_9e

    move-result-object v0

    return-object v0

    .line 137
    :catch_e
    move-exception v0

    .line 138
    new-instance v1, LGi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client protocol error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LGi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :catch_28
    move-exception v0

    .line 141
    new-instance v1, LGi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception opening: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LGi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 143
    :catch_50
    move-exception v0

    .line 144
    new-instance v1, LGi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LGi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :catch_6a
    move-exception v0

    .line 147
    new-instance v1, LGi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LGi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :catch_84
    move-exception v0

    .line 150
    new-instance v1, LGi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LGi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :catch_9e
    move-exception v0

    .line 152
    new-instance v1, LGi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirection error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LGi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a()V
    .registers 4

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, LGj;->a:LFZ;

    iget-object v1, p0, LGj;->a:LFX;

    invoke-interface {v0, v1}, LFZ;->a(LFX;)V

    .line 126
    iget-object v0, p0, LGj;->a:LFX;

    invoke-interface {v0}, LFX;->a()V
    :try_end_c
    .catch LGa; {:try_start_0 .. :try_end_c} :catch_d

    .line 130
    return-void

    .line 127
    :catch_d
    move-exception v0

    .line 128
    new-instance v1, LGi;

    const-string v2, "Error saving client flags: "

    invoke-direct {v1, v2, v0}, LGi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, LGj;->a:LFZ;

    invoke-interface {v0}, LFZ;->a()Z

    move-result v0

    const-string v2, "Client flags not loaded on startup"

    invoke-static {v0, v2}, LafQ;->b(ZLjava/lang/Object;)V

    .line 64
    invoke-static {}, LZG;->a()LdX;

    move-result-object v0

    .line 65
    const-string v2, "ClientFlagSynchronizerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found ClientMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", server="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, LdX;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, LdX;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_40
    iget-object v2, v0, LdX;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, LGj;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 72
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 73
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_87

    .line 74
    const-string v2, "ClientFlagSynchronizerImpl"

    const-string v4, "Unable to load resource: %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    iget-object v6, v0, LdX;->b:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_40 .. :try_end_6c} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_6c} :catch_ba
    .catch LGf; {:try_start_40 .. :try_end_6c} :catch_bc

    move-object v2, v1

    .line 90
    :goto_6d
    if-eqz v2, :cond_72

    .line 92
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_d7

    .line 98
    :cond_72
    :goto_72
    iget-object v2, p0, LGj;->a:LIL;

    invoke-interface {v2}, LIL;->b()V

    .line 105
    if-eqz p2, :cond_c5

    .line 112
    :goto_79
    if-eqz p2, :cond_83

    .line 114
    :try_start_7b
    iget-object v0, p0, LGj;->a:LGe;

    iget-object v1, p0, LGj;->a:LFX;

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v2}, LGe;->a(Ljava/lang/String;LFX;Z)V
    :try_end_83
    .catch LGf; {:try_start_7b .. :try_end_83} :catch_ce

    .line 119
    :cond_83
    invoke-direct {p0}, LGj;->a()V

    .line 120
    return-void

    .line 77
    :cond_87
    :try_start_87
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_b2

    .line 79
    iget-object v3, p0, LGj;->a:LIL;

    invoke-interface {v3, v2}, LIL;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    :try_end_92
    .catchall {:try_start_87 .. :try_end_92} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_92} :catch_ba
    .catch LGf; {:try_start_87 .. :try_end_92} :catch_bc

    move-result-object v2

    .line 80
    :try_start_93
    iget-object v3, p0, LGj;->a:LGe;

    iget-object v4, p0, LGj;->a:LFX;

    const/4 v5, 0x1

    invoke-interface {v3, v2, v4, v5}, LGe;->a(Ljava/io/InputStream;LFX;Z)V
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_db
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9b} :catch_9c
    .catch LGf; {:try_start_93 .. :try_end_9b} :catch_de

    goto :goto_6d

    .line 85
    :catch_9c
    move-exception v0

    move-object v1, v2

    .line 86
    :goto_9e
    :try_start_9e
    new-instance v2, LGi;

    const-string v3, "Error downloading client flags file: "

    invoke-direct {v2, v3, v0}, LGi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_a6

    .line 90
    :catchall_a6
    move-exception v0

    :goto_a7
    if-eqz v1, :cond_ac

    .line 92
    :try_start_a9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_d9

    .line 98
    :cond_ac
    :goto_ac
    iget-object v1, p0, LGj;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    throw v0

    .line 82
    :cond_b2
    :try_start_b2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "The entity is null."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_ba} :catch_ba
    .catch LGf; {:try_start_b2 .. :try_end_ba} :catch_bc

    .line 85
    :catch_ba
    move-exception v0

    goto :goto_9e

    .line 87
    :catch_bc
    move-exception v0

    .line 88
    :goto_bd
    :try_start_bd
    new-instance v2, LGi;

    const-string v3, "Error parsing client flags file: "

    invoke-direct {v2, v3, v0}, LGi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_c5
    .catchall {:try_start_bd .. :try_end_c5} :catchall_a6

    .line 107
    :cond_c5
    iget-object v2, v0, LdX;->c:Ljava/lang/String;

    if-eqz v2, :cond_cc

    .line 108
    iget-object p2, v0, LdX;->c:Ljava/lang/String;

    goto :goto_79

    :cond_cc
    move-object p2, v1

    .line 110
    goto :goto_79

    .line 115
    :catch_ce
    move-exception v0

    .line 116
    new-instance v1, LGi;

    const-string v2, "Error parsing local client flags file: "

    invoke-direct {v1, v2, v0}, LGi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :catch_d7
    move-exception v2

    goto :goto_72

    :catch_d9
    move-exception v1

    goto :goto_ac

    .line 90
    :catchall_db
    move-exception v0

    move-object v1, v2

    goto :goto_a7

    .line 87
    :catch_de
    move-exception v0

    move-object v1, v2

    goto :goto_bd
.end method
