.class final Lcom/google/android/youtube/app/remote/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/l;

.field final synthetic b:Lcom/google/android/youtube/app/remote/v;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/v;Lcom/google/android/youtube/core/async/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/y;->a:Lcom/google/android/youtube/core/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    monitor-enter v1

    .line 106
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->b(Lcom/google/android/youtube/app/remote/v;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/remote/v;->a(Lcom/google/android/youtube/app/remote/v;Z)Z

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/v;->c(Lcom/google/android/youtube/app/remote/v;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/remote/v;->a(Lcom/google/android/youtube/app/remote/v;Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_62

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen;

    .line 114
    invoke-virtual {v0}, Lcom/google/android/ytremote/model/CloudScreen;->getAccessType()Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    move-result-object v3

    sget-object v4, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->PERMANENT:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/v;->e(Lcom/google/android/youtube/app/remote/v;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/CloudScreen;->getScreenId()Lcom/google/android/ytremote/model/ScreenId;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 116
    invoke-virtual {v0}, Lcom/google/android/ytremote/model/CloudScreen;->getScreenId()Lcom/google/android/ytremote/model/ScreenId;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 110
    :catchall_62
    move-exception v0

    monitor-exit v1

    throw v0

    .line 120
    :cond_65
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->e(Lcom/google/android/youtube/app/remote/v;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/v;->f(Lcom/google/android/youtube/app/remote/v;)Lcom/google/android/ytremote/backend/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/ytremote/backend/a/a;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_87
    :goto_87
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/ytremote/model/CloudScreen;

    .line 124
    invoke-virtual {v1}, Lcom/google/android/ytremote/model/CloudScreen;->getAccessType()Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    move-result-object v0

    sget-object v4, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->PERMANENT:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    if-ne v0, v4, :cond_c4

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->e(Lcom/google/android/youtube/app/remote/v;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/ytremote/model/CloudScreen;->getScreenId()Lcom/google/android/ytremote/model/ScreenId;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->e(Lcom/google/android/youtube/app/remote/v;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/ytremote/model/CloudScreen;->getScreenId()Lcom/google/android/ytremote/model/ScreenId;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/LoungeToken;

    invoke-virtual {v1, v0}, Lcom/google/android/ytremote/model/CloudScreen;->withLoungeToken(Lcom/google/android/ytremote/model/LoungeToken;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 130
    :cond_c4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 134
    :cond_c8
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/y;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->g(Lcom/google/android/youtube/app/remote/v;)Lcom/google/android/ytremote/backend/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/ytremote/backend/a/d;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_db
    :goto_db
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen;

    .line 139
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 140
    new-instance v4, Lcom/google/android/youtube/app/remote/bb;

    invoke-direct {v4, v0}, Lcom/google/android/youtube/app/remote/bb;-><init>(Lcom/google/android/ytremote/model/CloudScreen;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_db

    .line 144
    :cond_f6
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/y;->a:Lcom/google/android/youtube/core/async/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    return-void
.end method
