.class LFI;
.super Lcg;
.source "ImageFetcher.java"


# instance fields
.field final synthetic a:LFG;


# direct methods
.method private constructor <init>(LFG;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, LFI;->a:LFG;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LFG;LFH;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, LFI;-><init>(LFG;)V

    return-void
.end method

.method private a(LFK;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 99
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 104
    :try_start_6
    iget-object v2, p0, LFI;->a:LFG;

    invoke-static {v2}, LFG;->a(LFG;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 105
    iget-object v2, p0, LFI;->a:LFG;

    invoke-static {v2}, LFG;->a(LFG;)LIL;

    move-result-object v2

    iget-object v3, p0, LFI;->a:LFG;

    invoke-static {v3}, LFG;->a(LFG;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, LIL;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 110
    :goto_20
    invoke-static {}, LFI;->b()Z
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_14b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_23} :catch_167
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_23} :catch_100
    .catch Landroid/accounts/AuthenticatorException; {:try_start_6 .. :try_end_23} :catch_11b
    .catch LJi; {:try_start_6 .. :try_end_23} :catch_133

    move-result v2

    if-eqz v2, :cond_40

    .line 150
    if-eqz v1, :cond_2b

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 154
    :cond_2b
    iget-object v0, p0, LFI;->a:LFG;

    invoke-static {v0}, LFG;->a(LFG;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    .line 156
    :goto_34
    return-void

    .line 107
    :cond_35
    :try_start_35
    iget-object v2, p0, LFI;->a:LFG;

    invoke-static {v2}, LFG;->a(LFG;)LIL;

    move-result-object v2

    invoke-interface {v2, v0}, LIL;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_20

    .line 114
    :cond_40
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 115
    const/16 v3, 0x12e

    if-ne v2, v3, :cond_6b

    .line 116
    const-string v2, "Location"

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LFI;->a(LFK;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_35 .. :try_end_5c} :catchall_14b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_35 .. :try_end_5c} :catch_167
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_5c} :catch_100
    .catch Landroid/accounts/AuthenticatorException; {:try_start_35 .. :try_end_5c} :catch_11b
    .catch LJi; {:try_start_35 .. :try_end_5c} :catch_133

    .line 150
    if-eqz v1, :cond_61

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 154
    :cond_61
    iget-object v0, p0, LFI;->a:LFG;

    invoke-static {v0}, LFG;->a(LFG;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto :goto_34

    .line 119
    :cond_6b
    :try_start_6b
    const-string v2, "gview"

    const-string v3, ".png"

    iget-object v4, p0, LFI;->a:LFG;

    invoke-static {v4}, LFG;->a(LFG;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_14b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6b .. :try_end_7c} :catch_167
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_7c} :catch_100
    .catch Landroid/accounts/AuthenticatorException; {:try_start_6b .. :try_end_7c} :catch_11b
    .catch LJi; {:try_start_6b .. :try_end_7c} :catch_133

    move-result-object v2

    .line 121
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 122
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 123
    if-nez v0, :cond_a6

    .line 124
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request entity is null."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8e
    .catchall {:try_start_7d .. :try_end_8e} :catchall_15b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7d .. :try_end_8e} :catch_8e
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8e} :catch_164
    .catch Landroid/accounts/AuthenticatorException; {:try_start_7d .. :try_end_8e} :catch_161
    .catch LJi; {:try_start_7d .. :try_end_8e} :catch_15e

    .line 140
    :catch_8e
    move-exception v0

    move-object v1, v2

    .line 141
    :goto_90
    :try_start_90
    const-string v2, "ImageFetcher"

    const-string v3, "Image fetching error"

    invoke-static {v2, v3, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_14b

    .line 150
    if-eqz v1, :cond_9c

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 154
    :cond_9c
    iget-object v0, p0, LFI;->a:LFG;

    invoke-static {v0}, LFG;->a(LFG;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto :goto_34

    .line 127
    :cond_a6
    :try_start_a6
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 128
    invoke-static {}, LFI;->b()Z
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_15b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a6 .. :try_end_ad} :catch_8e
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ad} :catch_164
    .catch Landroid/accounts/AuthenticatorException; {:try_start_a6 .. :try_end_ad} :catch_161
    .catch LJi; {:try_start_a6 .. :try_end_ad} :catch_15e

    move-result v3

    if-eqz v3, :cond_c0

    .line 150
    if-eqz v2, :cond_b5

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 154
    :cond_b5
    iget-object v0, p0, LFI;->a:LFG;

    invoke-static {v0}, LFG;->a(LFG;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_34

    .line 132
    :cond_c0
    :try_start_c0
    iget-object v3, p0, LFI;->a:LFG;

    invoke-static {v3}, LFG;->a(LFG;)LXP;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {v3, v0, v4}, LXP;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 133
    invoke-static {}, LFI;->b()Z
    :try_end_d1
    .catchall {:try_start_c0 .. :try_end_d1} :catchall_15b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c0 .. :try_end_d1} :catch_8e
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_d1} :catch_164
    .catch Landroid/accounts/AuthenticatorException; {:try_start_c0 .. :try_end_d1} :catch_161
    .catch LJi; {:try_start_c0 .. :try_end_d1} :catch_15e

    move-result v0

    if-eqz v0, :cond_e4

    .line 150
    if-eqz v2, :cond_d9

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 154
    :cond_d9
    iget-object v0, p0, LFI;->a:LFG;

    invoke-static {v0}, LFG;->a(LFG;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_34

    .line 137
    :cond_e4
    :try_start_e4
    iget-object v0, p0, LFI;->a:LFG;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, LFG;->a(LFG;LFK;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_f0
    .catchall {:try_start_e4 .. :try_end_f0} :catchall_15b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e4 .. :try_end_f0} :catch_8e
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_f0} :catch_164
    .catch Landroid/accounts/AuthenticatorException; {:try_start_e4 .. :try_end_f0} :catch_161
    .catch LJi; {:try_start_e4 .. :try_end_f0} :catch_15e

    .line 150
    if-eqz v1, :cond_f5

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 154
    :cond_f5
    iget-object v0, p0, LFI;->a:LFG;

    invoke-static {v0}, LFG;->a(LFG;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_34

    .line 142
    :catch_100
    move-exception v0

    .line 143
    :goto_101
    :try_start_101
    const-string v2, "ImageFetcher"

    const-string v3, "Image fetching error"

    invoke-static {v2, v3, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    invoke-virtual {p0}, LFI;->a()V
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_14b

    .line 150
    if-eqz v1, :cond_110

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 154
    :cond_110
    iget-object v0, p0, LFI;->a:LFG;

    invoke-static {v0}, LFG;->a(LFG;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_34

    .line 145
    :catch_11b
    move-exception v0

    .line 146
    :goto_11c
    :try_start_11c
    const-string v2, "ImageFetcher"

    const-string v3, "Image fetching error"

    invoke-static {v2, v3, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_14b

    .line 150
    if-eqz v1, :cond_128

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 154
    :cond_128
    iget-object v0, p0, LFI;->a:LFG;

    invoke-static {v0}, LFG;->a(LFG;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_34

    .line 147
    :catch_133
    move-exception v0

    .line 148
    :goto_134
    :try_start_134
    const-string v2, "ImageFetcher"

    const-string v3, "Image fetching error"

    invoke-static {v2, v3, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13b
    .catchall {:try_start_134 .. :try_end_13b} :catchall_14b

    .line 150
    if-eqz v1, :cond_140

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 154
    :cond_140
    iget-object v0, p0, LFI;->a:LFG;

    invoke-static {v0}, LFG;->a(LFG;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_34

    .line 150
    :catchall_14b
    move-exception v0

    :goto_14c
    if-eqz v1, :cond_151

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 154
    :cond_151
    iget-object v1, p0, LFI;->a:LFG;

    invoke-static {v1}, LFG;->a(LFG;)LIL;

    move-result-object v1

    invoke-interface {v1}, LIL;->b()V

    throw v0

    .line 150
    :catchall_15b
    move-exception v0

    move-object v1, v2

    goto :goto_14c

    .line 147
    :catch_15e
    move-exception v0

    move-object v1, v2

    goto :goto_134

    .line 145
    :catch_161
    move-exception v0

    move-object v1, v2

    goto :goto_11c

    .line 142
    :catch_164
    move-exception v0

    move-object v1, v2

    goto :goto_101

    .line 140
    :catch_167
    move-exception v0

    goto/16 :goto_90
.end method


# virtual methods
.method public c()V
    .registers 4

    .prologue
    .line 81
    :goto_0
    :try_start_0
    invoke-static {}, LFI;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    :cond_6
    :goto_6
    return-void

    .line 85
    :cond_7
    iget-object v0, p0, LFI;->a:LFG;

    invoke-static {v0}, LFG;->a(LFG;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFK;

    .line 86
    invoke-static {v0}, LFK;->b(LFK;)I

    move-result v1

    if-ltz v1, :cond_6

    invoke-static {}, LFI;->b()Z

    move-result v1

    if-nez v1, :cond_6

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LFI;->a:LFG;

    invoke-static {v2}, LFG;->a(LFG;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pagenumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, LFK;->b(LFK;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, LFK;->c(LFK;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-direct {p0, v0, v1}, LFI;->a(LFK;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_0

    .line 93
    :catch_54
    move-exception v0

    .line 94
    const-string v0, "ImageFetcher"

    const-string v1, "ImageFetcher thread interrupted"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method
