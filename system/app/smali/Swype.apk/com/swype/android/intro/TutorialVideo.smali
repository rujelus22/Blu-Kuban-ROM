.class public Lcom/swype/android/intro/TutorialVideo;
.super Landroid/app/Activity;
.source "TutorialVideo.java"


# static fields
.field public static final VIDEO_PATH:Ljava/lang/String; = "com.swype.android.inputmethod.TutorialVideo/VIDEO_PATH"


# instance fields
.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/swype/android/intro/TutorialVideo;->setContentView(I)V

    .line 20
    const v0, 0x7f0d001b

    invoke-virtual {p0, v0}, Lcom/swype/android/intro/TutorialVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/swype/android/intro/TutorialVideo;->mVideoView:Landroid/widget/VideoView;

    .line 21
    invoke-virtual {p0}, Lcom/swype/android/intro/TutorialVideo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.swype.android.inputmethod.TutorialVideo/VIDEO_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_40

    .line 23
    iget-object v1, p0, Lcom/swype/android/intro/TutorialVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/swype/android/intro/TutorialVideo;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 25
    iget-object v0, p0, Lcom/swype/android/intro/TutorialVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 26
    iget-object v0, p0, Lcom/swype/android/intro/TutorialVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 30
    :goto_3f
    return-void

    .line 28
    :cond_40
    invoke-virtual {p0}, Lcom/swype/android/intro/TutorialVideo;->finish()V

    goto :goto_3f
.end method
