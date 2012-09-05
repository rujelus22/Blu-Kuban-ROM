.class final Lcom/google/android/youtube/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/a/e/c;

.field final synthetic b:Lcom/google/android/youtube/app/i;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/i;Lcom/google/android/a/e/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    iput-object p2, p0, Lcom/google/android/youtube/app/n;->a:Lcom/google/android/a/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v4, 0x5

    .line 171
    iget-object v1, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    monitor-enter v1

    .line 172
    :try_start_4
    iget-object v0, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/app/i;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/app/i;Z)Z

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->b(Lcom/google/android/youtube/app/i;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "screenIds"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    iget-object v3, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v3}, Lcom/google/android/youtube/app/i;->b(Lcom/google/android/youtube/app/i;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/app/i;Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_a9

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/n;->a:Lcom/google/android/a/e/c;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 181
    if-ltz v0, :cond_4d

    .line 182
    iget-object v1, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 185
    :cond_4d
    iget-object v0, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/youtube/app/n;->a:Lcom/google/android/a/e/c;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_6e

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 191
    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c;

    .line 195
    invoke-virtual {v0}, Lcom/google/android/a/e/c;->b()Lcom/google/android/a/e/b;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Lcom/google/android/a/e/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 178
    :catchall_a9
    move-exception v0

    monitor-exit v1

    throw v0

    .line 199
    :cond_ac
    iget-object v0, p0, Lcom/google/android/youtube/app/n;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->b(Lcom/google/android/youtube/app/i;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    const-string v3, "screenIds"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    const-string v1, "screenNames"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method
