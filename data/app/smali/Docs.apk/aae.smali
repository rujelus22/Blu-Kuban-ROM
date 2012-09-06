.class public Laae;
.super Ljava/lang/Object;
.source "ThumbnailFetcherImpl.java"

# interfaces
.implements Laac;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:LIL;

.field private final a:LRU;

.field private a:LXu;

.field private a:Laad;

.field private a:Landroid/graphics/Bitmap;

.field private a:Ldd;

.field private a:Lld;

.field private volatile a:Z


# direct methods
.method public constructor <init>(LanD;LIL;)V
    .registers 4
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "LRU;",
            ">;",
            "LIL;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-interface {p1}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRU;

    iput-object v0, p0, Laae;->a:LRU;

    .line 64
    iput-object p2, p0, Laae;->a:LIL;

    .line 65
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter

    .prologue
    .line 204
    const-string v0, "thumbnail"

    invoke-static {v0, p1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 207
    :try_start_a
    iget-object v0, p0, Laae;->a:LIL;

    iget-object v1, p0, Laae;->a:Lld;

    iget-object v1, v1, Lld;->a:Ljava/lang/String;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, LJj;->a(LIL;Ljava/lang/String;Ljava/net/URI;IZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_34

    .line 212
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 213
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_3c

    move-result-object v0

    .line 218
    iget-object v1, p0, Laae;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    return-object v0

    .line 215
    :cond_34
    :try_start_34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Response without entity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    .line 218
    :catchall_3c
    move-exception v0

    iget-object v1, p0, Laae;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    throw v0
.end method

.method private a()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Laae;->a:Lld;

    if-nez v1, :cond_6

    .line 199
    :cond_5
    :goto_5
    return-object v0

    .line 184
    :cond_6
    iget-object v1, p0, Laae;->a:LRU;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://docs.google.com/feeds/default/private/full/document:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laae;->a:Lld;

    iget-object v3, v3, Lld;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laae;->a:Lld;

    iget-object v3, v3, Lld;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, LRU;->a(Ljava/lang/String;Ljava/lang/String;)LSs;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, LSs;->i()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 195
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    const-string v1, "sz"

    const-string v2, "s500"

    invoke-static {v0, v1, v2}, Laak;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private b()V
    .registers 4

    .prologue
    .line 151
    invoke-direct {p0}, Laae;->a()Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-boolean v1, p0, Laae;->a:Z

    if-eqz v1, :cond_9

    .line 178
    :cond_8
    :goto_8
    return-void

    .line 156
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This document has no thumbnailUri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_17
    invoke-direct {p0, v0}, Laae;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    iget-boolean v1, p0, Laae;->a:Z

    if-nez v1, :cond_8

    .line 165
    if-nez v0, :cond_29

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The server returns a null thumbnail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_29
    invoke-static {v0}, LXs;->a(Landroid/graphics/Bitmap;)LXs;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, LXs;->a()LXu;

    move-result-object v1

    iget-object v2, p0, Laae;->a:LXu;

    invoke-static {v1, v2}, LXs;->a(LXu;LXu;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 173
    iget-object v1, p0, Laae;->a:LXu;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, LXs;->a(LXu;I)LXs;

    .line 177
    :goto_3f
    invoke-virtual {v0}, LXs;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Laae;->a:Landroid/graphics/Bitmap;

    goto :goto_8

    .line 175
    :cond_46
    iget-object v1, p0, Laae;->a:LXu;

    invoke-virtual {v0, v1}, LXs;->a(LXu;)LXs;

    goto :goto_3f
.end method

.method private b(Lld;LXu;Laad;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Laae;->a:Lld;

    .line 97
    iput-object p2, p0, Laae;->a:LXu;

    .line 98
    iput-object p3, p0, Laae;->a:Laad;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Laae;->a:Landroid/graphics/Bitmap;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Laae;->a:Z

    .line 102
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Laae;->a:Z

    .line 93
    return-void
.end method

.method public a(Lld;LXu;Laad;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Laae;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ThumbnailFetcher is busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Laae;->b(Lld;LXu;Laad;)V

    .line 76
    new-instance v0, Laaf;

    invoke-direct {v0, p0}, Laaf;-><init>(Laae;)V

    iput-object v0, p0, Laae;->a:Ldd;

    .line 82
    iget-object v0, p0, Laae;->a:Ldd;

    invoke-virtual {v0}, Ldd;->start()V

    .line 83
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Laae;->a:Ldd;

    if-eqz v0, :cond_e

    iget-object v0, p0, Laae;->a:Ldd;

    invoke-virtual {v0}, Ldd;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public run()V
    .registers 3

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 109
    :try_start_1
    invoke-direct {p0}, Laae;->b()V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_4} :catch_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_2c
    .catch Lasn; {:try_start_1 .. :try_end_4} :catch_32
    .catch LarL; {:try_start_1 .. :try_end_4} :catch_38
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_4} :catch_3e
    .catch LJi; {:try_start_1 .. :try_end_4} :catch_44
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_4} :catch_4a
    .catch LJk; {:try_start_1 .. :try_end_4} :catch_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_56

    .line 134
    :goto_4
    iget-boolean v1, p0, Laae;->a:Z

    if-nez v1, :cond_25

    iget-object v1, p0, Laae;->a:Laad;

    if-eqz v1, :cond_25

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Laae;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_18

    .line 136
    const-string v0, "Fail to fetch/process the thumbnail for unknown reason"

    .line 139
    :cond_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 140
    iget-object v0, p0, Laae;->a:Laad;

    iget-object v1, p0, Laae;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Laad;->a(Landroid/graphics/Bitmap;)V

    .line 146
    :cond_25
    :goto_25
    return-void

    .line 110
    :catch_26
    move-exception v0

    .line 111
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 112
    :catch_2c
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 114
    :catch_32
    move-exception v0

    .line 115
    invoke-virtual {v0}, Lasn;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 116
    :catch_38
    move-exception v0

    .line 117
    invoke-virtual {v0}, LarL;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 118
    :catch_3e
    move-exception v0

    .line 119
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 120
    :catch_44
    move-exception v0

    .line 121
    invoke-virtual {v0}, LJi;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 122
    :catch_4a
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 124
    :catch_50
    move-exception v0

    .line 125
    invoke-virtual {v0}, LJk;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 126
    :catch_56
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 142
    :cond_5c
    const-string v1, "thumbnail"

    invoke-static {v1, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Laae;->a:Laad;

    invoke-interface {v1, v0}, Laad;->a(Ljava/lang/String;)V

    goto :goto_25
.end method
