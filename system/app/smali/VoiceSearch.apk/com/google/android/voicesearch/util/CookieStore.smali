.class public Lcom/google/android/voicesearch/util/CookieStore;
.super Ljava/lang/Object;
.source "CookieStore.java"


# instance fields
.field private mCookie:J

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mPrefs:Landroid/content/SharedPreferences;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "MASFLite"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mPrefs:Landroid/content/SharedPreferences;

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J

    .line 44
    return-void
.end method


# virtual methods
.method public declared-synchronized getCookie()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 47
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 48
    iget-object v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cookie"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J

    .line 51
    :cond_15
    iget-wide v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-wide v0

    .line 47
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookie(J)V
    .registers 5
    .parameter "cookie"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    cmp-long v0, v0, p1

    if-nez v0, :cond_9

    .line 61
    :goto_7
    monitor-exit p0

    return-void

    .line 59
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/voicesearch/util/CookieStore;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cookie"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 60
    iput-wide p1, p0, Lcom/google/android/voicesearch/util/CookieStore;->mCookie:J
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    goto :goto_7

    .line 55
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
