.class public LII;
.super Ljava/lang/Object;
.source "AuthTokenManagerImpl.java"

# interfaces
.implements LIG;


# annotations
.annotation runtime LanN;
.end annotation


# instance fields
.field private final a:LID;

.field private final a:LJH;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LIK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LID;LJH;)V
    .registers 4
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LII;->a:Ljava/util/Map;

    .line 152
    iput-object p1, p0, LII;->a:LID;

    .line 153
    iput-object p2, p0, LII;->a:LJH;

    .line 154
    return-void
.end method

.method static synthetic a(LII;)LID;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, LII;->a:LID;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)LIK;
    .registers 4
    .parameter

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LII;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIK;

    .line 186
    if-nez v0, :cond_15

    .line 187
    new-instance v0, LIK;

    invoke-direct {v0, p0, p1}, LIK;-><init>(LII;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, LII;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 190
    :cond_15
    monitor-exit p0

    return-object v0

    .line 185
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    const-string v0, "https://www.google.com/accounts/TokenAuth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 243
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, LII;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 245
    const-string v2, "auth"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 246
    const-string v1, "continue"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 247
    if-eqz p3, :cond_20

    .line 248
    const-string v1, "service"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 250
    :cond_20
    const-string v1, "source"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    if-lez p2, :cond_76

    :goto_4
    invoke-static {v0}, LafQ;->a(Z)V

    .line 198
    iget-object v0, p0, LII;->a:LID;

    invoke-interface {v0}, LID;->a()V

    .line 200
    :goto_c
    add-int/lit8 v1, v1, 0x1

    if-gt v1, p2, :cond_c9

    .line 201
    :try_start_10
    const-string v0, "LSID"

    invoke-virtual {p0, p1, v0}, LII;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v2, "SID"

    invoke-virtual {p0, p1, v2}, LII;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "https://www.google.com/accounts/IssueAuthToken"

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "SID"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "LSID"

    invoke-direct {v2, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "service"

    const-string v5, "gaia"

    invoke-direct {v0, v2, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 210
    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_50
    .catchall {:try_start_10 .. :try_end_50} :catchall_b9

    .line 212
    :try_start_50
    iget-object v0, p0, LII;->a:LJH;

    invoke-interface {v0, v3}, LJH;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 214
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_61} :catch_c0

    move-result-object v0

    .line 215
    if-nez v0, :cond_78

    const/4 v0, 0x0

    .line 216
    :goto_65
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7d

    if-eqz v0, :cond_7d

    .line 229
    :try_start_6b
    iget-object v1, p0, LII;->a:LJH;

    invoke-interface {v1}, LJH;->b()V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_b9

    .line 234
    iget-object v1, p0, LII;->a:LID;

    invoke-interface {v1}, LID;->b()V

    return-object v0

    :cond_76
    move v0, v1

    .line 196
    goto :goto_4

    .line 215
    :cond_78
    :try_start_78
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    .line 219
    :cond_7d
    const-string v3, "SID"

    invoke-virtual {p0, p1, v3}, LII;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v3, "LSID"

    invoke-virtual {p0, p1, v3}, LII;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v3, "AuthTokenManagerImpl"

    const-string v4, "getUberAuthToken attempt #%d/%d: statusCode %d, entityString=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, LII;->a:LJH;

    invoke-interface {v0}, LJH;->a()V
    :try_end_b2
    .catchall {:try_start_78 .. :try_end_b2} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_b2} :catch_c0

    .line 229
    :try_start_b2
    iget-object v0, p0, LII;->a:LJH;

    invoke-interface {v0}, LJH;->b()V
    :try_end_b7
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_b9

    goto/16 :goto_c

    .line 234
    :catchall_b9
    move-exception v0

    iget-object v1, p0, LII;->a:LID;

    invoke-interface {v1}, LID;->b()V

    throw v0

    .line 226
    :catch_c0
    move-exception v0

    .line 227
    :try_start_c1
    throw v0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c2

    .line 229
    :catchall_c2
    move-exception v0

    :try_start_c3
    iget-object v1, p0, LII;->a:LJH;

    invoke-interface {v1}, LJH;->b()V

    throw v0

    .line 232
    :cond_c9
    new-instance v0, LJi;

    invoke-direct {v0}, LJi;-><init>()V

    throw v0
    :try_end_cf
    .catchall {:try_start_c3 .. :try_end_cf} :catchall_b9
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, LII;->a(Ljava/lang/String;)LIK;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p2}, LIK;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, LII;->a:LID;

    invoke-interface {v0}, LID;->a()V

    .line 258
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, LII;->a:LID;

    invoke-interface {v0}, LID;->a()V

    .line 270
    :try_start_5
    const-string v0, "LSID"

    invoke-virtual {p0, p1, v0}, LII;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "SID"

    invoke-virtual {p0, p1, v0}, LII;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "LSID"

    invoke-virtual {p0, p1, v0}, LII;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "SID"

    invoke-virtual {p0, p1, v0}, LII;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1f

    .line 276
    iget-object v0, p0, LII;->a:LID;

    invoke-interface {v0}, LID;->b()V

    .line 278
    return-void

    .line 276
    :catchall_1f
    move-exception v0

    iget-object v1, p0, LII;->a:LID;

    invoke-interface {v1}, LID;->b()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1}, LII;->a(Ljava/lang/String;)LIK;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p2}, LIK;->a(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;LIH;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, LII;->a:LID;

    invoke-interface {v0}, LID;->a()V

    .line 284
    iget-object v0, p0, LII;->a:LID;

    new-instance v1, LIJ;

    invoke-direct {v1, p0, p3}, LIJ;-><init>(LII;LIH;)V

    invoke-interface {v0, p1, p2, v1}, LID;->a(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;)V

    .line 313
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, LII;->a:LID;

    invoke-interface {v0}, LID;->b()V

    .line 263
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, LII;->a(Ljava/lang/String;)LIK;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p2}, LIK;->b(Ljava/lang/String;)V

    .line 160
    return-void
.end method
