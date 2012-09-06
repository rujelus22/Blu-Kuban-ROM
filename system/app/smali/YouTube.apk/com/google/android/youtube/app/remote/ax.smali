.class final Lcom/google/android/youtube/app/remote/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/at;

.field private final b:Lcom/google/android/ytremote/model/b;

.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/ytremote/model/b;Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-object p2, p0, Lcom/google/android/youtube/app/remote/ax;->b:Lcom/google/android/ytremote/model/b;

    .line 786
    iput-object p3, p0, Lcom/google/android/youtube/app/remote/ax;->c:Ljava/lang/String;

    .line 787
    iput-wide p4, p0, Lcom/google/android/youtube/app/remote/ax;->d:J

    .line 788
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/ytremote/model/b;Ljava/lang/String;JB)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 777
    invoke-direct/range {p0 .. p5}, Lcom/google/android/youtube/app/remote/ax;-><init>(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/ytremote/model/b;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/ax;)J
    .registers 3
    .parameter

    .prologue
    .line 777
    iget-wide v0, p0, Lcom/google/android/youtube/app/remote/ax;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/ax;Lcom/google/android/ytremote/model/b;Lcom/google/android/ytremote/model/CloudScreen;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->q(Lcom/google/android/youtube/app/remote/at;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->r(Lcom/google/android/youtube/app/remote/at;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/ytremote/model/b;->d()Lcom/google/android/ytremote/model/SsdpId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/ytremote/model/SsdpId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/ytremote/model/CloudScreen;->getScreenId()Lcom/google/android/ytremote/model/ScreenId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/ytremote/model/ScreenId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 793
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ax;->b:Lcom/google/android/ytremote/model/b;

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->q(Lcom/google/android/youtube/app/remote/at;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->q(Lcom/google/android/youtube/app/remote/at;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen;

    move-object v1, v0

    .line 794
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_c6

    .line 795
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->i(Lcom/google/android/youtube/app/remote/at;)Landroid/os/Handler;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->i(Lcom/google/android/youtube/app/remote/at;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    new-instance v0, Lcom/google/android/youtube/app/remote/aw;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ax;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/youtube/app/remote/ax;->d:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/remote/aw;-><init>(Lcom/google/android/ytremote/model/CloudScreen;Ljava/lang/String;JB)V

    invoke-static {v8, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 797
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->t(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/logic/b;

    move-result-object v0

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/ytremote/backend/logic/b;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_60

    move v5, v6

    :cond_60
    if-eqz v5, :cond_c6

    .line 804
    :goto_62
    return-void

    .line 793
    :cond_63
    invoke-virtual {v2}, Lcom/google/android/ytremote/model/b;->d()Lcom/google/android/ytremote/model/SsdpId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/SsdpId;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/at;->r(Lcom/google/android/youtube/app/remote/at;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    new-instance v3, Lcom/google/android/ytremote/model/ScreenId;

    iget-object v4, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v4}, Lcom/google/android/youtube/app/remote/at;->r(Lcom/google/android/youtube/app/remote/at;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, ""

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/ytremote/model/ScreenId;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->s(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/a/a;

    move-result-object v0

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/ytremote/backend/a/a;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/LoungeToken;

    if-nez v0, :cond_b2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to retrieve lounge token for screenId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_b2
    new-instance v1, Lcom/google/android/ytremote/model/CloudScreen;

    invoke-virtual {v2}, Lcom/google/android/ytremote/model/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Lcom/google/android/ytremote/model/CloudScreen;-><init>(Lcom/google/android/ytremote/model/ScreenId;Ljava/lang/String;Lcom/google/android/ytremote/model/LoungeToken;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->q(Lcom/google/android/youtube/app/remote/at;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1e

    .line 803
    :cond_c6
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ax;->b:Lcom/google/android/ytremote/model/b;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ax;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2, v6}, Lcom/google/android/youtube/app/remote/at;->c(Lcom/google/android/youtube/app/remote/at;Z)Z

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/at;->p(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/logic/c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/b;->a()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/app/remote/ay;

    invoke-direct {v4, p0, v1, v0}, Lcom/google/android/youtube/app/remote/ay;-><init>(Lcom/google/android/youtube/app/remote/ax;Ljava/lang/String;Lcom/google/android/ytremote/model/b;)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/ytremote/logic/c;->a(Landroid/net/Uri;Lcom/google/android/ytremote/logic/d;)V

    goto :goto_62
.end method
