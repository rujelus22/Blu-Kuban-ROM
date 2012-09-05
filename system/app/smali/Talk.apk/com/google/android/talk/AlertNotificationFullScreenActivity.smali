.class public Lcom/google/android/talk/AlertNotificationFullScreenActivity;
.super Landroid/app/Activity;
.source "AlertNotificationFullScreenActivity.java"


# instance fields
.field protected mAccountId:J

.field private mAvatar:Landroid/graphics/Bitmap;

.field private mAvatarView:Landroid/widget/ImageView;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mCallSession:Lcom/google/android/videochat/CallSession;

.field private mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogRootView:Landroid/view/View;

.field protected mExistingCall:Lcom/google/android/videochat/CallState;

.field protected mExistingCallNickName:Ljava/lang/String;

.field protected mIsGroupChatInvite:Z

.field protected mIsIncomingCall:Z

.field protected mIsVideo:Z

.field protected mMessage:Ljava/lang/String;

.field private mMessage1View:Landroid/widget/TextView;

.field private mMessage2View:Landroid/widget/TextView;

.field protected mNickName:Ljava/lang/String;

.field protected mRemoteJid:Ljava/lang/String;

.field protected mShowChatIntent:Landroid/content/Intent;

.field private mShowDialog:Z

.field private final mShowDialogLock:Ljava/lang/Object;

.field protected mTimestamp:J

.field private mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialog:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialogLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissDialogAndFinish()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Lcom/google/android/videochat/CallSession;)Lcom/google/android/videochat/CallSession;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->loadContactInfoAndShowDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dumpIntent(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/AlertNotificationFullScreenActivity;JLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->declineCall(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissNotificationAndFinish()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->showDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatar:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatar:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatarView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private bindToVideoChatServiceAndShowDialog()V
    .registers 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    if-nez v0, :cond_12

    .line 161
    new-instance v0, Lcom/google/android/videochat/VideoChatServiceBinder;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/videochat/VideoChatServiceBinder;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    .line 165
    :cond_12
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    new-instance v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/VideoChatServiceBinder;->bind(Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;)V

    .line 172
    return-void
.end method

.method private createViews()V
    .registers 4

    .prologue
    .line 175
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 176
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 178
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    .line 180
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    const v2, 0x7f10000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatarView:Landroid/widget/ImageView;

    .line 182
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    const v2, 0x7f10004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage1View:Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    const v2, 0x7f100050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage2View:Landroid/widget/TextView;

    .line 184
    return-void
.end method

.method private declineCall(JLjava/lang/String;)V
    .registers 5
    .parameter "accountId"
    .parameter "remoteJid"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    invoke-virtual {v0, p3}, Lcom/google/android/videochat/CallSession;->declineIncomingCall(Ljava/lang/String;)Z

    .line 476
    return-void
.end method

.method private dismissDialog()V
    .registers 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_3
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    .line 457
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialog:Z

    .line 461
    :cond_12
    monitor-exit v1

    .line 462
    return-void

    .line 461
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private dismissDialogAndFinish()V
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 465
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 468
    :cond_c
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissDialog()V

    .line 469
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_18

    .line 470
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->finish()V

    .line 472
    :cond_18
    return-void
.end method

.method private dismissNotificationAndFinish()V
    .registers 7

    .prologue
    .line 372
    iget-boolean v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v4, :cond_19

    .line 374
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.android.talk.CANCEL_NOTIFICATION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    .end local v2           #intent:Landroid/content/Intent;
    :goto_e
    const-string v4, "talk"

    const-string v5, "##### [AlertNotificationFullScreen] dismissNotificationAndFinish: dismiss dialog"

    invoke-static {v4, v5}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissDialogAndFinish()V

    .line 394
    return-void

    .line 378
    :cond_19
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v3

    .line 379
    .local v3, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-nez v3, :cond_2b

    .line 380
    const-string v4, "talk"

    const-string v5, "dismissNotificationAndFinish: no GTalkService object found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 383
    :cond_2b
    iget-object v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, contact:Ljava/lang/String;
    const-wide/16 v4, 0x1

    :try_start_33
    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationFor(Ljava/lang/String;J)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_e

    .line 386
    :catch_37
    move-exception v1

    .line 387
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "talk"

    const-string v5, "dismissNotificationAndFinish: caught "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private dumpIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 8
    .parameter "title"
    .parameter "intent"

    .prologue
    .line 355
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EXTRA_INTENT_FROM_ADDRESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EXTRA_INTENT_ACCOUNT_ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accountId"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EXTRA_INTENT_USERNAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private loadContactInfoAndShowDialog()V
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 399
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 402
    .local v10, bareJid:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mExistingCall:Lcom/google/android/videochat/CallState;

    if-eqz v1, :cond_36

    .line 403
    new-instance v0, Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mExistingCall:Lcom/google/android/videochat/CallState;

    iget-object v4, v1, Lcom/google/android/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    .line 405
    .local v0, existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;
    new-instance v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Lcom/google/android/talk/ContactInfoQuery;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 416
    :goto_20
    new-instance v6, Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v8, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    const/4 v12, 0x1

    move-object v7, p0

    move-object v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    .line 418
    .local v6, contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    new-instance v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity$6;

    invoke-direct {v1, p0, v6, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$6;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Lcom/google/android/talk/ContactInfoQuery;Lcom/google/android/talk/ContactInfoQuery;)V

    invoke-virtual {v6, v1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 436
    invoke-virtual {v6}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 437
    return-void

    .line 413
    .end local v0           #existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;
    .end local v6           #contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    :cond_36
    const/4 v0, 0x0

    .restart local v0       #existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;
    goto :goto_20
.end method

.method private makeDialog()Landroid/app/Dialog;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 187
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 188
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 191
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0, v1, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setPositiveButtonString(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 192
    invoke-virtual {p0, v1, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setNegativeButtonString(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 194
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {p0, v1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setCancelCallbackListener(Landroid/app/AlertDialog$Builder;)V

    .line 197
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 198
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 199
    return-object v0
.end method

.method private resolveIntent()V
    .registers 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 368
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->parseIntent(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method private showDialog()V
    .registers 3

    .prologue
    .line 440
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialog:Z

    if-eqz v0, :cond_21

    .line 442
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setTitle(Landroid/app/AlertDialog$Builder;)V

    .line 443
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setMessageLine1()V

    .line 444
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setMessageLine2()V

    .line 446
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_21

    .line 447
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->makeDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    .line 448
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 451
    :cond_21
    monitor-exit v1

    .line 452
    return-void

    .line 451
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private startVideochatActivity()V
    .registers 4

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsVideo:Z

    if-eqz v0, :cond_c

    .line 501
    iget-wide v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityCallInProgress(Landroid/content/Context;JLjava/lang/String;)V

    .line 506
    :goto_b
    return-void

    .line 504
    :cond_c
    iget-wide v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/talk/BuddyListCombo;->startChatScreenActivity(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_b
.end method


# virtual methods
.method acceptCall(JLjava/lang/String;)V
    .registers 7
    .parameter "accountId"
    .parameter "remoteJid"

    .prologue
    .line 479
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Incoming call alert] acceptCall for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->getInstance(Landroid/content/Context;)Lcom/google/android/videochat/OngoingNotificationFactory;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/android/videochat/CallSession;->acceptIncomingCall(Ljava/lang/String;Lcom/google/android/videochat/OngoingNotificationFactory;)Z

    .line 483
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->startVideochatActivity()V

    .line 484
    return-void
.end method

.method protected getOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 229
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    return-object v0
.end method

.method protected handleNewIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 306
    const-string v1, "incoming_call"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 307
    .local v0, incomingCall:Z
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incomingCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-boolean v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-nez v1, :cond_38

    .line 313
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->parseIntent(Landroid/content/Intent;)V

    .line 315
    if-eqz v0, :cond_3c

    .line 317
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissDialog()V

    .line 319
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->createViews()V

    .line 320
    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialogLock:Ljava/lang/Object;

    monitor-enter v2

    .line 322
    const/4 v1, 0x1

    :try_start_32
    iput-boolean v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialog:Z

    .line 323
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    .line 325
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->bindToVideoChatServiceAndShowDialog()V

    .line 332
    :cond_38
    :goto_38
    return-void

    .line 323
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1

    .line 329
    :cond_3c
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->loadContactInfoAndShowDialog()V

    goto :goto_38
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->resolveIntent()V

    .line 101
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->requestWindowFeature(I)Z

    .line 103
    iget-boolean v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v2, :cond_2a

    .line 104
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 105
    .local v1, win:Landroid/view/Window;
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "screen_off"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 110
    const v2, 0x200081

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 117
    .end local v1           #win:Landroid/view/Window;
    :cond_2a
    new-instance v2, Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    iput-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.talk.CANCEL_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.google.android.talk.CANCEL_POPUP_NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->createViews()V

    .line 135
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->handleNewIntent(Landroid/content/Intent;)V

    .line 286
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 143
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_b

    .line 144
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->bindToVideoChatServiceAndShowDialog()V

    .line 148
    :goto_a
    return-void

    .line 146
    :cond_b
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->loadContactInfoAndShowDialog()V

    goto :goto_a
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 153
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_c

    .line 154
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatServiceBinder;->unbind()V

    .line 156
    :cond_c
    return-void
.end method

.method protected parseIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 335
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    .line 336
    const-string v0, "accountId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    .line 337
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage:Ljava/lang/String;

    .line 338
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowChatIntent:Landroid/content/Intent;

    .line 339
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mTimestamp:J

    .line 341
    const-string v0, "incoming_call"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    .line 342
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowChatIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5f

    .line 343
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowChatIntent:Landroid/content/Intent;

    const-string v1, "is_muc"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsGroupChatInvite:Z

    .line 346
    const-string v0, "parseIntent"

    invoke-direct {p0, v0, p1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dumpIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 350
    :goto_4c
    const-string v0, "isvideo"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsVideo:Z

    .line 351
    const-string v0, "iscollision"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallState;

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mExistingCall:Lcom/google/android/videochat/CallState;

    .line 352
    return-void

    .line 348
    :cond_5f
    iput-boolean v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsGroupChatInvite:Z

    goto :goto_4c
.end method

.method protected setCancelCallbackListener(Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    .line 233
    new-instance v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    return-void
.end method

.method protected setMessageLine1()V
    .registers 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage1View:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void

    .line 258
    :cond_14
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mNickName:Ljava/lang/String;

    goto :goto_10
.end method

.method protected setMessageLine2()V
    .registers 3

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_c

    .line 264
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage2View:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    :goto_b
    return-void

    .line 266
    :cond_c
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage2View:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method

.method protected setNegativeButtonString(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "builder"
    .parameter "listener"

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_b

    const v0, 0x7f0c00c6

    :goto_7
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    return-void

    .line 278
    :cond_b
    const v0, 0x7f0c00ce

    goto :goto_7
.end method

.method protected setPositiveButtonString(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "builder"
    .parameter "listener"

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_b

    const v0, 0x7f0c006c

    :goto_7
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    return-void

    .line 272
    :cond_b
    const v0, 0x7f0c00cf

    goto :goto_7
.end method

.method protected setTitle(Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_13

    .line 247
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsVideo:Z

    if-eqz v0, :cond_f

    const v0, 0x7f0c00c0

    :goto_b
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 255
    :goto_e
    return-void

    .line 247
    :cond_f
    const v0, 0x7f0c00c2

    goto :goto_b

    .line 250
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsGroupChatInvite:Z

    if-eqz v0, :cond_1e

    .line 251
    const v0, 0x7f0c00d0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_e

    .line 253
    :cond_1e
    const v0, 0x7f0c00cd

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_e
.end method
