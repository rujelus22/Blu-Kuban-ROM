.class Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
.super Lcom/android/email/AttachmentInfo;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageViewAttachmentInfo"
.end annotation


# instance fields
.field attachmentNameView:Landroid/widget/TextView;

.field bDownloadCompleted:Z

.field bSaveAllDownload:Z

.field bStartDownload:Z

.field cancelButton:Landroid/widget/ImageButton;

.field enableSave:Z

.field enableView:Z

.field iconView:Landroid/widget/ImageView;

.field isCancel:Z

.field isSave:Z

.field loaded:Z

.field progressView:Landroid/widget/ProgressBar;

.field saveButton:Landroid/widget/ImageButton;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 4
    .parameter "context"
    .parameter "attachment"

    .prologue
    const/4 v0, 0x0

    .line 5278
    invoke-direct {p0, p1, p2}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 5266
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bStartDownload:Z

    .line 5268
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 5270
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    .line 5272
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isSave:Z

    .line 5274
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isCancel:Z

    .line 5279
    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    .line 5280
    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    .line 5281
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5250
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method
