.class Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 147
    const-string v0, "BookmarkActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "messageHandler  BtnPos= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v2

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mBtnPos:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$4(Lcom/infraware/polarisoffice/word/BookmarkActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v1}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v1

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mBtnPos:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$4(Lcom/infraware/polarisoffice/word/BookmarkActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 150
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v0

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$6(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v3}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v3

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mBtnPos:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$4(Lcom/infraware/polarisoffice/word/BookmarkActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/MultiListItem;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/infraware/office/evengine/EvInterface;->IBookmarkEditor(ILjava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v0

    #calls: Lcom/infraware/polarisoffice/word/BookmarkActivity;->initBookmark()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$7(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V

    .line 153
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v0

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$8(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Lcom/infraware/polarisoffice/common/MultiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/MultiAdapter;->notifyDataSetChanged()V

    .line 155
    :cond_81
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mbClick:Z
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$5(Lcom/infraware/polarisoffice/word/BookmarkActivity;Z)V

    .line 156
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 157
    return-void
.end method
