.class final Lcom/google/android/youtube/app/remote/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/model/CloudScreen;

.field final synthetic b:Lcom/google/android/youtube/app/remote/v;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/v;Lcom/google/android/ytremote/model/CloudScreen;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/aa;->a:Lcom/google/android/ytremote/model/CloudScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v4, 0x5

    .line 223
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    monitor-enter v1

    .line 224
    :try_start_4
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->b(Lcom/google/android/youtube/app/remote/v;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/remote/v;->a(Lcom/google/android/youtube/app/remote/v;Z)Z

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->c(Lcom/google/android/youtube/app/remote/v;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "screenIds"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/v;->c(Lcom/google/android/youtube/app/remote/v;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/remote/v;->a(Lcom/google/android/youtube/app/remote/v;Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    :cond_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_c0

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->a:Lcom/google/android/ytremote/model/CloudScreen;

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/CloudScreen;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/remote/v;->a(Lcom/google/android/youtube/app/remote/v;Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 234
    :cond_4d
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/aa;->a:Lcom/google/android/ytremote/model/CloudScreen;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 235
    if-ltz v0, :cond_64

    .line 236
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 239
    :cond_64
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/aa;->a:Lcom/google/android/ytremote/model/CloudScreen;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_85

    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 245
    :cond_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_99
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen;

    .line 249
    invoke-virtual {v0}, Lcom/google/android/ytremote/model/CloudScreen;->getScreenId()Lcom/google/android/ytremote/model/ScreenId;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Lcom/google/android/ytremote/model/CloudScreen;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 230
    :catchall_c0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 253
    :cond_c3
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/aa;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->c(Lcom/google/android/youtube/app/remote/v;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "screenIds"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screenNames"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 256
    return-void
.end method
