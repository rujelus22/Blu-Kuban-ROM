.class public Lcom/google/android/youtube/app/honeycomb/phone/an;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/app/ui/bc;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 26
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/an;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "video_id"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const-string v0, " yt_add_screen"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/an;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/bc;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    :goto_8
    return-void

    .line 79
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/an;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 36
    const v0, 0x7f0a01b1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/an;->d(I)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/an;->m()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v0

    sget-object v2, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->DISABLED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V

    .line 39
    new-instance v5, Lcom/google/android/youtube/app/honeycomb/phone/ao;

    invoke-direct {v5, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ao;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/an;)V

    .line 44
    new-instance v0, Lcom/google/android/youtube/app/ui/bc;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->q()Lcom/google/android/youtube/app/u;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/app/p;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v6

    const v7, 0x7f040045

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/ui/bc;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/u;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/bl;Lcom/google/android/youtube/core/e;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/an;->a:Lcom/google/android/youtube/app/ui/bc;

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/an;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bc;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/an;->setContentView(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onStart()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/an;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "video_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1c

    .line 62
    const-string v0, "Can not pair without a video id. It\'s silly, but right now we need a video to send to the screen"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/an;->finish()V

    .line 72
    :goto_1b
    return-void

    .line 70
    :cond_1c
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/an;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/bc;->a(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/an;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bc;->a()V

    goto :goto_1b
.end method
