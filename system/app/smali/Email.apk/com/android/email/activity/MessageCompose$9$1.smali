.class Lcom/android/email/activity/MessageCompose$9$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$9;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$9;)V
    .registers 2
    .parameter

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2285
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 2286
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$1202(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 2287
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$1302(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 2288
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2289
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2290
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v1, v1, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 2291
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    .line 2292
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    .line 2293
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    .line 2294
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    .line 2295
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    .line 2296
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    .line 2297
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9$1;->this$1:Lcom/android/email/activity/MessageCompose$9;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    .line 2299
    :cond_86
    return-void
.end method
