.class Lcom/android/email/activity/MessageCompose$51;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$heightLarge:I

.field final synthetic val$heightMedium:I

.field final synthetic val$heightsmall:I

.field final synthetic val$widthLarge:I

.field final synthetic val$widthMedium:I

.field final synthetic val$widthsmall:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;IIIIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13040
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$51;->val$filePath:Ljava/lang/String;

    iput p3, p0, Lcom/android/email/activity/MessageCompose$51;->val$widthLarge:I

    iput p4, p0, Lcom/android/email/activity/MessageCompose$51;->val$heightLarge:I

    iput p5, p0, Lcom/android/email/activity/MessageCompose$51;->val$widthMedium:I

    iput p6, p0, Lcom/android/email/activity/MessageCompose$51;->val$heightMedium:I

    iput p7, p0, Lcom/android/email/activity/MessageCompose$51;->val$widthsmall:I

    iput p8, p0, Lcom/android/email/activity/MessageCompose$51;->val$heightsmall:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 13044
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 13046
    const/4 v1, 0x0

    .line 13047
    .local v1, uriResized:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 13048
    .local v0, result:I
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$13200(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    packed-switch v2, :pswitch_data_76

    .line 13065
    :goto_e
    if-eqz v1, :cond_68

    .line 13066
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {v3, v1}, Lcom/android/email/activity/MessageCompose;->access$7400(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageCompose;->access$13400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v2

    or-int/2addr v0, v2

    .line 13072
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->showResultToast(I)V
    invoke-static {v2, v0}, Lcom/android/email/activity/MessageCompose;->access$6700(Lcom/android/email/activity/MessageCompose;I)V

    .line 13073
    :goto_22
    return-void

    .line 13050
    :pswitch_23
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$51;->val$filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 13051
    goto :goto_e

    .line 13053
    :pswitch_2f
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$51;->val$filePath:Ljava/lang/String;

    iget v4, p0, Lcom/android/email/activity/MessageCompose$51;->val$widthLarge:I

    iget v5, p0, Lcom/android/email/activity/MessageCompose$51;->val$heightLarge:I

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$13200(Lcom/android/email/activity/MessageCompose;)I

    move-result v6

    #calls: Lcom/android/email/activity/MessageCompose;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v1

    .line 13055
    goto :goto_e

    .line 13057
    :pswitch_42
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$51;->val$filePath:Ljava/lang/String;

    iget v4, p0, Lcom/android/email/activity/MessageCompose$51;->val$widthMedium:I

    iget v5, p0, Lcom/android/email/activity/MessageCompose$51;->val$heightMedium:I

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$13200(Lcom/android/email/activity/MessageCompose;)I

    move-result v6

    #calls: Lcom/android/email/activity/MessageCompose;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v1

    .line 13059
    goto :goto_e

    .line 13061
    :pswitch_55
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$51;->val$filePath:Ljava/lang/String;

    iget v4, p0, Lcom/android/email/activity/MessageCompose$51;->val$widthsmall:I

    iget v5, p0, Lcom/android/email/activity/MessageCompose$51;->val$heightsmall:I

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$13200(Lcom/android/email/activity/MessageCompose;)I

    move-result v6

    #calls: Lcom/android/email/activity/MessageCompose;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->access$13300(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v1

    goto :goto_e

    .line 13068
    :cond_68
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$51;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v3, 0x4

    #calls: Lcom/android/email/activity/MessageCompose;->showResultToast(I)V
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageCompose;->access$6700(Lcom/android/email/activity/MessageCompose;I)V

    .line 13069
    const-string v2, "Email"

    const-string v3, "onImageAttachmentResult() file = null"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 13048
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2f
        :pswitch_42
        :pswitch_55
    .end packed-switch
.end method
