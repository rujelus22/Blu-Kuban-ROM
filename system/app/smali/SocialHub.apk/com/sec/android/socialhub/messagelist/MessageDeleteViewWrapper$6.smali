.class Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;
.super Ljava/lang/Object;
.source "MessageDeleteViewWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->onDeleteCheckedItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

.field final synthetic val$array_email:Ljava/util/ArrayList;

.field final synthetic val$array_im:Ljava/util/ArrayList;

.field final synthetic val$array_message:Ljava/util/ArrayList;

.field final synthetic val$array_sns:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;

.field final synthetic val$mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;Ljava/util/ArrayList;Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;Ljava/util/ArrayList;Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iput-object p2, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->val$array_message:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->val$mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;

    iput-object p4, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->val$array_email:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->val$array_sns:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;

    iput-object p6, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->val$array_im:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 525
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->onBackPressed()V

    .line 526
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->val$array_message:Ljava/util/ArrayList;

    const-string v2, "1_Messaging"

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->val$mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->val$array_email:Ljava/util/ArrayList;

    const-string v2, "2_Email"

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 528
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->val$array_sns:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$SnsDeleteInfo;)V

    .line 529
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$6;->val$array_im:Ljava/util/ArrayList;

    const-string v2, "4_SevenIM"

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->removeMessage(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 531
    return-void
.end method
