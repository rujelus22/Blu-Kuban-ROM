.class abstract Lcom/google/android/youtube/app/honeycomb/h;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Class;
.end method

.method protected abstract b()Ljava/lang/Class;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/h;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-result-object v1

    .line 32
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/h;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 33
    invoke-interface {v1, v0, p0}, Lcom/google/android/youtube/app/YouTubePlatformUtil;->a(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/content/Context;)Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->OriginalTablet:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    if-ne v0, v1, :cond_35

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/h;->a()Ljava/lang/Class;

    move-result-object v0

    .line 36
    :goto_22
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 38
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/h;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/h;->finish()V

    .line 41
    return-void

    .line 33
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/h;->b()Ljava/lang/Class;

    move-result-object v0

    goto :goto_22
.end method
