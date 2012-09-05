.class final Lcom/google/android/youtube/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/g;

.field final synthetic b:Lcom/google/android/youtube/app/i;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/i;Lcom/google/android/youtube/core/async/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    iput-object p2, p0, Lcom/google/android/youtube/app/l;->a:Lcom/google/android/youtube/core/async/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    monitor-enter v1

    .line 96
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/app/i;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/app/i;Z)Z

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    iget-object v3, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v3}, Lcom/google/android/youtube/app/i;->b(Lcom/google/android/youtube/app/i;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/app/i;Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_5a

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c;

    .line 104
    iget-object v3, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v3}, Lcom/google/android/youtube/app/i;->d(Lcom/google/android/youtube/app/i;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->b()Lcom/google/android/a/e/b;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 105
    invoke-virtual {v0}, Lcom/google/android/a/e/c;->b()Lcom/google/android/a/e/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 100
    :catchall_5a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :cond_5d
    iget-object v0, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->d(Lcom/google/android/youtube/app/i;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v2}, Lcom/google/android/youtube/app/i;->e(Lcom/google/android/youtube/app/i;)Lcom/google/android/a/a/d/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/a/a/d/a;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->f(Lcom/google/android/youtube/app/i;)Lcom/google/android/a/a/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/i;->d(Lcom/google/android/youtube/app/i;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/d/c;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    .line 114
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_93
    :goto_93
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c;

    .line 116
    iget-object v1, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/i;->d(Lcom/google/android/youtube/app/i;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->b()Lcom/google/android/a/e/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 117
    iget-object v1, p0, Lcom/google/android/youtube/app/l;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/i;->d(Lcom/google/android/youtube/app/i;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->b()Lcom/google/android/a/e/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 121
    new-instance v2, Lcom/google/android/a/e/e;

    invoke-direct {v2, v0}, Lcom/google/android/a/e/e;-><init>(Lcom/google/android/a/e/c;)V

    invoke-virtual {v2, v1}, Lcom/google/android/a/e/e;->a(Ljava/lang/String;)Lcom/google/android/a/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/a/e/e;->a()Lcom/google/android/a/e/c;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 126
    :cond_e2
    iget-object v0, p0, Lcom/google/android/youtube/app/l;->a:Lcom/google/android/youtube/core/async/g;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    return-void
.end method
