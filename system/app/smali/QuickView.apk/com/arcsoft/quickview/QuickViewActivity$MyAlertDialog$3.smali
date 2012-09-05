.class Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 17
    .parameter "v"

    .prologue
    .line 1514
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->linear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->access$2100(Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;)Landroid/widget/LinearLayout;

    move-result-object v9

    const v10, 0x7f06001a

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1515
    .local v5, editText2:Landroid/widget/EditText;
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v11, v11, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;
    invoke-static {v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2300(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v13, v13, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;
    invoke-static {v13}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2300(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v11, v11, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;
    invoke-static {v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2300(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v12, v12, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;
    invoke-static {v12}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2300(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2202(Lcom/arcsoft/quickview/QuickViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1517
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 1518
    const-string v9, "QuickViewActivity:"

    const-string v10, "EditBox is empty!"

    invoke-static {v9, v10}, Lcom/arcsoft/android/camera/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f04001b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showToast(Ljava/lang/String;I)V
    invoke-static {v9, v10, v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2000(Lcom/arcsoft/quickview/QuickViewActivity;Ljava/lang/String;I)V

    .line 1581
    :goto_9e
    return-void

    .line 1523
    :cond_9f
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;
    invoke-static {v9}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2300(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;
    invoke-static {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2200(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cd

    .line 1525
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f04001c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showToast(Ljava/lang/String;I)V
    invoke-static {v9, v10, v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2000(Lcom/arcsoft/quickview/QuickViewActivity;Ljava/lang/String;I)V

    goto :goto_9e

    .line 1529
    :cond_cd
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mSrcPath:Ljava/lang/String;
    invoke-static {v9}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2300(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1530
    .local v8, src:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;
    invoke-static {v9}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2200(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1532
    .local v2, dest:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_105

    .line 1534
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f04001c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showToast(Ljava/lang/String;I)V
    invoke-static {v9, v10, v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2000(Lcom/arcsoft/quickview/QuickViewActivity;Ljava/lang/String;I)V

    goto :goto_9e

    .line 1538
    :cond_105
    invoke-virtual {v8, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_124

    .line 1540
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f04001e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showToast(Ljava/lang/String;I)V
    invoke-static {v9, v10, v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2000(Lcom/arcsoft/quickview/QuickViewActivity;Ljava/lang/String;I)V

    goto/16 :goto_9e

    .line 1545
    :cond_124
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z
    invoke-static {v9}, Lcom/arcsoft/quickview/QuickViewActivity;->access$200(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v9

    if-eqz v9, :cond_20f

    .line 1546
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1551
    .local v6, mBaseUri:Landroid/net/Uri;
    :goto_130
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v9}, Lcom/arcsoft/quickview/QuickViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1552
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1553
    .local v0, args:Landroid/content/ContentValues;
    const-string v9, "_data"

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;
    invoke-static {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2200(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const-string v9, "_display_name"

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;
    invoke-static {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2200(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v11, v11, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;
    invoke-static {v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2200(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const-string v9, "title"

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;
    invoke-static {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2200(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v11, v11, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;
    invoke-static {v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2200(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v12, v12, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;
    invoke-static {v12}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2200(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v10

    iget-object v11, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v11, v11, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/arcsoft/quickview/MediaList;->getCurrent()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/arcsoft/quickview/MediaList;->getID(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 1562
    .local v7, mSelectionArgs:[Ljava/lang/String;
    :try_start_1bc
    const-string v9, "_id = ?"

    invoke-virtual {v1, v6, v0, v9, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1c1} :catch_213

    .line 1575
    :goto_1c1
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v9}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v9

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/arcsoft/quickview/MediaList;->getCurrent()I

    move-result v10

    iget-object v11, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v11, v11, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDestPath:Ljava/lang/String;
    invoke-static {v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2200(Lcom/arcsoft/quickview/QuickViewActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/arcsoft/quickview/MediaList;->rename(ILjava/lang/String;)V

    .line 1576
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mQuickView:Lcom/arcsoft/widget/QuickView;
    invoke-static {v9}, Lcom/arcsoft/quickview/QuickViewActivity;->access$1000(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/widget/QuickView;

    move-result-object v9

    const v10, 0xa92704

    iget-object v11, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v11, v11, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMediaList:Lcom/arcsoft/quickview/MediaList;
    invoke-static {v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$800(Lcom/arcsoft/quickview/QuickViewActivity;)Lcom/arcsoft/quickview/MediaList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/arcsoft/quickview/MediaList;->getCurrent()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/arcsoft/widget/QuickView;->updateItem(II)V

    .line 1579
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v10, v11, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Lcom/arcsoft/quickview/QuickViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1580
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    invoke-virtual {v9}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->dismiss()V

    goto/16 :goto_9e

    .line 1548
    .end local v0           #args:Landroid/content/ContentValues;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v6           #mBaseUri:Landroid/net/Uri;
    .end local v7           #mSelectionArgs:[Ljava/lang/String;
    :cond_20f
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v6       #mBaseUri:Landroid/net/Uri;
    goto/16 :goto_130

    .line 1563
    .restart local v0       #args:Landroid/content/ContentValues;
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v7       #mSelectionArgs:[Ljava/lang/String;
    :catch_213
    move-exception v3

    .line 1565
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1566
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iget-object v10, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v10, v10, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v10}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f04001e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showToast(Ljava/lang/String;I)V
    invoke-static {v9, v10, v11}, Lcom/arcsoft/quickview/QuickViewActivity;->access$2000(Lcom/arcsoft/quickview/QuickViewActivity;Ljava/lang/String;I)V

    .line 1568
    const-wide/16 v9, 0x3e8

    :try_start_230
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_233
    .catch Ljava/lang/InterruptedException; {:try_start_230 .. :try_end_233} :catch_25e

    .line 1573
    :goto_233
    iget-object v9, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iget-object v9, v9, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Lcom/arcsoft/quickview/QuickViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1c1

    .line 1569
    :catch_25e
    move-exception v4

    .line 1570
    .local v4, e1:Ljava/lang/InterruptedException;
    const-string v9, "QuickViewActivity:"

    const-string v10, "Thread sleep error!"

    invoke-static {v9, v10}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_233
.end method
