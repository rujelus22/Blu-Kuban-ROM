.class public Lcom/android/email/activity/MessageViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;,
        Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;,
        Lcom/android/email/activity/MessageViewFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragment$Callback;
    }
.end annotation


# static fields
.field static final mDateFormat:Ljava/text/SimpleDateFormat;

.field private static menu:Landroid/view/Menu;

.field public static sRemoveIrmProtectionFlag:I


# instance fields
.field private enableMoveToNewerForViewer:Z

.field private enableMoveToOlderForViewer:Z

.field private hasMailboxToMove:Z

.field private irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMessageViewCustomView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

.field private mCurrentMessageId:J

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

.field private mFromSocialHub:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderIconDown:Landroid/widget/ImageView;

.field private mHeaderIconUp:Landroid/widget/ImageView;

.field private mImmutableMessageId:Ljava/lang/Long;

.field private mIsSending:Z

.field private final mLock:Ljava/lang/Object;

.field private mMailboxId:J

.field private mMailboxType:I

.field public mMessageIdToOpen:J

.field private mPreviousMeetingResponse:I

.field private mPreviousMeetingResponseMsgId:J

.field private mReplyAllAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/email/activity/setup/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mResultCallback:Lcom/android/email/Controller$Result;

.field private mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 104
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    .line 178
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH-mm-ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 87
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    .line 117
    iput v4, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    .line 120
    iput-object v5, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHandler:Landroid/os/Handler;

    .line 126
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    .line 141
    iput v4, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    .line 143
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxId:J

    .line 157
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    .line 163
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    .line 165
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->mIsSending:Z

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->hasMailboxToMove:Z

    .line 169
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToNewerForViewer:Z

    .line 171
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToOlderForViewer:Z

    .line 174
    iput-object v5, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    .line 294
    sget-object v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    .line 1896
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageViewFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/MessageViewFragment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageViewFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageViewFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageViewFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onForward()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageViewFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDelete()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageViewFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDeleteSmsPopup()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageViewFragment;)Lcom/android/email/activity/MessageViewFragment$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewFragment;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    return-wide v0
.end method

.method private enableReplyForwardButtons(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 1070
    return-void
.end method

.method public static newInstance(JIJ)Lcom/android/email/activity/MessageViewFragment;
    .registers 8
    .parameter "messageId"
    .parameter "mode"
    .parameter "mailBoxId"

    .prologue
    .line 309
    new-instance v1, Lcom/android/email/activity/MessageViewFragment;

    invoke-direct {v1}, Lcom/android/email/activity/MessageViewFragment;-><init>()V

    .line 310
    .local v1, instance:Lcom/android/email/activity/MessageViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 311
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "messageId"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 312
    const-string v2, "mailBoxId"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 313
    const-string v2, "openMode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 315
    return-object v1
.end method

.method private onClickFavorite()V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1277
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 1278
    iget v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_22

    iget v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_22

    iget v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    int-to-long v5, v0

    const-wide/16 v7, -0x6

    cmp-long v0, v5, v7

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    int-to-long v5, v0

    const-wide/16 v7, -0x5

    cmp-long v0, v5, v7

    if-nez v0, :cond_2a

    .line 1281
    :cond_22
    const-string v0, "MessageViewFragment >>"

    const-string v1, "[onClickFavorite] OutBox of Draft. Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :goto_29
    return-void

    .line 1286
    :cond_2a
    const-string v0, "eas"

    iget-object v3, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1287
    iget v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 1288
    packed-switch v0, :pswitch_data_96

    .line 1300
    :goto_39
    packed-switch v0, :pswitch_data_a0

    .line 1313
    :goto_3c
    iput v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 1314
    new-array v1, v1, [J

    .line 1315
    iget-wide v3, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v3, v1, v2

    .line 1316
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/email/Controller;->setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;

    goto :goto_29

    .line 1290
    :pswitch_50
    const/4 v0, 0x2

    .line 1291
    goto :goto_39

    :pswitch_52
    move v0, v2

    .line 1294
    goto :goto_39

    :pswitch_54
    move v0, v1

    .line 1296
    goto :goto_39

    .line 1302
    :pswitch_56
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3c

    .line 1305
    :pswitch_5e
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3c

    .line 1308
    :pswitch_66
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3c

    .line 1318
    :cond_6e
    iget-boolean v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-nez v0, :cond_90

    move v0, v1

    .line 1319
    :goto_73
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_92

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_79
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1322
    iput-boolean v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 1323
    new-array v1, v1, [J

    .line 1324
    iget-wide v3, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v3, v1, v2

    .line 1325
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/email/Controller;->setMessageFavorite([JZJ)Landroid/os/AsyncTask;

    goto :goto_29

    :cond_90
    move v0, v2

    .line 1318
    goto :goto_73

    .line 1319
    :cond_92
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_79

    .line 1288
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_50
        :pswitch_52
        :pswitch_54
    .end packed-switch

    .line 1300
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_56
        :pswitch_5e
        :pswitch_66
    .end packed-switch
.end method

.method private onCompose()V
    .registers 2

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onCompose()V

    .line 1828
    return-void
.end method

.method private onDelete()V
    .registers 5

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1814
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessageViewFragment$Callback;->onBeforeMessageDelete()V

    .line 1815
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1817
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v1, :cond_1b

    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 1818
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-static {v0, v2, v3}, Lcom/android/email/activity/ActivityHelper;->deleteMessage(Landroid/app/Activity;J)V

    .line 1820
    :cond_1b
    return-void
.end method

.method private onDeleteCalEventClicked()V
    .registers 4

    .prologue
    .line 1462
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1464
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    new-instance v1, Lcom/android/email/activity/MessageViewFragment$15;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageViewFragment$15;-><init>(Lcom/android/email/activity/MessageViewFragment;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment$15;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1485
    return-void
.end method

.method private onDeleteSmsPopup()V
    .registers 4

    .prologue
    .line 1196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1197
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1198
    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1199
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080555

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1200
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1201
    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageViewFragment$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragment$11;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1208
    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageViewFragment$12;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragment$12;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1214
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1215
    return-void
.end method

.method private onDisplayMode()V
    .registers 4

    .prologue
    .line 1703
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/email/activity/MessageViewDisplayModePopup;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1705
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1706
    return-void
.end method

.method private onForward()V
    .registers 2

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onForward()V

    .line 1809
    return-void
.end method

.method private onInviteLinkClicked()V
    .registers 4

    .prologue
    .line 1450
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1451
    new-instance v1, Lcom/android/emailcommon/mail/PackedString;

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v2, "DTSTART"

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1452
    if-eqz v1, :cond_1d

    .line 1453
    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 1454
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2, v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onCalendarLinkClicked(J)V

    .line 1458
    :goto_1c
    return-void

    .line 1456
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meetingInfo without DTSTART "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private onMarkAsUnread()V
    .registers 2

    .prologue
    .line 1823
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 1824
    return-void
.end method

.method private onMove()V
    .registers 2

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onMoveMessage()V

    .line 1710
    return-void
.end method

.method private onRespondToInvite(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1358
    iget v0, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    if-ne v0, p1, :cond_10

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4a

    .line 1363
    :cond_10
    const/4 v0, 0x0

    .line 1364
    and-int/lit8 v2, p1, 0x3

    packed-switch v2, :pswitch_data_7c

    .line 1376
    :goto_16
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0062

    const v4, 0x7f040070

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 1379
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/email/activity/MessageViewFragment$14;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/email/activity/MessageViewFragment$14;-><init>(Lcom/android/email/activity/MessageViewFragment;IILcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageViewFragment$13;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragment$13;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1447
    :cond_4a
    return-void

    .line 1366
    :pswitch_4b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08056c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1369
    :pswitch_5b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08056d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1372
    :pswitch_6b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08056e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1364
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_5b
        :pswitch_6b
    .end packed-switch
.end method


# virtual methods
.method public clearContent()V
    .registers 5

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1135
    :try_start_3
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    .line 1136
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 1144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 1145
    monitor-exit v1

    .line 1146
    return-void

    .line 1145
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public controlViewCustomView(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    if-nez v0, :cond_9

    .line 1040
    :cond_8
    :goto_8
    return-void

    .line 1035
    :cond_9
    if-eqz p1, :cond_12

    .line 1036
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 1038
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method public enableNavigationButtonsOnView(ZZII)V
    .registers 6
    .parameter "enableMoveToNewer"
    .parameter "enableMoveToOlder"
    .parameter "currentPosition"
    .parameter "countMessages"

    .prologue
    .line 1913
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    if-nez p3, :cond_9

    const/4 v0, 0x1

    if-eq p4, v0, :cond_a

    .line 1922
    :cond_9
    :goto_9
    return-void

    .line 1917
    :cond_a
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToNewerForViewer:Z

    .line 1918
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToOlderForViewer:Z

    .line 1920
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1921
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_9
.end method

.method public getFromSocialHubState()Z
    .registers 2

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFromSocialHub:Z

    return v0
.end method

.method public getMessageId()J
    .registers 3

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->initializeArgCache()V

    .line 376
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected initializeArgCache()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 330
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 368
    :cond_5
    :goto_5
    return-void

    .line 332
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_9e

    .line 333
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "messageId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    .line 334
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "mailBoxId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxId:J

    .line 335
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "openMode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageOpenMode:I

    .line 337
    sget-boolean v3, Lcom/android/email/util/EmailFeature;->DEBUG_FRAGMENTS:Z

    if-eqz v3, :cond_3f

    .line 338
    const-string v3, "Email"

    const-string v4, "MessageViewFragment initializeArgCache"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_3f
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 342
    :try_start_42
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 343
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_90

    .line 345
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_93

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 348
    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    .line 356
    :goto_68
    :try_start_68
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 359
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 360
    .local v2, view:Landroid/view/View;
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 361
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_88} :catch_8a

    goto/16 :goto_5

    .line 362
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #view:Landroid/view/View;
    :catch_8a
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 343
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_90
    move-exception v3

    :try_start_91
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v3

    .line 350
    :cond_93
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadViewCustomView()V

    .line 351
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 352
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_68

    .line 366
    :cond_9e
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    goto/16 :goto_5
.end method

.method protected isMessageSpecified()Z
    .registers 7

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1170
    :try_start_3
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 1171
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public loadViewCustomView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1043
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    .line 1045
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1046
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040044

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    .line 1053
    :goto_18
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    .line 1054
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v1, 0x7f1000db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    .line 1056
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    .line 1057
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v1, 0x7f1000dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    .line 1060
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    return-void

    .line 1049
    :cond_41
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040043

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    goto :goto_18
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1543
    if-nez p2, :cond_3

    .line 1565
    :goto_2
    return-void

    .line 1545
    :cond_3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    :pswitch_a
    goto :goto_2

    .line 1547
    :pswitch_b
    const/4 v0, 0x1

    const v1, 0x7f08015e

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_2

    .line 1551
    :pswitch_13
    const/4 v0, 0x2

    const v1, 0x7f08015f

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_2

    .line 1555
    :pswitch_1b
    const/4 v0, 0x3

    const v1, 0x7f080160

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_2

    .line 1560
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionProposeNewTime(Landroid/content/Context;J)V

    .line 1561
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    goto :goto_2

    .line 1545
    nop

    :pswitch_data_34
    .packed-switch 0x7f1001ef
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_13
        :pswitch_1b
        :pswitch_23
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1539
    :goto_6
    return-void

    .line 1496
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    .line 1511
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    .line 1538
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onClick(Landroid/view/View;)V

    goto :goto_6

    .line 1504
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1505
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->showPop3ImapITPolicyToast()V

    goto :goto_6

    .line 1513
    :sswitch_23
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onClickFavorite()V

    goto :goto_6

    .line 1517
    :sswitch_27
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onInviteLinkClicked()V

    goto :goto_6

    .line 1521
    :sswitch_2b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->moveToOlderView()V

    goto :goto_6

    .line 1525
    :sswitch_31
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->moveToNewerView()V

    goto :goto_6

    .line 1533
    :sswitch_37
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDeleteCalEventClicked()V

    goto :goto_6

    .line 1496
    nop

    :pswitch_data_3c
    .packed-switch 0x7f100215
        :pswitch_19
    .end packed-switch

    .line 1511
    :sswitch_data_42
    .sparse-switch
        0x7f1000db -> :sswitch_31
        0x7f1000dc -> :sswitch_2b
        0x7f1001f0 -> :sswitch_37
        0x7f1001f5 -> :sswitch_27
        0x7f100215 -> :sswitch_23
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 993
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 995
    const-string v0, "MessageViewFragment >>"

    const-string v1, "[HJP] onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v0, "MessageViewFragment >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HJP] newConfig.orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v0, "MessageViewFragment >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HJP] ThreePaneLayout.getCurrentPaneState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_62

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_62

    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v0, :cond_62

    .line 1003
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5c

    .line 1004
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1023
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1024
    return-void

    .line 1006
    :cond_62
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_73

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_5c

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-ne v0, v3, :cond_5c

    .line 1009
    :cond_73
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadViewCustomView()V

    .line 1010
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 1011
    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-ne v0, v3, :cond_98

    .line 1012
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    .line 1016
    :goto_80
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToNewerForViewer:Z

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToOlderForViewer:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->updateNavigationButtonsOnView(ZZ)V

    .line 1017
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_90

    .line 1018
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1020
    :cond_90
    const-string v0, "MessageViewFragment >>"

    const-string v1, "[HJP] onConfigurationChanged setActionBarCustomForMessageView() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 1014
    :cond_98
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_80
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    .line 387
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 388
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020287

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 389
    const v1, 0x7f020288

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 390
    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    .line 391
    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    .line 392
    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    .line 395
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    .line 397
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 398
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040044

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    .line 405
    :goto_5c
    new-instance v1, Lcom/android/email/activity/MessageViewFragment$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragment$1;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    .line 457
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 458
    return-void

    .line 401
    :cond_6d
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040043

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    goto :goto_5c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 15
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v11, 0x7f100321

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 851
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v5

    if-nez v5, :cond_82

    .line 852
    const v5, 0x7f0f0026

    invoke-virtual {p2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 856
    :goto_11
    sput-object p1, Lcom/android/email/activity/MessageViewFragment;->menu:Landroid/view/Menu;

    .line 858
    const-string v5, "MessageViewFragment >>"

    const-string v6, "[HJP] onCreateOptionsMenu() "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const v5, 0x7f10030b

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 861
    .local v3, replyMenu_splitview:Landroid/view/MenuItem;
    const v5, 0x7f10032c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 862
    .local v4, replyallMenu_splitview:Landroid/view/MenuItem;
    const v5, 0x7f1002ee

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 863
    .local v2, forwardMenu_splitview:Landroid/view/MenuItem;
    const v5, 0x7f100309

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 865
    .local v0, deleteMenu_splitview:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_89

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v5

    if-eqz v5, :cond_89

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_89

    .line 937
    :cond_51
    :goto_51
    sget-boolean v5, Lcom/android/email/activity/MessageView;->isSms:Z

    if-eqz v5, :cond_109

    .line 938
    if-eqz v2, :cond_5a

    .line 939
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 940
    :cond_5a
    if-eqz v3, :cond_5f

    .line 941
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 942
    :cond_5f
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 943
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 968
    :goto_69
    iget-boolean v5, p0, Lcom/android/email/activity/MessageViewFragment;->mFromSocialHub:Z

    if-eqz v5, :cond_81

    .line 969
    const v5, 0x7f10032d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 970
    const v5, 0x7f10032f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 988
    :cond_81
    return-void

    .line 854
    .end local v0           #deleteMenu_splitview:Landroid/view/MenuItem;
    .end local v2           #forwardMenu_splitview:Landroid/view/MenuItem;
    .end local v3           #replyMenu_splitview:Landroid/view/MenuItem;
    .end local v4           #replyallMenu_splitview:Landroid/view/MenuItem;
    :cond_82
    const v5, 0x7f0f0025

    invoke-virtual {p2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_11

    .line 870
    .restart local v0       #deleteMenu_splitview:Landroid/view/MenuItem;
    .restart local v2       #forwardMenu_splitview:Landroid/view/MenuItem;
    .restart local v3       #replyMenu_splitview:Landroid/view/MenuItem;
    .restart local v4       #replyallMenu_splitview:Landroid/view/MenuItem;
    :cond_89
    :try_start_89
    iget v5, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    invoke-static {v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isMailboxTypeReplyAndForwardable(I)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 871
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getRecipientlength()I

    move-result v5

    if-le v5, v10, :cond_ef

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 872
    if-eqz v3, :cond_b1

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b1

    .line 874
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/email/activity/MessageViewFragment$6;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageViewFragment$6;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_b1
    .catch Ljava/lang/NullPointerException; {:try_start_89 .. :try_end_b1} :catch_104

    .line 898
    :cond_b1
    :goto_b1
    if-eqz v4, :cond_c5

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_c5

    .line 899
    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/email/activity/MessageViewFragment$8;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageViewFragment$8;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    :cond_c5
    if-eqz v2, :cond_d9

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d9

    .line 916
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/email/activity/MessageViewFragment$9;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageViewFragment$9;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    :cond_d9
    if-eqz v0, :cond_51

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 925
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/email/activity/MessageViewFragment$10;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageViewFragment$10;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_51

    .line 882
    :cond_ef
    if-eqz v3, :cond_b1

    :try_start_f1
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b1

    .line 884
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/email/activity/MessageViewFragment$7;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageViewFragment$7;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_103
    .catch Ljava/lang/NullPointerException; {:try_start_f1 .. :try_end_103} :catch_104

    goto :goto_b1

    .line 894
    :catch_104
    move-exception v1

    .line 895
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_b1

    .line 945
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_109
    if-eqz v2, :cond_10e

    .line 946
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 947
    :cond_10e
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getRecipientlength()I

    move-result v5

    if-le v5, v10, :cond_132

    .line 948
    if-eqz v3, :cond_122

    .line 950
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v5

    if-nez v5, :cond_12b

    .line 951
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 952
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 963
    :cond_122
    :goto_122
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_69

    .line 954
    :cond_12b
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 955
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_122

    .line 959
    :cond_132
    if-eqz v3, :cond_137

    .line 960
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 961
    :cond_137
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_122
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 481
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 482
    .local v0, view:Landroid/view/View;
    const v1, 0x7f1001ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 495
    const v1, 0x7f1001f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    .line 497
    const v1, 0x7f1001ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    .line 498
    const v1, 0x7f1001f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    .line 499
    const v1, 0x7f1001f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    .line 501
    const v1, 0x7f1001f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    .line 502
    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    .line 507
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_5b

    .line 508
    const v1, 0x7f100215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 511
    :cond_5b
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 519
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 520
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 522
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 524
    const v1, 0x7f1001f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    .line 525
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v2, 0x7f1000db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    .line 529
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v2, 0x7f1000dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    .line 531
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 535
    const v1, 0x7f100233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/CustomSpinner;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 536
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->setupReplyAllView()V

    .line 538
    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 549
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    .line 551
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    .line 552
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    .line 554
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    .line 555
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    .line 558
    :cond_17
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    if-eqz v0, :cond_22

    .line 559
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    .line 563
    :cond_22
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 564
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 567
    :cond_31
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 569
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    .line 570
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    .line 571
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    .line 573
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    .line 574
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    .line 575
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    .line 576
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    .line 577
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 578
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 579
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    .line 580
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    .line 581
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    .line 582
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    .line 583
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_58

    .line 584
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 585
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 587
    :cond_58
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    .line 588
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDestroy()V

    .line 589
    return-void
.end method

.method public onMarkMessageAsRead(Z)V
    .registers 7
    .parameter "isRead"

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1334
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_26

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v2, p1, :cond_26

    .line 1337
    iput-boolean p1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1338
    const/4 v2, 0x1

    new-array v1, v2, [J

    .line 1339
    .local v1, messageIds:[J
    const/4 v2, 0x0

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v3, v1, v2

    .line 1340
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v2, v1, p1, v3, v4}, Lcom/android/email/Controller;->setMessageRead([JZJ)Landroid/os/AsyncTask;

    .line 1341
    if-nez p1, :cond_26

    .line 1342
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessageViewFragment$Callback;->onMessageSetUnread()V

    .line 1347
    .end local v1           #messageIds:[J
    :cond_26
    return-void
.end method

.method protected onMessageShown(JI)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1220
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JI)V

    .line 1223
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    .line 1226
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->IsEAS()Z

    move-result v0

    if-ne v0, v4, :cond_51

    .line 1227
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x402c333333333333L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_51

    .line 1229
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    .line 1230
    new-instance v1, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    .line 1231
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    iput-wide v2, v1, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->messageId:J

    .line 1232
    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(J)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1233
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyAllRestrict:Z

    .line 1235
    :cond_3b
    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(J)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1236
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyRestrict:Z

    .line 1238
    :cond_46
    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1239
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isForwardRestrict:Z
    :try_end_51
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_51} :catch_61

    .line 1251
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1254
    invoke-static {p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isMailboxTypeReplyAndForwardable(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 1257
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 1258
    return-void

    .line 1241
    :catch_61
    move-exception v0

    .line 1242
    const-string v1, "Email"

    const-string v2, "may be menuitem is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_51
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 1600
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_104

    .line 1617
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_11a

    .line 1699
    :goto_10
    :pswitch_10
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_14
    return v0

    .line 1610
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1611
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->showPop3ImapITPolicyToast()V

    move v0, v1

    .line 1612
    goto :goto_14

    .line 1625
    :pswitch_20
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMove()V

    move v0, v1

    .line 1626
    goto :goto_14

    .line 1628
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1629
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->IsEAS()Z

    move-result v2

    if-ne v2, v1, :cond_40

    .line 1630
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080091

    invoke-static {v0, v2, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_10

    .line 1633
    :cond_40
    if-eqz v0, :cond_51

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v1, :cond_51

    .line 1634
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080092

    invoke-static {v0, v2, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_10

    .line 1637
    :cond_51
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1638
    iput-object v7, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    .line 1639
    new-instance v0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    invoke-direct {v0, p0, v7}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;-><init>(Lcom/android/email/activity/MessageViewFragment;Lcom/android/email/activity/MessageViewFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    .line 1641
    :try_start_5f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_68

    goto :goto_10

    .line 1642
    :catch_68
    move-exception v0

    .line 1643
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSaveEmailTask.execute(); failed once : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0801fc

    invoke-static {v0, v2, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_10

    .line 1657
    :pswitch_8c
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMarkAsUnread()V

    move v0, v1

    .line 1658
    goto :goto_14

    .line 1661
    :pswitch_91
    const-string v0, "MessageViewFragment >>"

    const-string v2, "[handleMenuItem] ControlPrint Call!!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->ControlPrint()V

    move v0, v1

    .line 1663
    goto/16 :goto_14

    .line 1666
    :pswitch_9e
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onCompose()V

    move v0, v1

    .line 1667
    goto/16 :goto_14

    .line 1670
    :pswitch_a4
    const-string v0, "MessageViewFragment >>"

    const-string v2, "[handleMenuItem] change_bg_color Call!!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDisplayMode()V

    move v0, v1

    .line 1674
    goto/16 :goto_14

    .line 1677
    :pswitch_b1
    const-string v0, "MessageViewFragment >>"

    const-string v2, "[handleMenuItem] change font size onview Call!!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    .line 1679
    goto/16 :goto_14

    .line 1683
    :pswitch_c5
    sput v1, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    .line 1684
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1685
    const-string v2, "IRMRemovalFlag"

    sget v3, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1686
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1688
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-interface {v0, v2, v3}, Lcom/android/email/activity/MessageViewFragment$Callback;->removeIrmProtection(J)V

    move v0, v1

    .line 1689
    goto/16 :goto_14

    .line 1600
    nop

    :sswitch_data_104
    .sparse-switch
        0x7f100215 -> :sswitch_15
        0x7f100309 -> :sswitch_15
        0x7f100321 -> :sswitch_15
        0x7f10032d -> :sswitch_15
        0x7f10032e -> :sswitch_15
    .end sparse-switch

    .line 1617
    :pswitch_data_11a
    .packed-switch 0x7f100321
        :pswitch_20
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_8c
        :pswitch_25
        :pswitch_a4
        :pswitch_91
        :pswitch_9e
        :pswitch_b1
        :pswitch_c5
    .end packed-switch
.end method

.method protected onPostLoadBody()V
    .registers 2

    .prologue
    .line 1835
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 1836
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 25
    .parameter "menu"

    .prologue
    .line 593
    if-nez p1, :cond_3

    .line 831
    :cond_2
    :goto_2
    return-void

    .line 597
    :cond_3
    const-string v19, "MessageViewFragment >>"

    const-string v20, "[HJP] onPrepareOptionsMenu() "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const v19, 0x7f10030b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 600
    .local v16, replyItem:Landroid/view/MenuItem;
    const v19, 0x7f10032c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 601
    .local v17, replyPopupItem:Landroid/view/MenuItem;
    const v19, 0x7f10032d

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 602
    .local v14, readUnReadItem:Landroid/view/MenuItem;
    const v19, 0x7f1002ee

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 603
    .local v9, forwardItem:Landroid/view/MenuItem;
    const v19, 0x7f100309

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 604
    .local v6, deleteItem:Landroid/view/MenuItem;
    const v19, 0x7f100321

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 605
    .local v13, moveItem:Landroid/view/MenuItem;
    const v19, 0x7f10032e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 606
    .local v18, saveItem:Landroid/view/MenuItem;
    const v19, 0x7f100333

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 607
    .local v15, removeIrm:Landroid/view/MenuItem;
    const v19, 0x7f100330

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 609
    .local v12, mobilePrintItem:Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 613
    .local v3, Orientation:I
    const/16 v19, 0x0

    :try_start_7b
    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMailboxId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v19

    if-nez v19, :cond_379

    .line 616
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_97
    .catch Ljava/lang/NullPointerException; {:try_start_7b .. :try_end_97} :catch_38a

    .line 629
    :goto_97
    :try_start_97
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isMailboxTypeReplyAndForwardable(I)Z

    move-result v19

    if-eqz v19, :cond_3b3

    .line 632
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v19

    if-nez v19, :cond_399

    .line 633
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 634
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 643
    :goto_bb
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_c2
    .catch Ljava/lang/NullPointerException; {:try_start_97 .. :try_end_c2} :catch_3ad

    .line 654
    :goto_c2
    const/4 v10, 0x1

    .line 655
    .local v10, isReadUnreadPossible:Z
    :try_start_c3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_101

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_101

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x6

    cmp-long v19, v19, v21

    if-eqz v19, :cond_101

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x5

    cmp-long v19, v19, v21

    if-nez v19, :cond_109

    .line 658
    :cond_101
    const-string v19, "MessageViewFragment >>"

    const-string v20, "[onPrepareOptionsMenu] OutBox or Draft"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v10, 0x0

    .line 661
    :cond_109
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageViewFragment;->mIsSending:Z

    move/from16 v19, v0

    if-nez v19, :cond_113

    if-nez v10, :cond_3ce

    .line 663
    :cond_113
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_11a
    .catch Ljava/lang/NullPointerException; {:try_start_c3 .. :try_end_11a} :catch_3d7

    .line 674
    :goto_11a
    :try_start_11a
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->IsEAS()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_40d

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide v21, 0x402c333333333333L

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_404

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v8

    .line 679
    .local v8, enf:Lcom/android/email/irm/IRMEnforcer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v8, v0, v1}, Lcom/android/email/irm/IRMEnforcer;->isIRMEnabled(J)Z

    move-result v19

    if-nez v19, :cond_3da

    .line 680
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 685
    :goto_156
    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_181

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_181

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyRestrict:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_181

    .line 687
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 689
    :cond_181
    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_1ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyAllRestrict:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1ac

    .line 691
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 693
    :cond_1ac
    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_1d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyRestrict:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d7

    .line 694
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 696
    :cond_1d7
    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_200

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isForwardRestrict:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3e9

    .line 698
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 704
    :cond_200
    :goto_200
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v8, v0, v1}, Lcom/android/email/irm/IRMEnforcer;->isExportAllowed(J)Z

    move-result v19

    if-eqz v19, :cond_3f2

    .line 705
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 710
    :goto_215
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v8, v0, v1}, Lcom/android/email/irm/IRMEnforcer;->isPrintAllowed(J)Z

    move-result v19

    if-eqz v19, :cond_3fb

    .line 711
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_22a
    .catch Ljava/lang/NullPointerException; {:try_start_11a .. :try_end_22a} :catch_3e3

    .line 725
    .end local v8           #enf:Lcom/android/email/irm/IRMEnforcer;
    :goto_22a
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v3, v0, :cond_465

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v19

    if-eqz v19, :cond_465

    .line 726
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_2e8

    .line 727
    const v19, 0x7f04004f

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 728
    const v19, 0x7f040054

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 729
    const v19, 0x7f04004a

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 730
    const v19, 0x7f040045

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 733
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragment;->showContent(ZZ)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/android/email/winset/MessageScrollView;->setVisibility(I)V

    .line 735
    const v19, 0x7f10032d

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 736
    const v19, 0x7f100321

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 737
    const v19, 0x7f10032f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 738
    const v19, 0x7f100330

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 739
    const v19, 0x7f100331

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 741
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v19

    if-nez v19, :cond_2e8

    .line 742
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 744
    :cond_2e8
    sget-boolean v19, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v19, :cond_2fc

    .line 745
    const v19, 0x7f100332

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 747
    :cond_2fc
    if-eqz v16, :cond_353

    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_353

    .line 748
    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f1000dd

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 750
    .local v4, ReplyImageView:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 753
    .local v5, ReplyLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    .line 755
    .local v11, leftMargin:I
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v3, v0, :cond_341

    .line 756
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v19

    if-eqz v19, :cond_341

    .line 757
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v19

    if-nez v19, :cond_446

    .line 758
    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_416

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c016a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 786
    :cond_341
    :goto_341
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v5, v11, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 787
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    .end local v4           #ReplyImageView:Landroid/widget/LinearLayout;
    .end local v5           #ReplyLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #leftMargin:I
    :cond_353
    :goto_353
    sget-boolean v19, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v19, :cond_2

    .line 828
    const v19, 0x7f10032d

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 829
    const v19, 0x7f100321

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 618
    .end local v10           #isReadUnreadPossible:Z
    :cond_379
    :try_start_379
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageViewFragment;->hasMailboxToMove:Z

    move/from16 v19, v0

    if-eqz v19, :cond_390

    .line 619
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_388
    .catch Ljava/lang/NullPointerException; {:try_start_379 .. :try_end_388} :catch_38a

    goto/16 :goto_97

    .line 624
    :catch_38a
    move-exception v7

    .line 625
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_97

    .line 621
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_390
    const/16 v19, 0x0

    :try_start_392
    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_397
    .catch Ljava/lang/NullPointerException; {:try_start_392 .. :try_end_397} :catch_38a

    goto/16 :goto_97

    .line 636
    :cond_399
    const/16 v19, 0x1

    :try_start_39b
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 637
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_3ab
    .catch Ljava/lang/NullPointerException; {:try_start_39b .. :try_end_3ab} :catch_3ad

    goto/16 :goto_bb

    .line 649
    :catch_3ad
    move-exception v7

    .line 650
    .restart local v7       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_c2

    .line 645
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_3b3
    const/16 v19, 0x0

    :try_start_3b5
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 646
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 647
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_3cc
    .catch Ljava/lang/NullPointerException; {:try_start_3b5 .. :try_end_3cc} :catch_3ad

    goto/16 :goto_c2

    .line 666
    .restart local v10       #isReadUnreadPossible:Z
    :cond_3ce
    const/16 v19, 0x1

    :try_start_3d0
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_3d5
    .catch Ljava/lang/NullPointerException; {:try_start_3d0 .. :try_end_3d5} :catch_3d7

    goto/16 :goto_11a

    .line 668
    :catch_3d7
    move-exception v19

    goto/16 :goto_11a

    .line 682
    .restart local v8       #enf:Lcom/android/email/irm/IRMEnforcer;
    :cond_3da
    const/16 v19, 0x1

    :try_start_3dc
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_3e1
    .catch Ljava/lang/NullPointerException; {:try_start_3dc .. :try_end_3e1} :catch_3e3

    goto/16 :goto_156

    .line 722
    .end local v8           #enf:Lcom/android/email/irm/IRMEnforcer;
    :catch_3e3
    move-exception v7

    .line 723
    .restart local v7       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_22a

    .line 700
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v8       #enf:Lcom/android/email/irm/IRMEnforcer;
    :cond_3e9
    const/16 v19, 0x1

    :try_start_3eb
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_200

    .line 707
    :cond_3f2
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_215

    .line 713
    :cond_3fb
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_22a

    .line 717
    .end local v8           #enf:Lcom/android/email/irm/IRMEnforcer;
    :cond_404
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_22a

    .line 720
    :cond_40d
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_414
    .catch Ljava/lang/NullPointerException; {:try_start_3eb .. :try_end_414} :catch_3e3

    goto/16 :goto_22a

    .line 762
    .restart local v4       #ReplyImageView:Landroid/widget/LinearLayout;
    .restart local v5       #ReplyLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11       #leftMargin:I
    :cond_416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c016b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 766
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_341

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c016c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto/16 :goto_341

    .line 774
    :cond_446
    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->isVisible()Z

    move-result v19

    if-nez v19, :cond_452

    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->isVisible()Z

    move-result v19

    if-nez v19, :cond_341

    .line 777
    :cond_452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c016c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto/16 :goto_341

    .line 789
    .end local v4           #ReplyImageView:Landroid/widget/LinearLayout;
    .end local v5           #ReplyLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #leftMargin:I
    :cond_465
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v3, v0, :cond_353

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v19

    if-nez v19, :cond_353

    .line 792
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v19

    if-nez v19, :cond_4dd

    .line 793
    const v19, 0x7f040051

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 794
    const v19, 0x7f040056

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 795
    const v19, 0x7f04004c

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 796
    const v19, 0x7f040047

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 804
    :goto_49b
    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/email/activity/MessageViewFragment$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageViewFragment$2;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/email/activity/MessageViewFragment$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageViewFragment$3;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    invoke-interface {v9}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/email/activity/MessageViewFragment$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageViewFragment$4;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/email/activity/MessageViewFragment$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageViewFragment$5;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_353

    .line 798
    :cond_4dd
    const v19, 0x7f040050

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 799
    const v19, 0x7f040055

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 800
    const v19, 0x7f04004b

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 801
    const v19, 0x7f040046

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_49b
.end method

.method public onReply()V
    .registers 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReply()V

    .line 1801
    return-void
.end method

.method public onReplyAll()V
    .registers 2

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReplyAll()V

    .line 1805
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 543
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onResume()V

    .line 544
    return-void
.end method

.method public openMessage(J)V
    .registers 11
    .parameter "messageId"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1082
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_f

    .line 1083
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 1085
    :cond_f
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1086
    :try_start_12
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 1087
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_a8

    .line 1089
    const-string v3, "MessageViewFragment >>"

    const-string v4, "[HJP] openMessage() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string v3, "MessageViewFragment >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HJP] getResources().getConfiguration().orientation= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-string v3, "MessageViewFragment >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HJP] ThreePaneLayout.getCurrentPaneState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1097
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v3}, Lcom/android/email/winset/MessageScrollView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_6c

    .line 1098
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v3, v6}, Lcom/android/email/winset/MessageScrollView;->setVisibility(I)V

    .line 1100
    :cond_6c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_ab

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1102
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    :goto_84
    :try_start_84
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1123
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 1124
    .local v2, view:Landroid/view/View;
    if-eqz v1, :cond_a4

    if-eqz v2, :cond_a4

    .line 1125
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_a4} :catch_b6

    .line 1129
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #view:Landroid/view/View;
    :cond_a4
    :goto_a4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadMessageIfResumed()V

    .line 1130
    return-void

    .line 1087
    :catchall_a8
    move-exception v3

    :try_start_a9
    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v3

    .line 1105
    :cond_ab
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadViewCustomView()V

    .line 1106
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 1107
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_84

    .line 1126
    :catch_b6
    move-exception v0

    .line 1127
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a4
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 8
    .parameter "activity"

    .prologue
    .line 1179
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1180
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1181
    :try_start_9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    monitor-exit v3

    .line 1189
    :goto_12
    return-object v2

    .line 1182
    :catchall_13
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v2

    .line 1184
    :cond_16
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1185
    :try_start_19
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 1186
    .local v0, messageId:J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_27

    .line 1187
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_12

    .line 1190
    .end local v0           #messageId:J
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw v2

    .line 1189
    .restart local v0       #messageId:J
    :cond_27
    :try_start_27
    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    goto :goto_12
.end method

.method protected resetView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1155
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1156
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    if-eqz v0, :cond_d

    .line 1157
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1159
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    if-eqz v0, :cond_16

    .line 1160
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1162
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1f

    .line 1163
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1165
    :cond_1f
    return-void
.end method

.method public selectReplyAllView()V
    .registers 2

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_9

    .line 1593
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->performClick()Z

    .line 1595
    :cond_9
    return-void
.end method

.method public setActionBarCustomForMessageView()V
    .registers 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1028
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1029
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 1073
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    .line 1074
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-super {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V

    .line 1075
    return-void
.end method

.method public setMailboxId(J)V
    .registers 5
    .parameter "mailboxId"

    .prologue
    .line 1261
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxId:J

    .line 1262
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_c

    .line 1263
    long-to-int v0, p1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    .line 1267
    :goto_b
    return-void

    .line 1265
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    goto :goto_b
.end method

.method public setMoveToMailboxFlag(Z)V
    .registers 2
    .parameter "bool"

    .prologue
    .line 1892
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->hasMailboxToMove:Z

    .line 1893
    return-void
.end method

.method public setSendingProgressFlag(Z)V
    .registers 3
    .parameter "bool"

    .prologue
    .line 1887
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->mIsSending:Z

    .line 1888
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1889
    return-void
.end method

.method public setupReplyAllView()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1571
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080055

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080056

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 1575
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0400be

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    .line 1577
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1578
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1579
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    .line 1580
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v1, Lcom/android/email/activity/MessageViewFragment$16;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragment$16;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1589
    return-void
.end method

.method public showContent(ZZ)V
    .registers 3
    .parameter "showContent"
    .parameter "showProgressWhenHidden"

    .prologue
    .line 1150
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 1151
    return-void
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1842
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 1844
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_14

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_15

    .line 1881
    :cond_14
    :goto_14
    return-void

    .line 1848
    :cond_15
    const-string v0, "eas"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1849
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 1850
    packed-switch v0, :pswitch_data_86

    .line 1866
    :goto_24
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_80

    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v0, :cond_80

    .line 1867
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_78

    .line 1868
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1877
    :goto_40
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4c

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_14

    .line 1879
    :cond_4c
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->addTabFlags(I)V

    goto :goto_14

    .line 1852
    :pswitch_51
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    .line 1855
    :pswitch_59
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    .line 1858
    :pswitch_61
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    .line 1862
    :cond_69
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_71
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    :cond_75
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_71

    .line 1870
    :cond_78
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_40

    .line 1873
    :cond_80
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_40

    .line 1850
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_51
        :pswitch_59
        :pswitch_61
    .end packed-switch
.end method

.method public updateNavigationButtonsOnView(ZZ)V
    .registers 4
    .parameter "enableMoveToNewer"
    .parameter "enableMoveToOlder"

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1926
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1927
    return-void
.end method

.method protected updateTabFlags(I)V
    .registers 4
    .parameter "tabFlags"

    .prologue
    const/4 v1, 0x1

    .line 462
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    .line 463
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    .line 471
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 475
    :cond_12
    return-void
.end method
