.class Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePreviewIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 4
    .parameter
    .parameter "attachmentInfo"

    .prologue
    .line 1915
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1916
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 1917
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mContext:Landroid/content/Context;

    .line 1918
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1919
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "params"

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3500(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1910
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 1928
    if-nez p1, :cond_3

    .line 1932
    :goto_2
    return-void

    .line 1931
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2500(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1910
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
