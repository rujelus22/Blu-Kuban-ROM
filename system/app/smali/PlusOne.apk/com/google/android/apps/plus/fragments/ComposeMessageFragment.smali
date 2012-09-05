.class public Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;
.super Landroid/support/v4/app/Fragment;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

.field private mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

.field private mMessageText:Landroid/widget/EditText;

.field private mSendButton:Landroid/view/View;

.field private mTimeSinceLastTypingEvent:J

.field private mTypingTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mTypingTimeoutRunnable:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateTypingStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchSendMessageEvent()V

    return-void
.end method

.method private dispatchSendMessageEvent()V
    .registers 4

    .prologue
    .line 311
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    if-eqz v1, :cond_1d

    .line 312
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    if-nez v1, :cond_1e

    const/4 v0, 0x0

    .line 314
    .local v0, trimmedText:Ljava/lang/String;
    :goto_9
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 315
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;->onSendTextMessage(Ljava/lang/String;)V

    .line 317
    :cond_16
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .end local v0           #trimmedText:Ljava/lang/String;
    :cond_1d
    return-void

    .line 312
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
    .line 322
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;->onSendPhoto(Ljava/lang/String;I)V

    .line 325
    :cond_9
    return-void
.end method

.method private dispatchTypingStatusChangedEvent(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V
    .registers 3
    .parameter "typingType"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    if-eqz v0, :cond_9

    .line 329
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;->onTypingStatusChanged(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    .line 331
    :cond_9
    return-void
.end method

.method private getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 169
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

.method private updateSendButtonState()V
    .registers 4

    .prologue
    .line 265
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    if-nez v2, :cond_24

    const/4 v1, 0x0

    .line 266
    .local v1, trimmedText:Ljava/lang/String;
    :goto_5
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mAllowSendMessage:Z

    if-eqz v2, :cond_33

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

    const/4 v0, 0x1

    .line 268
    .local v0, enabled:Z
    :goto_12
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mSendButton:Landroid/view/View;

    if-eqz v2, :cond_23

    .line 269
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mSendButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_23

    .line 270
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mSendButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 273
    :cond_23
    return-void

    .line 265
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

    .line 266
    .restart local v1       #trimmedText:Ljava/lang/String;
    :cond_33
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private updateTypingStatus()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x1388

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 277
    .local v1, currentTime:J
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    if-nez v3, :cond_2b

    const/4 v0, 0x0

    .line 278
    .local v0, chars:I
    :goto_b
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->getNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_7a

    .line 303
    :cond_14
    :goto_14
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    sget-object v4, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    if-ne v3, v4, :cond_2a

    .line 304
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mTypingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mTypingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    iput-wide v1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mTimeSinceLastTypingEvent:J

    .line 308
    :cond_2a
    return-void

    .line 277
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

    .line 280
    .restart local v0       #chars:I
    :pswitch_3e
    if-lez v0, :cond_14

    .line 281
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 282
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchTypingStatusChangedEvent(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    goto :goto_14

    .line 286
    :pswitch_4a
    if-nez v0, :cond_51

    .line 287
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->CLEAR:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    goto :goto_14

    .line 289
    :cond_51
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 290
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchTypingStatusChangedEvent(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    goto :goto_14

    .line 294
    :pswitch_5b
    if-nez v0, :cond_67

    .line 295
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->CLEAR:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 296
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchTypingStatusChangedEvent(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    goto :goto_14

    .line 297
    :cond_67
    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mTimeSinceLastTypingEvent:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_14

    .line 298
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->PAUSE:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 299
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchTypingStatusChangedEvent(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    goto :goto_14

    .line 278
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
    .line 86
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mAllowSendImages:Z

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, photoButton:Landroid/view/View;
    if-eqz p1, :cond_1a

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .end local v0           #photoButton:Landroid/view/View;
    :cond_19
    :goto_19
    return-void

    .line 92
    .restart local v0       #photoButton:Landroid/view/View;
    :cond_1a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 201
    packed-switch p1, :pswitch_data_3c

    .line 229
    :cond_4
    :goto_4
    return-void

    .line 203
    :pswitch_5
    if-ne p2, v3, :cond_4

    if-eqz p3, :cond_4

    .line 204
    const-string v3, "photo_url"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, url:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 206
    invoke-direct {p0, v2, p1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchSendPhotoEvent(Ljava/lang/String;I)V

    goto :goto_4

    .line 213
    .end local v2           #url:Ljava/lang/String;
    :pswitch_15
    if-ne p2, v3, :cond_4

    .line 215
    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "camera-p.jpg"

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->insertCameraPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, mediaLocation:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 219
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchSendPhotoEvent(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_26} :catch_27

    goto :goto_4

    .line 221
    .end local v1           #mediaLocation:Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 222
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f070121

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 201
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_15
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 177
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 178
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    .line 193
    :goto_c
    return v6

    .line 180
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "camera-p.jpg"

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 182
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 187
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {v2, v0, v3, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosHomePickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v1

    .line 189
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1, v6}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 178
    nop

    :pswitch_data_2e
    .packed-switch 0x7f0d01eb
        :pswitch_d
        :pswitch_1c
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 164
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f10001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 165
    const v1, 0x7f0700e6

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 166
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0d0076

    const/4 v5, 0x0

    .line 103
    const v3, 0x7f03001e

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 105
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mSendButton:Landroid/view/View;

    .line 107
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->CLEAR:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mCurrentTypingStatus:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 108
    const v3, 0x7f0d0075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    .line 109
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    new-instance v4, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$2;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 125
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, sendButton:Landroid/view/View;
    new-instance v3, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v3, 0x7f0d0074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, photoButton:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 138
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mAllowSendImages:Z

    if-eqz v3, :cond_5a

    .line 139
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_4c
    new-instance v3, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$4;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mAllowSendMessage:Z

    .line 153
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateSendButtonState()V

    .line 154
    return-object v2

    .line 141
    :cond_5a
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4c
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 256
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

    .line 259
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchSendMessageEvent()V

    .line 261
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public requestFocus()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mMessageText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 233
    return-void
.end method

.method public setAllowSendMessage(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mAllowSendMessage:Z

    .line 248
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateSendButtonState()V

    .line 249
    return-void
.end method

.method public setListener(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->mListener:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;

    .line 237
    return-void
.end method
