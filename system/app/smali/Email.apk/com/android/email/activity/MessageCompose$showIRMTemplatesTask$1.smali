.class Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->onPostExecute(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

.field final synthetic val$templateIds:[Ljava/lang/String;

.field final synthetic val$templates:[Ljava/lang/String;

.field final synthetic val$templatesDescription:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12042
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templateIds:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templates:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templatesDescription:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v2, 0x8

    .line 12046
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templateIds:[Ljava/lang/String;

    aget-object v1, v1, p2

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 12048
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8d

    .line 12049
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templates:[Ljava/lang/String;

    aget-object v1, v1, p2

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1302(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 12050
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templatesDescription:[Ljava/lang/String;

    aget-object v1, v1, p2

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1202(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 12051
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12052
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1200(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12054
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1$1;-><init>(Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12068
    :goto_89
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 12069
    return-void

    .line 12065
    :cond_8d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12066
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_89
.end method
