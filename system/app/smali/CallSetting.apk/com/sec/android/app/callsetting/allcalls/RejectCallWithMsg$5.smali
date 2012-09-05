.class Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 270
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current mState in setOnItemClickListener = :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_ac

    .line 273
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v3, p3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$002(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 274
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItemForEdit:I
    invoke-static {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$302(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 275
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    const/4 v4, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$202(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 276
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v3

    if-nez v3, :cond_68

    .line 278
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.sec.android.app.callsetting"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 280
    .local v2, pkgName:Ljava/lang/String;
    const-string v3, ".allcalls.RejectMessages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, className:Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v3, "UPDATE_MODE"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-virtual {v3, v1, v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->startActivityForResult(Landroid/content/Intent;I)V

    .line 324
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_67
    :goto_67
    return-void

    .line 285
    :cond_68
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$500(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$402(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 289
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.sec.android.app.callsetting"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 290
    .restart local v2       #pkgName:Ljava/lang/String;
    const-string v3, ".allcalls.RejectMessages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0       #className:Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v3, "SELECTED_MESSAGE"

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$400(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v3, "UPDATE_MODE"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-virtual {v3, v1, v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_67

    .line 299
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_ac
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v3

    if-ne v3, v6, :cond_67

    .line 302
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v3, p3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$002(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 303
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v3

    if-nez v3, :cond_ec

    .line 304
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_db

    .line 305
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_67

    .line 312
    :cond_db
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 313
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_67

    .line 320
    :cond_ec
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateDeleteItems()V
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$600(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    goto/16 :goto_67
.end method
