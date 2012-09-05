.class abstract Lcom/google/android/youtube/app/honeycomb/f;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method synthetic constructor <init>()V
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/f;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Class;
.end method

.method protected abstract b()Ljava/lang/Class;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/f;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->K()Lcom/google/android/youtube/core/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/j;->a(Landroid/content/Context;)Z

    move-result v0

    .line 32
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/f;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 33
    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/f;->a()Ljava/lang/Class;

    move-result-object v0

    .line 34
    :goto_20
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/f;->finish()V

    .line 36
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/f;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/f;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_42

    .line 38
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 42
    const-string v0, "Monkey prevented us from finishing, trying again"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/f;->finish()V

    .line 49
    :cond_42
    :goto_42
    return-void

    .line 33
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/f;->b()Ljava/lang/Class;

    move-result-object v0

    goto :goto_20

    .line 46
    :cond_48
    const-string v0, "Unable to finish, and user is not a monkey :-("

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_42
.end method
