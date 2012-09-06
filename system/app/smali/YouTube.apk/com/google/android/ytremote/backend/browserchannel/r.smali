.class public final Lcom/google/android/ytremote/backend/browserchannel/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/backend/browserchannel/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/Map;

.field private final f:Lcom/google/android/ytremote/backend/browserchannel/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/ytremote/backend/browserchannel/s;Ljava/util/Map;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->d:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->c:Ljava/lang/String;

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->b:I

    .line 40
    iput-object p4, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->a:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->f:Lcom/google/android/ytremote/backend/browserchannel/s;

    .line 42
    iput-object p6, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->e:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/ytremote/backend/model/a;)Lcom/google/android/ytremote/backend/browserchannel/a;
    .registers 12
    .parameter

    .prologue
    .line 48
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 49
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/google/android/ytremote/backend/model/a;->f()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 52
    const-string v0, "method"

    invoke-virtual {p1}, Lcom/google/android/ytremote/backend/model/a;->b()Lcom/google/android/ytremote/backend/model/Method;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/ytremote/backend/model/a;->g()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 55
    const-string v0, "params"

    invoke-virtual {p1}, Lcom/google/android/ytremote/backend/model/a;->c()Lcom/google/android/ytremote/backend/model/Params;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/ytremote/util/a;->a(Lcom/google/android/ytremote/backend/model/Params;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_34
    invoke-virtual {p1}, Lcom/google/android/ytremote/backend/model/a;->h()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 61
    const-string v0, "X-YouTube-LoungeId-Token"

    invoke-virtual {p1}, Lcom/google/android/ytremote/backend/model/a;->d()Lcom/google/android/ytremote/model/LoungeToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/ytremote/model/LoungeToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_47
    invoke-virtual {p1}, Lcom/google/android/ytremote/backend/model/a;->e()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 66
    const-string v0, "Authorization"

    invoke-virtual {p1}, Lcom/google/android/ytremote/backend/model/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_56
    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/a;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->d:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/google/net/async/x;->a()Lcom/google/net/async/p;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->c:Ljava/lang/String;

    .line 72
    iget v4, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->b:I

    .line 73
    iget-object v5, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->a:Ljava/lang/String;

    .line 74
    iget-object v6, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->f:Lcom/google/android/ytremote/backend/browserchannel/s;

    .line 76
    iget-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/r;->e:Ljava/util/Map;

    .line 69
    invoke-direct/range {v0 .. v9}, Lcom/google/android/ytremote/backend/browserchannel/a;-><init>(Landroid/content/Context;Lcom/google/net/async/p;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/ytremote/backend/browserchannel/s;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method
