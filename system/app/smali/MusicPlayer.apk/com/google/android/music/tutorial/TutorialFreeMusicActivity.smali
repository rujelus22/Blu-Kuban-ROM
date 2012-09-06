.class public Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;
.super Landroid/app/Activity;
.source "TutorialFreeMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mTracker:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public freeMusicOnClick()V
    .registers 7

    .prologue
    .line 79
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v2, "tutorial"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "tutorialAction"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "getFreeMusic"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, i:Landroid/content/Intent;
    const v1, 0x7f0d00ca

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->finish()V

    .line 91
    return-void
.end method

.method public getPageUrlForTracking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "tutorialFreeMusic"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 69
    :goto_7
    return-void

    .line 63
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->skipOnClick()V

    goto :goto_7

    .line 66
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->freeMusicOnClick()V

    goto :goto_7

    .line 61
    :pswitch_data_10
    .packed-switch 0x7f100113
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->requestWindowFeature(I)Z

    .line 36
    const v1, 0x7f040066

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->setContentView(I)V

    .line 38
    const v1, 0x7f100113

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f100114

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    .local v0, skipButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 41
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 57
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public skipOnClick()V
    .registers 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v1, "tutorial"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tutorialAction"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "skipFreeMusic"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->finish()V

    .line 76
    return-void
.end method
