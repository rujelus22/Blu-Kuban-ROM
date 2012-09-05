.class public Lcom/google/android/apps/pos/network/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/google/api/client/http/m;

.field private final d:Lcom/google/api/client/json/c;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Lcom/google/api/client/a/b;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 39
    const-class v0, Lcom/google/android/apps/pos/network/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/pos/network/f;->a:Ljava/lang/String;

    .line 53
    const-string v0, "PosFrontend"

    const-string v1, "https://www.googleapis.com"

    invoke-static {v0, v1}, Lcom/google/android/apps/pos/network/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/pos/network/f;->b:Ljava/lang/String;

    .line 54
    const-string v0, "https://www.googleapis.com"

    sget-object v1, Lcom/google/android/apps/pos/network/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/google/android/apps/pos/network/f;->a:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 55
    sget-object v0, Lcom/google/android/apps/pos/network/f;->a:Ljava/lang/String;

    const-string v1, "Using custom POS base server: %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/apps/pos/network/f;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_38
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/p;Lcom/google/api/client/json/c;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 140
    sget-object v1, Lcom/google/android/apps/pos/network/f;->b:Ljava/lang/String;

    const-string v2, "/rpc"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/pos/network/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/p;Lcom/google/api/client/http/n;Lcom/google/api/client/json/c;)V

    .line 141
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/p;Lcom/google/api/client/http/n;Lcom/google/api/client/json/c;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, "native:android_app"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->j:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/google/api/client/a/b;

    invoke-direct {v0}, Lcom/google/api/client/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->l:Lcom/google/api/client/a/b;

    .line 137
    const-string v0, "https://www.google.com"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->o:Ljava/lang/String;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->e:Ljava/lang/String;

    .line 154
    invoke-static {p5}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/c;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->d:Lcom/google/api/client/json/c;

    .line 155
    invoke-static {p3}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->a(Lcom/google/api/client/http/n;)Lcom/google/api/client/http/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/f;->c:Lcom/google/api/client/http/m;

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/t;)Lcom/google/android/apps/pos/network/a;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 37
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

    check-cast v0, Lcom/google/android/apps/pos/network/a;

    return-object v0
.end method

.method private a(Lcom/google/api/client/http/o;)Lcom/google/api/client/json/e;
    .registers 4
    .parameter

    .prologue
    .line 1153
    invoke-virtual {p1}, Lcom/google/api/client/http/o;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 1155
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->d:Lcom/google/api/client/json/c;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/c;->a(Ljava/io/InputStream;)Lcom/google/api/client/json/e;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    .line 1160
    return-object v0

    :catchall_e
    move-exception v0

    if-eqz v1, :cond_14

    .line 1161
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

    .line 1104
    array-length v3, p1

    move v0, v2

    :goto_5
    if-ge v0, v3, :cond_26

    aget-object v4, p1, v0

    .line 1105
    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->j:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 1106
    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/pos/network/t;->a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;

    .line 1108
    :cond_16
    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->k:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 1109
    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/pos/network/t;->b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;

    .line 1104
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1114
    :cond_26
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    const-string v3, ""

    iget-object v4, p0, Lcom/google/android/apps/pos/network/f;->e:Ljava/lang/String;

    invoke-static {v4, v3, v8}, Lcom/google/api/client/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/pos/network/f;->f:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/api/client/a/a;->key:Ljava/lang/String;

    const-string v4, "json"

    iput-object v4, v3, Lcom/google/api/client/a/a;->alt:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/pos/network/f;->g:Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/google/api/client/a/a;->prettyprint:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/google/android/apps/pos/network/f;->c:Lcom/google/api/client/http/m;

    invoke-virtual {v4, v0, v3, v8}, Lcom/google/api/client/http/m;->a(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/f;Lcom/google/api/client/http/g;)Lcom/google/api/client/http/k;

    move-result-object v3

    iget-object v4, v3, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    const-string v0, "G+ SDK/1.0.0;"

    iget-object v5, p0, Lcom/google/android/apps/pos/network/f;->h:Ljava/lang/String;

    if-eqz v5, :cond_59

    const-string v5, "%s; %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/pos/network/f;->h:Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_59
    invoke-virtual {v4, v0}, Lcom/google/api/client/http/i;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->m:Ljava/lang/String;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->n:Ljava/lang/String;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->o:Ljava/lang/String;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_ac

    move v0, v1

    :goto_6d
    if-eqz v0, :cond_ae

    const-string v0, "X-GFE-SSL"

    const-string v1, "yes"

    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/http/i;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cookie"

    iget-object v1, p0, Lcom/google/android/apps/pos/network/f;->m:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/http/i;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OriginToken"

    iget-object v1, p0, Lcom/google/android/apps/pos/network/f;->n:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/http/i;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X-Origin"

    iget-object v1, p0, Lcom/google/android/apps/pos/network/f;->o:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/http/i;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->l:Lcom/google/api/client/a/b;

    invoke-virtual {v0, v3}, Lcom/google/api/client/a/b;->b(Lcom/google/api/client/http/k;)V

    .line 1115
    new-instance v0, Lcom/google/api/client/http/c/a;

    iget-object v1, p0, Lcom/google/android/apps/pos/network/f;->d:Lcom/google/api/client/json/c;

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/c/a;-><init>(Lcom/google/api/client/json/c;Ljava/lang/Object;)V

    iput-object v0, v3, Lcom/google/api/client/http/k;->f:Lcom/google/api/client/http/g;

    .line 1118
    invoke-virtual {v3}, Lcom/google/api/client/http/k;->a()Lcom/google/api/client/http/o;

    move-result-object v0

    .line 1119
    invoke-direct {p0, v0}, Lcom/google/android/apps/pos/network/f;->a(Lcom/google/api/client/http/o;)Lcom/google/api/client/json/e;

    move-result-object v0

    .line 1120
    const-class v1, Ljava/util/ArrayList;

    const-class v2, Lcom/google/android/apps/pos/network/a;

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/api/client/json/e;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/a;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_ac
    move v0, v2

    .line 1114
    goto :goto_6d

    :cond_ae
    iget-object v0, p0, Lcom/google/android/apps/pos/network/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_8b

    new-instance v0, Lcom/google/api/client/a/a/a/a/a;

    iget-object v1, p0, Lcom/google/android/apps/pos/network/f;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/api/client/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/api/client/a/a/a/a/a;->b(Lcom/google/api/client/http/k;)V

    goto :goto_8b
.end method

.method static synthetic b(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/t;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/f;->a([Lcom/google/android/apps/pos/network/t;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Lcom/google/android/apps/pos/network/h;
    .registers 6
    .parameter

    .prologue
    .line 723
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    array-length v0, p1

    new-array v1, v0, [Lcom/google/android/apps/pos/network/l;

    .line 725
    const/4 v0, 0x0

    :goto_7
    array-length v2, p1

    if-ge v0, v2, :cond_16

    .line 726
    new-instance v2, Lcom/google/android/apps/pos/network/l;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/google/android/apps/pos/network/l;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 728
    :cond_16
    new-instance v0, Lcom/google/android/apps/pos/network/h;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/pos/network/h;-><init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/l;)V

    return-object v0
.end method

.method public final a(Ljava/util/Map;)Lcom/google/android/apps/pos/network/i;
    .registers 8
    .parameter

    .prologue
    .line 1006
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Lcom/google/android/apps/pos/network/q;

    .line 1008
    const/4 v0, 0x0

    .line 1009
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1010
    new-instance v5, Lcom/google/android/apps/pos/network/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/google/android/apps/pos/network/q;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v2

    .line 1011
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1012
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1013
    aget-object v1, v3, v2

    invoke-virtual {v1, v0}, Lcom/google/android/apps/pos/network/q;->c(Ljava/lang/String;)Lcom/google/android/apps/pos/network/q;

    .line 1015
    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1016
    goto :goto_13

    .line 1017
    :cond_41
    new-instance v0, Lcom/google/android/apps/pos/network/i;

    invoke-direct {v0, p0, v3}, Lcom/google/android/apps/pos/network/i;-><init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/q;)V

    return-object v0
.end method

.method public final a()Lcom/google/android/apps/pos/network/n;
    .registers 2

    .prologue
    .line 632
    new-instance v0, Lcom/google/android/apps/pos/network/n;

    invoke-direct {v0, p0}, Lcom/google/android/apps/pos/network/n;-><init>(Lcom/google/android/apps/pos/network/f;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/apps/pos/network/f;->f:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public final b([Ljava/lang/String;)Lcom/google/android/apps/pos/network/g;
    .registers 6
    .parameter

    .prologue
    .line 830
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    array-length v0, p1

    new-array v1, v0, [Lcom/google/android/apps/pos/network/j;

    .line 832
    const/4 v0, 0x0

    :goto_7
    array-length v2, p1

    if-ge v0, v2, :cond_16

    .line 833
    new-instance v2, Lcom/google/android/apps/pos/network/j;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/google/android/apps/pos/network/j;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 835
    :cond_16
    new-instance v0, Lcom/google/android/apps/pos/network/g;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/pos/network/g;-><init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/j;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/apps/pos/network/f;->i:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/apps/pos/network/f;->k:Ljava/lang/String;

    .line 230
    return-void
.end method
