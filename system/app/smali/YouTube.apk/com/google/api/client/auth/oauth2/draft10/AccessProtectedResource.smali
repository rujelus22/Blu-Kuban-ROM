.class public Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/h;
.implements Lcom/google/api/client/http/n;
.implements Lcom/google/api/client/http/q;


# static fields
.field static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/util/EnumSet;


# instance fields
.field private final c:Ljava/util/concurrent/locks/Lock;

.field private d:Ljava/lang/String;

.field private final e:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

.field private final f:Lcom/google/api/client/http/p;

.field private final g:Lcom/google/api/client/json/c;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 83
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->a:Ljava/util/logging/Logger;

    .line 112
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

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    .line 150
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->d:Ljava/lang/String;

    .line 151
    invoke-static {p2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->e:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    .line 152
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->f:Lcom/google/api/client/http/p;

    .line 153
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->g:Lcom/google/api/client/json/c;

    .line 154
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->h:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->i:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->j:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->k:Ljava/lang/String;

    .line 158
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 195
    :try_start_5
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->d:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 197
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
    .line 265
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 267
    :try_start_5
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->f()Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result v0

    .line 269
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
.method public final a()Lcom/google/api/client/http/p;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->f:Lcom/google/api/client/http/p;

    return-object v0
.end method

.method public final a(Lcom/google/api/client/http/k;)V
    .registers 2
    .parameter

    .prologue
    .line 274
    iput-object p0, p1, Lcom/google/api/client/http/k;->a:Lcom/google/api/client/http/h;

    .line 275
    iput-object p0, p1, Lcom/google/api/client/http/k;->l:Lcom/google/api/client/http/q;

    .line 276
    return-void
.end method

.method protected final a(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)Z
    .registers 4
    .parameter

    .prologue
    .line 413
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->a()Lcom/google/api/client/auth/oauth2/draft10/c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/draft10/c;->accessToken:Ljava/lang/String;
    :try_end_6
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_6} :catch_16

    .line 421
    :goto_6
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_b
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->d:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_21

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 422
    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_15
    return v0

    .line 414
    :catch_16
    move-exception v0

    move-object v1, v0

    .line 417
    const/4 v0, 0x0

    .line 419
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/o;->b()V

    goto :goto_6

    .line 421
    :catchall_21
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 422
    :cond_28
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final a(Lcom/google/api/client/http/k;Lcom/google/api/client/http/o;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 348
    iget v0, p2, Lcom/google/api/client/http/o;->e:I

    const/16 v3, 0x191

    if-ne v0, v3, :cond_8a

    .line 351
    :try_start_8
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_d
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_8 .. :try_end_d} :catch_7c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_8c

    .line 354
    :try_start_d
    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/a;->a:[I

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->e:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v4}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_98

    iget-object v0, p1, Lcom/google/api/client/http/k;->f:Lcom/google/api/client/http/g;

    check-cast v0, Lcom/google/api/client/http/u;

    iget-object v0, v0, Lcom/google/api/client/http/u;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/client/util/p;

    const-string v4, "oauth_token"

    invoke-virtual {v0, v4}, Lcom/google/api/client/util/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6e

    move-object v0, v2

    :goto_2d
    invoke-static {v3, v0}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->h()Z
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_75

    move-result v0

    if-eqz v0, :cond_73

    :cond_39
    const/4 v0, 0x1

    .line 357
    :goto_3a
    :try_start_3a
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3f
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_3a .. :try_end_3f} :catch_7c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_8c

    .line 366
    :goto_3f
    return v0

    .line 354
    :pswitch_40
    :try_start_40
    iget-object v0, p1, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    invoke-virtual {v0}, Lcom/google/api/client/http/i;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    const-string v4, "OAuth "

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string v2, "OAuth "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_5b
    move-object v0, v2

    goto :goto_2d

    :pswitch_5d
    iget-object v0, p1, Lcom/google/api/client/http/k;->i:Lcom/google/api/client/http/f;

    const-string v4, "oauth_token"

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_69

    move-object v0, v2

    goto :goto_2d

    :cond_69
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_6e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_40 .. :try_end_71} :catchall_75

    move-result-object v0

    goto :goto_2d

    :cond_73
    move v0, v1

    goto :goto_3a

    .line 357
    :catchall_75
    move-exception v0

    :try_start_76
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_7c
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_76 .. :try_end_7c} :catch_7c
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7c} :catch_8c

    .line 359
    :catch_7c
    move-exception v0

    .line 360
    :try_start_7d
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8a} :catch_8c

    :cond_8a
    :goto_8a
    move v0, v1

    .line 366
    goto :goto_3f

    .line 362
    :catch_8c
    move-exception v0

    .line 363
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_8a

    .line 354
    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_40
        :pswitch_5d
    .end packed-switch
.end method

.method public final b()Lcom/google/api/client/json/c;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->g:Lcom/google/api/client/json/c;

    return-object v0
.end method

.method public final b(Lcom/google/api/client/http/k;)V
    .registers 8
    .parameter

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->g()Ljava/lang/String;

    move-result-object v2

    .line 287
    if-nez v2, :cond_7

    .line 315
    :goto_6
    return-void

    .line 290
    :cond_7
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/a;->a:[I

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->e:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_70

    goto :goto_6

    .line 292
    :pswitch_15
    iget-object v0, p1, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAuth "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/i;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 295
    :pswitch_2e
    iget-object v0, p1, Lcom/google/api/client/http/k;->i:Lcom/google/api/client/http/f;

    const-string v1, "oauth_token"

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/f;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 298
    :pswitch_36
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->b:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/google/api/client/http/k;->h:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "expected one of these HTTP methods: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->b:Ljava/util/EnumSet;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v0, p1, Lcom/google/api/client/http/k;->f:Lcom/google/api/client/http/g;

    check-cast v0, Lcom/google/api/client/http/u;

    .line 302
    if-nez v0, :cond_6d

    .line 303
    new-instance v0, Lcom/google/api/client/http/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/api/client/http/u;-><init>(Ljava/lang/Object;)V

    .line 304
    iput-object v0, p1, Lcom/google/api/client/http/k;->f:Lcom/google/api/client/http/g;

    move-object v1, v0

    .line 307
    :goto_5a
    iget-object v0, v1, Lcom/google/api/client/http/u;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/client/util/p;

    .line 308
    if-nez v0, :cond_67

    .line 309
    new-instance v0, Lcom/google/api/client/util/p;

    invoke-direct {v0}, Lcom/google/api/client/util/p;-><init>()V

    .line 310
    iput-object v0, v1, Lcom/google/api/client/http/u;->b:Ljava/lang/Object;

    .line 312
    :cond_67
    const-string v1, "oauth_token"

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6d
    move-object v1, v0

    goto :goto_5a

    .line 290
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_15
        :pswitch_2e
        :pswitch_36
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Z
    .registers 8

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->k:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 388
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/b;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->f:Lcom/google/api/client/http/p;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->g:Lcom/google/api/client/json/c;

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->k:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/auth/oauth2/draft10/b;-><init>(Lcom/google/api/client/http/p;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->a(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)Z

    move-result v0

    .line 396
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
