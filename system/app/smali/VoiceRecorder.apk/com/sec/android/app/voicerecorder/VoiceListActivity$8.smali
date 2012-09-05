.class Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;
.super Ljava/lang/Object;
.source "VoiceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListActivity;->createRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field MAX_PATH_LENGTH:I

.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

.field final synthetic val$prevFile:Ljava/io/File;

.field final synthetic val$prevFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFile:Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1469
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->MAX_PATH_LENGTH:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "arg0"

    .prologue
    const v10, 0x7f060019

    const/4 v9, 0x0

    .line 1473
    sget-object v4, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->medit:Landroid/widget/EditText;

    .line 1475
    .local v4, renameEdit:Landroid/widget/EditText;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1483
    .local v2, destFileName:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2d

    .line 1488
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10, v9}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 1537
    :goto_2c
    return-void

    .line 1493
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-gtz v5, :cond_40

    .line 1495
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060018

    invoke-static {v5, v6, v9}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_2c

    .line 1498
    :cond_40
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 1499
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1500
    .local v3, index:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_7a

    .line 1501
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1509
    .end local v3           #index:I
    :cond_7a
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1511
    .local v1, destFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->MAX_PATH_LENGTH:I

    if-le v5, v6, :cond_c2

    .line 1513
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060030

    invoke-static {v5, v6, v9}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_2c

    .line 1515
    :cond_c2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 1517
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->val$prevFileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e3

    .line 1519
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10, v9}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_2c

    .line 1523
    :cond_e3
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J
    invoke-static {v6}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, Curpath:Ljava/lang/String;
    if-eqz v0, :cond_110

    .line 1526
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J
    invoke-static {v6}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v0, v8}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->renameFile(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z

    .line 1530
    :cond_110
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerTitleView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2000(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_139

    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerTitleView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2000(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_139

    .line 1531
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerTitleView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2000(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    :cond_139
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;
    invoke-static {v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    .line 1536
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    iget-object v5, v5, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_2c
.end method
