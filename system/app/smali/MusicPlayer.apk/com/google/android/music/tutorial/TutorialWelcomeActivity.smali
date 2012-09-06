.class public Lcom/google/android/music/tutorial/TutorialWelcomeActivity;
.super Landroid/app/Activity;
.source "TutorialWelcomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mTracker:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onNextClick()V
    .registers 2

    .prologue
    .line 64
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->finish()V

    .line 66
    new-instance v0, Lcom/google/android/music/tutorial/TutorialWelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity$1;-><init>(Lcom/google/android/music/tutorial/TutorialWelcomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 102
    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 83
    :goto_7
    return-void

    .line 80
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->onNextClick()V

    goto :goto_7

    .line 78
    :pswitch_data_c
    .packed-switch 0x7f100117
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const v3, 0x7f100117

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 38
    invoke-static {p0, v1, v1, v1}, Lcom/google/android/music/tutorial/SignupStatus;->launchVerificationCheck(Landroid/content/Context;ZZZ)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->requestWindowFeature(I)Z

    .line 40
    const v0, 0x7f040069

    invoke-virtual {p0, v0}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p0, v3}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 45
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_31

    .line 46
    invoke-virtual {p0, v2}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->showDialog(I)V

    .line 48
    :cond_31
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter "id"
    .parameter "args"

    .prologue
    .line 87
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2b

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0d00c2

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 90
    const v1, 0x7f0d0005

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    const v1, 0x7f0d0006

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 94
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown dialog id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 59
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v1, "tutorialWelcome"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method
