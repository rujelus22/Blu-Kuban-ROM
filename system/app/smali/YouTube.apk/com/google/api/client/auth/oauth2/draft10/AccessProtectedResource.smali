.class public Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/i;
.implements Lcom/google/api/client/http/o;
.implements Lcom/google/api/client/http/s;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/util/EnumSet;


# instance fields
.field private final c:Ljava/util/concurrent/locks/Lock;

.field private d:Ljava/lang/String;

.field private final e:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

.field private final f:Lcom/google/api/client/http/r;

.field private final g:Lcom/google/api/client/json/c;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 88
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->a:Ljava/util/logging/Logger;

    .line 117
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    sget-object v2, Lcom/google/api/client/http/HttpMethod;->DELETE:Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->b:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    .line 157
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->d:Ljava/lang/String;

    .line 158
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->e:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    .line 159
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->f:Lcom/google/api/client/http/r;

    .line 160
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->g:Lcom/google/api/client/json/c;

    .line 161
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->h:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->i:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->j:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->k:Ljava/lang/String;

    .line 165
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 203
    :try_start_5
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->d:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 205
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private h()Z
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 275
    :try_start_5
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->f()Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/api/client/http/r;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->f:Lcom/google/api/client/http/r;

    return-object v0
.end method

.method public final a(Lcom/google/api/client/http/l;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/l;

    .line 283
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/l;

    .line 284
    return-void
.end method

.method protected final a(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)Z
    .registers 4
    .parameter

    .prologue
    .line 407
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->a()Lcom/google/api/client/auth/oauth2/draft10/c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/draft10/c;->accessToken:Ljava/lang/String;
    :try_end_6
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_6} :catch_16

    .line 413
    :goto_6
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_b
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->d:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_19

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 414
    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_15
    return v0

    .line 411
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6

    .line 413
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 414
    :cond_20
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final a(Lcom/google/api/client/http/l;Lcom/google/api/client/http/p;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p2}, Lcom/google/api/client/http/p;->d()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_86

    .line 345
    :try_start_a
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_f
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_a .. :try_end_f} :catch_7c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_88

    .line 348
    :try_start_f
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->d:Ljava/lang/String;

    sget-object v3, Lcom/google/api/client/auth/oauth2/draft10/a;->a:[I

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->e:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v4}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_94

    invoke-static {p1}, Lcom/google/api/client/http/w;->a(Lcom/google/api/client/http/l;)Lcom/google/api/client/http/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/http/w;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/api/client/util/i;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "oauth_token"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6e

    :cond_32
    :goto_32
    invoke-static {v2, v0}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->h()Z
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_75

    move-result v0

    if-eqz v0, :cond_73

    :cond_3e
    const/4 v0, 0x1

    .line 351
    :goto_3f
    :try_start_3f
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_44
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_3f .. :try_end_44} :catch_7c
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_88

    .line 360
    :goto_44
    return v0

    .line 348
    :pswitch_45
    :try_start_45
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->e()Lcom/google/api/client/http/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    const-string v4, "OAuth "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :pswitch_5d
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->c()Lcom/google/api/client/http/g;

    move-result-object v3

    const-string v4, "oauth_token"

    invoke-virtual {v3, v4}, Lcom/google/api/client/http/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_6e
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_45 .. :try_end_71} :catchall_75

    move-result-object v0

    goto :goto_32

    :cond_73
    move v0, v1

    goto :goto_3f

    .line 351
    :catchall_75
    move-exception v0

    :try_start_76
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_7c
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_76 .. :try_end_7c} :catch_7c
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7c} :catch_88

    .line 353
    :catch_7c
    move-exception v0

    .line 354
    :try_start_7d
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_86} :catch_88

    :cond_86
    :goto_86
    move v0, v1

    .line 360
    goto :goto_44

    .line 356
    :catch_88
    move-exception v0

    .line 357
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_86

    .line 348
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_45
        :pswitch_5d
    .end packed-switch
.end method

.method public final b()Lcom/google/api/client/json/c;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->g:Lcom/google/api/client/json/c;

    return-object v0
.end method

.method public final b(Lcom/google/api/client/http/l;)V
    .registers 8
    .parameter

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->g()Ljava/lang/String;

    move-result-object v0

    .line 295
    if-nez v0, :cond_7

    .line 312
    :goto_6
    return-void

    .line 298
    :cond_7
    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/a;->a:[I

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->e:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v2}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_60

    goto :goto_6

    .line 300
    :pswitch_15
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->e()Lcom/google/api/client/http/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OAuth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/j;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 303
    :pswitch_2c
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->c()Lcom/google/api/client/http/g;

    move-result-object v1

    const-string v2, "oauth_token"

    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/g;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 306
    :pswitch_36
    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->b:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/google/api/client/http/l;->b()Lcom/google/api/client/http/HttpMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "expected one of these HTTP methods: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->b:Ljava/util/EnumSet;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-static {p1}, Lcom/google/api/client/http/w;->a(Lcom/google/api/client/http/l;)Lcom/google/api/client/http/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/w;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/i;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 309
    const-string v2, "oauth_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 298
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_15
        :pswitch_2c
        :pswitch_36
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Z
    .registers 8

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->k:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 382
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/b;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->f:Lcom/google/api/client/http/r;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->g:Lcom/google/api/client/json/c;

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->k:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/auth/oauth2/draft10/b;-><init>(Lcom/google/api/client/http/r;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->a(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)Z

    move-result v0

    .line 390
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
