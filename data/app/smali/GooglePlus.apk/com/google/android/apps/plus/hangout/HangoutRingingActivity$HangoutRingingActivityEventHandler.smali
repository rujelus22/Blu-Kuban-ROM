.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "HangoutRingingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HangoutRingingActivityEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    return-void
.end method


# virtual methods
.method public onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 6
    .parameter "member"
    .parameter "muted"

    .prologue
    .line 448
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 449
    :cond_8
    if-eqz p2, :cond_2d

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 452
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 461
    :cond_2c
    :goto_2c
    return-void

    .line 455
    :cond_2d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method

.method public onSignedIn(Ljava/lang/String;)V
    .registers 5
    .parameter "userJid"

    .prologue
    .line 432
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedIn(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$200(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$300(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 434
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$300(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sendHangoutRingStatus(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$400(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    .line 435
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$300(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    move-result-object v0

    .line 436
    .local v0, status:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$302(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    .line 437
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    .line 439
    .end local v0           #status:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed in! User jid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public onVideoMuteChanged(Z)V
    .registers 5
    .parameter "muted"

    .prologue
    .line 468
    if-eqz p1, :cond_25

    .line 469
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$700(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 470
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$700(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08034a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 477
    :goto_24
    return-void

    .line 473
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$700(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 474
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$700(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080349

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_24
.end method
