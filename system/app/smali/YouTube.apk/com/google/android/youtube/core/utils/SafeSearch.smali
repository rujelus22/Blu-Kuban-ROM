.class public final Lcom/google/android/youtube/core/utils/SafeSearch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private c:Ljava/util/concurrent/atomic/AtomicReference;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->b:Landroid/content/SharedPreferences;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->STRICT:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;)V
    .registers 5
    .parameter

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1c

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "safe_search"

    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    :cond_1c
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 63
    monitor-exit p0

    return-void

    .line 59
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .registers 4

    .prologue
    .line 49
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->a:Landroid/content/Context;

    const-string v2, "youtube"

    invoke-static {v1, v2}, Lcom/google/android/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parental control is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->b:Landroid/content/SharedPreferences;

    const-string v1, "safe_search"

    sget-object v2, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->MODERATE:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    invoke-static {}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->values()[Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/utils/SafeSearch;->a(Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;)V

    .line 56
    :cond_4a
    return-void
.end method
