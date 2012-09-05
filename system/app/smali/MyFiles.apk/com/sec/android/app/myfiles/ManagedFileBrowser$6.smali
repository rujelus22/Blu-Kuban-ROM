.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;
.super Ljava/lang/Object;
.source "ManagedFileBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 605
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickSoftkey - ITEM_SELECT_MODE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1300(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOperation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1300(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setOperationFiles()Z
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)I

    move-result v0

    if-eq v0, v3, :cond_51

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)I

    move-result v0

    if-ne v0, v4, :cond_5b

    .line 610
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseToFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1600(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Ljava/lang/String;)V

    .line 631
    :cond_5a
    :goto_5a
    return-void

    .line 611
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)I

    move-result v0

    if-ne v0, v5, :cond_5a

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->startFileOperation(I)V
    invoke-static {v0, v5}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;I)V

    goto :goto_5a

    .line 616
    :cond_69
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)I

    move-result v0

    if-ne v0, v3, :cond_91

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationFiles:[Ljava/io/File;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1800(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)[Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->copyPossible([Ljava/io/File;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1900(Lcom/sec/android/app/myfiles/ManagedFileBrowser;[Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->startFileOperation(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;I)V

    goto :goto_5a

    .line 620
    :cond_8b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->showUnableDialog()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2000(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    goto :goto_5a

    .line 622
    :cond_91
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)I

    move-result v0

    if-ne v0, v4, :cond_b9

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationFiles:[Ljava/io/File;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1800(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)[Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->movePossible([Ljava/io/File;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2100(Lcom/sec/android/app/myfiles/ManagedFileBrowser;[Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->startFileOperation(I)V
    invoke-static {v0, v4}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;I)V

    goto :goto_5a

    .line 626
    :cond_b3
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->showUnableDialog()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2000(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    goto :goto_5a

    .line 627
    :cond_b9
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5a

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setAsHome()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2200(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    goto :goto_5a
.end method
