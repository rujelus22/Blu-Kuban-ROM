.class public Lcom/google/android/apps/pos/network/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lcom/google/api/client/http/n;

.field private final e:Lcom/google/api/client/json/c;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final m:Lcom/google/api/client/googleapis/a;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    const-class v0, Lcom/google/android/apps/pos/network/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/pos/network/f;->a:Ljava/lang/String;

    .line 61
    const-string v0, "PosFrontend"

    const-string v1, "https://www.googleapis.com"

    invoke-static {v0, v1}, Lcom/google/android/apps/pos/network/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/pos/network/f;->b:Ljava/lang/String;

    .line 62
    const-string v0, "https://www.googleapis.com"

    sget-object v1, Lcom/google/android/apps/pos/network/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/google/android/apps/pos/network/f;->a:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 64
    sget-object v0, Lcom/google/android/apps/pos/network/f;->a:Ljava/lang/String;

    const-string v1, "Using custom POS frontend server: %s "

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/google/android/apps/pos/network/f;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_38
    const-string v0, "PosBackend"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/apps/pos/network/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    sput-object v0, Lcom/google/android/apps/pos/network/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_67

    sget-object v0, Lcom/google/android/apps/pos/network/f;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/google/android/apps/pos/network/f;->a:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 69
    sget-object v0, Lcom/google/android/apps/pos/network/f;->a:Ljava/lang/String;

    const-string v1, "Using custom POS backend server: %s "

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/google/android/apps/pos/network/f;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_67
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/r;Lcom/google/api/client/json/c;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 154
    sget-object v1, Lcom/google/android/apps/pos/network/f;->b:Ljava/lang/String;

    const-string v2, "/rpc"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/pos/network/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/r;Lcom/google/api/client/http/o;Lcom/google/api/client/json/c;)V

    .line 155
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/r;Lcom/google/api/client/http/o;Lcom/google/api/client/json/c;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, "native:android_app"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->k:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/google/api/client/googleapis/a;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->m:Lcom/google/api/client/googleapis/a;

    .line 151
    const-string v0, "https://www.google.com"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->p:Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->f:Ljava/lang/String;

    .line 168
    invoke-static {p5}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/c;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->e:Lcom/google/api/client/json/c;

    .line 169
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/r;->a(Lcom/google/api/client/http/o;)Lcom/google/api/client/http/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->d:Lcom/google/api/client/http/n;

    .line 171
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/t;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/f;->a([Lcom/google/android/apps/pos/network/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected single BatchResponseItem result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    return-object v0
.end method

.method private a(Lcom/google/api/client/http/p;)Lcom/google/api/client/json/e;
    .registers 4
    .parameter

    .prologue
    .line 1204
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->f()Ljava/io/InputStream;

    move-result-object v1

    .line 1206
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->e:Lcom/google/api/client/json/c;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/c;->a(Ljava/io/InputStream;)Lcom/google/api/client/json/e;

    move-result-object v0

    .line 1207
    invoke-virtual {v0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    .line 1211
    return-object v0

    :catchall_e
    move-exception v0

    if-eqz v1, :cond_14

    .line 1212
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_14
    throw v0
.end method

.method private a([Lcom/google/android/apps/pos/network/t;)Ljava/util/List;
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1143
    array-length v3, p1

    move v0, v2

    :goto_5
    if-ge v0, v3, :cond_33

    aget-object v4, p1, v0

    .line 1144
    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->k:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 1145
    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/pos/network/t;->b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;

    .line 1147
    :cond_16
    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->l:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 1148
    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/pos/network/t;->d(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;

    .line 1150
    :cond_23
    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 1151
    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/pos/network/t;->c(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;

    .line 1143
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1156
    :cond_33
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "key"

    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->g:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "alt"

    const-string v5, "json"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "prettyprint"

    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->h:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "PosTrace"

    invoke-static {v4, v8}, Lcom/google/android/apps/pos/network/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_60

    const-string v5, "trace"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    new-instance v4, Lcom/google/api/client/http/g;

    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->f:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/api/client/http/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/google/api/client/http/g;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/google/android/apps/pos/network/f;->d:Lcom/google/api/client/http/n;

    invoke-virtual {v3, v0, v4, v8}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/g;Lcom/google/api/client/http/h;)Lcom/google/api/client/http/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/http/l;->e()Lcom/google/api/client/http/j;

    move-result-object v4

    const-string v0, "G+ SDK/1.0.0;"

    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->i:Ljava/lang/String;

    if-eqz v5, :cond_89

    const-string v5, "%s; %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/pos/network/f;->i:Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_89
    invoke-virtual {v4, v0}, Lcom/google/api/client/http/j;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/apps/pos/network/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_a1

    sget-object v0, Lcom/google/android/apps/pos/network/f;->c:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "X-Google-Backend-Override"

    sget-object v5, Lcom/google/android/apps/pos/network/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/api/client/http/j;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a1
    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->n:Ljava/lang/String;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->o:Ljava/lang/String;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_f2

    move v0, v1

    :goto_b2
    if-eqz v0, :cond_f4

    const-string v0, "X-GFE-SSL"

    const-string v1, "yes"

    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/http/j;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Cookie"

    iget-object v1, p0, Lcom/google/android/apps/pos/network/f;->n:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/http/j;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "OriginToken"

    iget-object v1, p0, Lcom/google/android/apps/pos/network/f;->o:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/http/j;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "X-Origin"

    iget-object v1, p0, Lcom/google/android/apps/pos/network/f;->p:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/http/j;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d0
    :goto_d0
    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->m:Lcom/google/api/client/googleapis/a;

    invoke-virtual {v0, v3}, Lcom/google/api/client/googleapis/a;->b(Lcom/google/api/client/http/l;)V

    .line 1157
    new-instance v0, Lcom/google/api/client/http/c/a;

    iget-object v1, p0, Lcom/google/android/apps/pos/network/f;->e:Lcom/google/api/client/json/c;

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/c/a;-><init>(Lcom/google/api/client/json/c;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/h;)Lcom/google/api/client/http/l;

    .line 1160
    invoke-virtual {v3}, Lcom/google/api/client/http/l;->h()Lcom/google/api/client/http/p;

    move-result-object v0

    .line 1161
    invoke-direct {p0, v0}, Lcom/google/android/apps/pos/network/f;->a(Lcom/google/api/client/http/p;)Lcom/google/api/client/json/e;

    move-result-object v0

    .line 1162
    const-class v1, Ljava/util/ArrayList;

    const-class v2, Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/api/client/json/e;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/a;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_f2
    move v0, v2

    .line 1156
    goto :goto_b2

    :cond_f4
    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->j:Ljava/lang/String;

    if-eqz v0, :cond_d0

    new-instance v0, Lcom/google/api/client/googleapis/auth/a/a/a;

    iget-object v1, p0, Lcom/google/android/apps/pos/network/f;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/auth/a/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/api/client/googleapis/auth/a/a/a;->b(Lcom/google/api/client/http/l;)V

    goto :goto_d0
.end method

.method static synthetic b(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/t;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/f;->a([Lcom/google/android/apps/pos/network/t;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Lcom/google/android/apps/pos/network/h;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 760
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    array-length v0, p1

    new-array v2, v0, [Lcom/google/android/apps/pos/network/l;

    move v0, v1

    .line 762
    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_1d

    .line 763
    new-instance v3, Lcom/google/android/apps/pos/network/l;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lcom/google/android/apps/pos/network/l;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/l;->a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/l;

    move-result-object v3

    aput-object v3, v2, v0

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 765
    :cond_1d
    new-instance v0, Lcom/google/android/apps/pos/network/h;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/apps/pos/network/h;-><init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/l;B)V

    return-object v0
.end method

.method public final a(Ljava/util/Map;)Lcom/google/android/apps/pos/network/i;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1045
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v4, v0, [Lcom/google/android/apps/pos/network/q;

    .line 1048
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1049
    new-instance v6, Lcom/google/android/apps/pos/network/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v1}, Lcom/google/android/apps/pos/network/q;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/google/android/apps/pos/network/q;->a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/q;

    move-result-object v1

    aput-object v1, v4, v2

    .line 1050
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1051
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 1052
    aget-object v1, v4, v2

    invoke-virtual {v1, v0}, Lcom/google/android/apps/pos/network/q;->e(Ljava/lang/String;)Lcom/google/android/apps/pos/network/q;

    .line 1054
    :cond_47
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1055
    goto :goto_13

    .line 1056
    :cond_4b
    new-instance v0, Lcom/google/android/apps/pos/network/i;

    invoke-direct {v0, p0, v4, v3}, Lcom/google/android/apps/pos/network/i;-><init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/q;B)V

    return-object v0
.end method

.method public final a()Lcom/google/android/apps/pos/network/n;
    .registers 3

    .prologue
    .line 668
    new-instance v0, Lcom/google/android/apps/pos/network/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/pos/network/n;-><init>(Lcom/google/android/apps/pos/network/f;B)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/pos/network/f;->g:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public final b([Ljava/lang/String;)Lcom/google/android/apps/pos/network/g;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 868
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    array-length v0, p1

    new-array v2, v0, [Lcom/google/android/apps/pos/network/j;

    move v0, v1

    .line 870
    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_1d

    .line 871
    new-instance v3, Lcom/google/android/apps/pos/network/j;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lcom/google/android/apps/pos/network/j;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/google/android/apps/pos/network/j;->a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/j;

    move-result-object v3

    aput-object v3, v2, v0

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 873
    :cond_1d
    new-instance v0, Lcom/google/android/apps/pos/network/g;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/apps/pos/network/g;-><init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/j;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/apps/pos/network/f;->j:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/apps/pos/network/f;->l:Ljava/lang/String;

    .line 244
    return-void
.end method
