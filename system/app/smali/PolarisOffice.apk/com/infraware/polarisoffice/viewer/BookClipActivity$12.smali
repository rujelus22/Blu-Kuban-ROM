.class Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;
.super Ljava/lang/Object;
.source "BookClipActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/viewer/BookClipActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 465
    const-string v1, "BookClipActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "messageHandler  BtnPos= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mBtnPos:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$4(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$8(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBookClip()Lcom/infraware/office/evengine/EV$BOOK_CLIP;

    move-result-object v0

    .line 467
    .local v0, a_Clip:Lcom/infraware/office/evengine/EV$BOOK_CLIP;
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$7(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 468
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mBtnPos:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$4(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)I

    move-result v1

    if-ltz v1, :cond_7c

    .line 469
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mBtnPos:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$4(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 471
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mBtnPos:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$4(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    .line 472
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$8(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvInterface;->IDeleteBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 473
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 474
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #calls: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->initBookClip()V
    invoke-static {v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$9(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    .line 475
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;
    invoke-static {v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$10(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Lcom/infraware/polarisoffice/common/MultiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiAdapter;->notifyDataSetChanged()V

    .line 478
    :cond_7c
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    const/4 v2, 0x0

    #setter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$1(Lcom/infraware/polarisoffice/viewer/BookClipActivity;Z)V

    .line 479
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 480
    return-void
.end method
