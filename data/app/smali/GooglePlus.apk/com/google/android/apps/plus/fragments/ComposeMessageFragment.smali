.class public Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;
.super Landroid/support/v4/app/Fragment;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;
    }
.end annotation


# instance fields
.field private mAllowSendImages:Z

.field private mAllowSendMessage:Z

.field private mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

.field private mHandler:Landroid/os/Handler;

.field private mInsertCameraPhotoRequestId:Ljava/lang/Integer;

.field private mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

.field private mMessageText:Landroid/widget/EditText;

.field private mSendButton:Landroid/view/View;

.field private mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mTimeSinceLastTypingEvent:J

.field private mTypingTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 68
    new-instance v0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mTypingTimeoutRunnable:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->insertCameraPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateTypingStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchSendMessageEvent()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->showChoosePhotoDialog()V

    return-void
.end method

.method private dispatchSendMessageEvent()V
    .registers 4

    .prologue
    .line 370
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    if-eqz v1, :cond_1d

    .line 371
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    if-nez v1, :cond_1e

    const/4 v0, 0x0

    .line 373
    .local v0, trimmedText:Ljava/lang/String;
    :goto_9
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 374
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;->onSendTextMessage(Ljava/lang/String;)V

    .line 376
    :cond_16
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    .end local v0           #trimmedText:Ljava/lang/String;
    :cond_1d
    return-void

    .line 371
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private dispatchSendPhotoEvent(Ljava/lang/String;I)V
    .registers 4
    .parameter "uri"
    .parameter "requestCode"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    if-eqz v0, :cond_9

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;->onSendPhoto(Ljava/lang/String;I)V

    .line 384
    :cond_9
    return-void
.end method

.method private dispatchTypingStatusChangedEvent(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V
    .registers 3
    .parameter "typingType"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    if-eqz v0, :cond_9

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;->onTypingStatusChanged(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    .line 390
    :cond_9
    return-void
.end method

.method private getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method private insertCameraPhoto(Ljava/lang/String;)V
    .registers 5
    .parameter "mediaLocation"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 311
    .local v0, activity:Landroid/app/Activity;
    if-eqz p1, :cond_14

    .line 312
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchSendPhotoEvent(Ljava/lang/String;I)V

    .line 318
    :goto_a
    instance-of v1, v0, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    if-eqz v1, :cond_13

    .line 319
    check-cast v0, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;->hideInsertCameraPhotoDialog()V

    .line 321
    :cond_13
    return-void

    .line 314
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_14
    const v1, 0x7f0801b6

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_a
.end method

.method private showChoosePhotoDialog()V
    .registers 4

    .prologue
    .line 210
    new-instance v0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;

    const v1, 0x7f08016a

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;-><init>(IZ)V

    .line 211
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->isCameraIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->setIsCameraSupported(Z)V

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "share_photo"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private updateSendButtonState()V
    .registers 4

    .prologue
    .line 324
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    if-nez v2, :cond_24

    const/4 v1, 0x0

    .line 325
    .local v1, trimmedText:Ljava/lang/String;
    :goto_5
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mAllowSendMessage:Z

    if-eqz v2, :cond_33

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

    const/4 v0, 0x1

    .line 327
    .local v0, enabled:Z
    :goto_12
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mSendButton:Landroid/view/View;

    if-eqz v2, :cond_23

    .line 328
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mSendButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_23

    .line 329
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mSendButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 332
    :cond_23
    return-void

    .line 324
    .end local v0           #enabled:Z
    .end local v1           #trimmedText:Ljava/lang/String;
    :cond_24
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 325
    .restart local v1       #trimmedText:Ljava/lang/String;
    :cond_33
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private updateTypingStatus()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x1388

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 336
    .local v1, currentTime:J
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    if-nez v3, :cond_2b

    const/4 v0, 0x0

    .line 337
    .local v0, chars:I
    :goto_b
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->getNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_7a

    .line 362
    :cond_14
    :goto_14
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    sget-object v4, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    if-ne v3, v4, :cond_2a

    .line 363
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mTypingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mTypingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    iput-wide v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mTimeSinceLastTypingEvent:J

    .line 367
    :cond_2a
    return-void

    .line 336
    .end local v0           #chars:I
    :cond_2b
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_b

    .line 339
    .restart local v0       #chars:I
    :pswitch_3e
    if-lez v0, :cond_14

    .line 340
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 341
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchTypingStatusChangedEvent(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    goto :goto_14

    .line 345
    :pswitch_4a
    if-nez v0, :cond_51

    .line 346
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->CLEAR:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    goto :goto_14

    .line 348
    :cond_51
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 349
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchTypingStatusChangedEvent(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    goto :goto_14

    .line 353
    :pswitch_5b
    if-nez v0, :cond_67

    .line 354
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->CLEAR:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 355
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchTypingStatusChangedEvent(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    goto :goto_14

    .line 356
    :cond_67
    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mTimeSinceLastTypingEvent:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_14

    .line 357
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->PAUSE:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 358
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchTypingStatusChangedEvent(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    goto :goto_14

    .line 337
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_4a
        :pswitch_3e
    .end packed-switch
.end method


# virtual methods
.method public allowSendingImages(Z)V
    .registers 5
    .parameter "allow"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mAllowSendImages:Z

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, photoButton:Landroid/view/View;
    if-eqz p1, :cond_1a

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .end local v0           #photoButton:Landroid/view/View;
    :cond_19
    :goto_19
    return-void

    .line 108
    .restart local v0       #photoButton:Landroid/view/View;
    :cond_1a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19
.end method

.method public doPickPhotoFromAlbums()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 230
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->newAlbumsActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v0

    .line 231
    .local v0, builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPersonId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotosHome(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setShowCameraAlbum(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoPickerMode(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const v2, 0x7f0800b7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoPickerTitleResourceId(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 238
    return-void
.end method

.method public doTakePhoto()V
    .registers 4

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "camera-p.jpg"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 222
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 223
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 249
    packed-switch p1, :pswitch_data_32

    .line 273
    :cond_4
    :goto_4
    return-void

    .line 251
    :pswitch_5
    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    .line 252
    const-string v2, "photo_url"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 254
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchSendPhotoEvent(Ljava/lang/String;I)V

    goto :goto_4

    .line 261
    .end local v1           #url:Ljava/lang/String;
    :pswitch_15
    if-ne p2, v2, :cond_4

    .line 262
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 263
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    if-eqz v2, :cond_25

    move-object v2, v0

    .line 264
    check-cast v2, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    invoke-interface {v2}, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;->showInsertCameraPhotoDialog()V

    .line 267
    :cond_25
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const-string v3, "camera-p.jpg"

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->insertCameraPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    goto :goto_4

    .line 249
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_5
        :pswitch_15
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f090082

    const/4 v5, 0x0

    .line 119
    if-eqz p3, :cond_1a

    .line 120
    const-string v3, "insert_camera_photo_req_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 121
    const-string v3, "insert_camera_photo_req_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    .line 126
    :cond_1a
    const v3, 0x7f030020

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 128
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mSendButton:Landroid/view/View;

    .line 130
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->CLEAR:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 131
    const v3, 0x7f090081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    .line 132
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    new-instance v4, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 148
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 149
    .local v1, sendButton:Landroid/view/View;
    new-instance v3, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$4;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, photoButton:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 161
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mAllowSendImages:Z

    if-eqz v3, :cond_70

    .line 162
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :goto_62
    new-instance v3, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$5;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$5;-><init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mAllowSendMessage:Z

    .line 176
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateSendButtonState()V

    .line 177
    return-object v2

    .line 164
    :cond_70
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_62
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 300
    const/4 v0, 0x4

    if-eq p2, v0, :cond_b

    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1a

    .line 303
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchSendMessageEvent()V

    .line 305
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 198
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    .line 188
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->insertCameraPhoto(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    .line 192
    :cond_2b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 205
    const-string v0, "insert_camera_photo_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    :cond_12
    return-void
.end method

.method public requestFocus()V
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 277
    return-void
.end method

.method public setAllowSendMessage(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mAllowSendMessage:Z

    .line 292
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateSendButtonState()V

    .line 293
    return-void
.end method

.method public setListener(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    .line 281
    return-void
.end method
