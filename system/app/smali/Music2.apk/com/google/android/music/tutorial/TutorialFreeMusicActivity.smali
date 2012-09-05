.class public Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;
.super Landroid/app/Activity;
.source "TutorialFreeMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public freeMusicOnClick()V
    .registers 3

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, i:Landroid/content/Intent;
    const v1, 0x7f0d00ba

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->finish()V

    .line 64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 52
    :goto_7
    return-void

    .line 46
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->skipOnClick()V

    goto :goto_7

    .line 49
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->freeMusicOnClick()V

    goto :goto_7

    .line 44
    :pswitch_data_10
    .packed-switch 0x7f1000e5
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->requestWindowFeature(I)Z

    .line 29
    const v1, 0x7f040053

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->setContentView(I)V

    .line 31
    const v1, 0x7f1000e5

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v1, 0x7f1000e6

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, skipButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 34
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 40
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public skipOnClick()V
    .registers 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialFreeMusicActivity;->finish()V

    .line 56
    return-void
.end method
