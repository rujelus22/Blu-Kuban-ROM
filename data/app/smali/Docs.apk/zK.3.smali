.class public LzK;
.super LcI;
.source "DownloadImageTask.java"


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private final a:LIL;

.field private final a:LXP;

.field private final a:Ljava/lang/String;

.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "LzW;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Z

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, LzK;->a:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;LzW;LIL;Ljava/lang/String;LXP;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, LcI;-><init>()V

    .line 97
    iput-object p1, p0, LzK;->a:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LzK;->a:Ljava/lang/ref/WeakReference;

    .line 99
    iput-object p3, p0, LzK;->a:LIL;

    .line 100
    iput-object p4, p0, LzK;->b:Ljava/lang/String;

    .line 101
    iput-object p5, p0, LzK;->a:LXP;

    .line 102
    iput-boolean p6, p0, LzK;->a:Z

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;LzW;LIL;Ljava/lang/String;LXP;ZLzL;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, LzK;-><init>(Ljava/lang/String;LzW;LIL;Ljava/lang/String;LXP;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 107
    .line 110
    :try_start_1
    const-string v0, "DownloadImageTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started loading image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LzK;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-boolean v0, p0, LzK;->a:Z

    if-nez v0, :cond_79

    .line 113
    iget-object v0, p0, LzK;->a:LIL;

    iget-object v2, p0, LzK;->b:Ljava/lang/String;

    iget-object v3, p0, LzK;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {v0, v2, v3, v4, v5}, LJj;->a(LIL;Ljava/lang/String;Ljava/net/URI;IZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 121
    :goto_2f
    iget-object v2, p0, LzK;->a:LIL;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v2, v0}, LIL;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_282
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_38} :catch_af
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_38} :catch_fc
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_38} :catch_14a
    .catch LJi; {:try_start_1 .. :try_end_38} :catch_198
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_38} :catch_1e6
    .catch LJk; {:try_start_1 .. :try_end_38} :catch_234

    move-result-object v2

    .line 123
    :try_start_39
    iget-object v0, p0, LzK;->a:LXP;

    invoke-interface {v0, v2}, LXP;->a(Ljava/io/InputStream;)[B
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_2c3
    .catch Ljava/net/MalformedURLException; {:try_start_39 .. :try_end_3e} :catch_2f2
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_2e9
    .catch Landroid/accounts/AuthenticatorException; {:try_start_39 .. :try_end_3e} :catch_2e0
    .catch LJi; {:try_start_39 .. :try_end_3e} :catch_2d7
    .catch Ljava/net/URISyntaxException; {:try_start_39 .. :try_end_3e} :catch_2ce
    .catch LJk; {:try_start_39 .. :try_end_3e} :catch_2c5

    move-result-object v0

    .line 124
    :try_start_3f
    const-string v1, "DownloadImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, LzK;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_2c3
    .catch Ljava/net/MalformedURLException; {:try_start_3f .. :try_end_59} :catch_2f8
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_59} :catch_2ef
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3f .. :try_end_59} :catch_2e6
    .catch LJi; {:try_start_3f .. :try_end_59} :catch_2dd
    .catch Ljava/net/URISyntaxException; {:try_start_3f .. :try_end_59} :catch_2d4
    .catch LJk; {:try_start_3f .. :try_end_59} :catch_2cb

    .line 138
    if-eqz v2, :cond_5e

    .line 140
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_91

    .line 145
    :cond_5e
    :goto_5e
    iget-object v1, p0, LzK;->a:LIL;

    if-eqz v1, :cond_2fb

    .line 146
    iget-object v1, p0, LzK;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    move-object v1, v0

    .line 150
    :goto_68
    iget-object v0, p0, LzK;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzW;

    .line 151
    if-eqz v0, :cond_78

    invoke-virtual {v0}, LzW;->a()Z

    move-result v0

    if-nez v0, :cond_2b1

    .line 161
    :cond_78
    :goto_78
    return-void

    .line 116
    :cond_79
    :try_start_79
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, LzK;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, LzK;->a:LIL;

    invoke-interface {v2, v0}, LIL;->a(Lorg/apache/http/HttpRequest;)V

    .line 118
    iget-object v2, p0, LzK;->a:LIL;

    iget-object v3, p0, LzK;->b:Ljava/lang/String;

    const/4 v4, 0x5

    const-string v5, "contacts"

    invoke-static {v2, v3, v0, v4, v5}, LJj;->a(LIL;Ljava/lang/String;Lorg/apache/http/client/methods/HttpRequestBase;ILjava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_8f
    .catchall {:try_start_79 .. :try_end_8f} :catchall_282
    .catch Ljava/net/MalformedURLException; {:try_start_79 .. :try_end_8f} :catch_af
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_8f} :catch_fc
    .catch Landroid/accounts/AuthenticatorException; {:try_start_79 .. :try_end_8f} :catch_14a
    .catch LJi; {:try_start_79 .. :try_end_8f} :catch_198
    .catch Ljava/net/URISyntaxException; {:try_start_79 .. :try_end_8f} :catch_1e6
    .catch LJk; {:try_start_79 .. :try_end_8f} :catch_234

    move-result-object v0

    goto :goto_2f

    .line 141
    :catch_91
    move-exception v1

    .line 142
    const-string v2, "DownloadImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing image stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 125
    :catch_af
    move-exception v0

    move-object v2, v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 126
    :goto_b4
    :try_start_b4
    const-string v3, "DownloadImageTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Marlformed image URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LzK;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ce
    .catchall {:try_start_b4 .. :try_end_ce} :catchall_2c3

    .line 138
    if-eqz v2, :cond_d3

    .line 140
    :try_start_d0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_de

    .line 145
    :cond_d3
    :goto_d3
    iget-object v1, p0, LzK;->a:LIL;

    if-eqz v1, :cond_2fb

    .line 146
    iget-object v1, p0, LzK;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    move-object v1, v0

    goto :goto_68

    .line 141
    :catch_de
    move-exception v1

    .line 142
    const-string v2, "DownloadImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing image stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 127
    :catch_fc
    move-exception v0

    move-object v2, v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 128
    :goto_101
    :try_start_101
    const-string v3, "DownloadImageTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LzK;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11b
    .catchall {:try_start_101 .. :try_end_11b} :catchall_2c3

    .line 138
    if-eqz v2, :cond_120

    .line 140
    :try_start_11d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_12c

    .line 145
    :cond_120
    :goto_120
    iget-object v1, p0, LzK;->a:LIL;

    if-eqz v1, :cond_2fb

    .line 146
    iget-object v1, p0, LzK;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    move-object v1, v0

    goto/16 :goto_68

    .line 141
    :catch_12c
    move-exception v1

    .line 142
    const-string v2, "DownloadImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing image stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_120

    .line 129
    :catch_14a
    move-exception v0

    move-object v2, v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 130
    :goto_14f
    :try_start_14f
    const-string v3, "DownloadImageTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LzK;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_169
    .catchall {:try_start_14f .. :try_end_169} :catchall_2c3

    .line 138
    if-eqz v2, :cond_16e

    .line 140
    :try_start_16b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16e} :catch_17a

    .line 145
    :cond_16e
    :goto_16e
    iget-object v1, p0, LzK;->a:LIL;

    if-eqz v1, :cond_2fb

    .line 146
    iget-object v1, p0, LzK;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    move-object v1, v0

    goto/16 :goto_68

    .line 141
    :catch_17a
    move-exception v1

    .line 142
    const-string v2, "DownloadImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing image stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16e

    .line 131
    :catch_198
    move-exception v0

    move-object v2, v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 132
    :goto_19d
    :try_start_19d
    const-string v3, "DownloadImageTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LzK;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b7
    .catchall {:try_start_19d .. :try_end_1b7} :catchall_2c3

    .line 138
    if-eqz v2, :cond_1bc

    .line 140
    :try_start_1b9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bc} :catch_1c8

    .line 145
    :cond_1bc
    :goto_1bc
    iget-object v1, p0, LzK;->a:LIL;

    if-eqz v1, :cond_2fb

    .line 146
    iget-object v1, p0, LzK;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    move-object v1, v0

    goto/16 :goto_68

    .line 141
    :catch_1c8
    move-exception v1

    .line 142
    const-string v2, "DownloadImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing image stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bc

    .line 133
    :catch_1e6
    move-exception v0

    move-object v2, v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 134
    :goto_1eb
    :try_start_1eb
    const-string v3, "DownloadImageTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LzK;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_205
    .catchall {:try_start_1eb .. :try_end_205} :catchall_2c3

    .line 138
    if-eqz v2, :cond_20a

    .line 140
    :try_start_207
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_207 .. :try_end_20a} :catch_216

    .line 145
    :cond_20a
    :goto_20a
    iget-object v1, p0, LzK;->a:LIL;

    if-eqz v1, :cond_2fb

    .line 146
    iget-object v1, p0, LzK;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    move-object v1, v0

    goto/16 :goto_68

    .line 141
    :catch_216
    move-exception v1

    .line 142
    const-string v2, "DownloadImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing image stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20a

    .line 135
    :catch_234
    move-exception v0

    move-object v2, v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 136
    :goto_239
    :try_start_239
    const-string v3, "DownloadImageTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LzK;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_253
    .catchall {:try_start_239 .. :try_end_253} :catchall_2c3

    .line 138
    if-eqz v2, :cond_258

    .line 140
    :try_start_255
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_258
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_258} :catch_264

    .line 145
    :cond_258
    :goto_258
    iget-object v1, p0, LzK;->a:LIL;

    if-eqz v1, :cond_2fb

    .line 146
    iget-object v1, p0, LzK;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    move-object v1, v0

    goto/16 :goto_68

    .line 141
    :catch_264
    move-exception v1

    .line 142
    const-string v2, "DownloadImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing image stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_258

    .line 138
    :catchall_282
    move-exception v0

    move-object v2, v1

    :goto_284
    if-eqz v2, :cond_289

    .line 140
    :try_start_286
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_289
    .catch Ljava/io/IOException; {:try_start_286 .. :try_end_289} :catch_293

    .line 145
    :cond_289
    :goto_289
    iget-object v1, p0, LzK;->a:LIL;

    if-eqz v1, :cond_292

    .line 146
    iget-object v1, p0, LzK;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    :cond_292
    throw v0

    .line 141
    :catch_293
    move-exception v1

    .line 142
    const-string v2, "DownloadImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing image stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_289

    .line 158
    :cond_2b1
    if-eqz v1, :cond_78

    .line 159
    sget-object v0, LzK;->a:Landroid/os/Handler;

    new-instance v2, LAb;

    iget-object v3, p0, LzK;->a:Ljava/lang/String;

    iget-object v4, p0, LzK;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3, v4, v1}, LAb;-><init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;[B)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_78

    .line 138
    :catchall_2c3
    move-exception v0

    goto :goto_284

    .line 135
    :catch_2c5
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_239

    :catch_2cb
    move-exception v1

    goto/16 :goto_239

    .line 133
    :catch_2ce
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_1eb

    :catch_2d4
    move-exception v1

    goto/16 :goto_1eb

    .line 131
    :catch_2d7
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_19d

    :catch_2dd
    move-exception v1

    goto/16 :goto_19d

    .line 129
    :catch_2e0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_14f

    :catch_2e6
    move-exception v1

    goto/16 :goto_14f

    .line 127
    :catch_2e9
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_101

    :catch_2ef
    move-exception v1

    goto/16 :goto_101

    .line 125
    :catch_2f2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_b4

    :catch_2f8
    move-exception v1

    goto/16 :goto_b4

    :cond_2fb
    move-object v1, v0

    goto/16 :goto_68
.end method
