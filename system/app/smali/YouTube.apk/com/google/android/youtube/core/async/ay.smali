.class final Lcom/google/android/youtube/core/async/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final b:Lcom/google/android/youtube/core/async/av;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/av;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/async/ay;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/av;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/av;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ay;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ay;->b:Lcom/google/android/youtube/core/async/av;

    .line 795
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 789
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ay;->b:Lcom/google/android/youtube/core/async/av;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/async/av;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 789
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-boolean v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->isLightweight:Z

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    new-instance v1, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v4, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ay;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    monitor-enter v2

    :try_start_29
    iget-object v3, p0, Lcom/google/android/youtube/core/async/ay;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->d(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/google/android/youtube/core/async/ay;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->d(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    :cond_3f
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ay;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;

    :cond_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_4f

    move-object v0, v1

    :goto_46
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ay;->b:Lcom/google/android/youtube/core/async/av;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/async/av;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    return-void

    :cond_4c
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    goto :goto_9

    :catchall_4f
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_52
    move-object v0, v1

    goto :goto_46
.end method
