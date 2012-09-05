.class Lcom/cooliris/media/HudLayer$52$3;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer$52;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/HudLayer$52;

.field final synthetic val$item:Lcom/cooliris/media/MediaItem;

.field final synthetic val$mEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer$52;Landroid/widget/EditText;Lcom/cooliris/media/MediaItem;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2768
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    iput-object p2, p0, Lcom/cooliris/media/HudLayer$52$3;->val$mEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/cooliris/media/HudLayer$52$3;->val$item:Lcom/cooliris/media/MediaItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 27
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->val$mEditText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->val$mEditText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_6a

    .line 2778
    :cond_2c
    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$1900()Ljava/lang/String;

    move-result-object v19

    const-string v20, "EditBox is empty!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v20, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0600a4

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2885
    :goto_69
    return-void

    .line 2785
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->val$item:Lcom/cooliris/media/MediaItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 2786
    .local v10, mFileFullPath:Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 2788
    .local v12, mFilePath:Ljava/lang/String;
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 2790
    .local v11, mFileName:Ljava/lang/String;
    if-eqz v12, :cond_9a

    if-nez v11, :cond_105

    .line 2791
    :cond_9a
    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$1900()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "invalid file info! mFileFullPath ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v20, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0600a4

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mRenameDialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$2000(Lcom/cooliris/media/HudLayer;)Landroid/app/Dialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_69

    .line 2799
    :cond_105
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->val$mEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2801
    .local v9, mEditTextName:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2807
    .local v15, mNewFileFullPath:Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1af

    .line 2808
    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$1900()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File Name is same! ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v20, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0600a6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_69

    .line 2815
    :cond_1af
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2816
    .local v18, oldFile:Ljava/io/File;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2818
    .local v17, newFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_21d

    .line 2819
    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$1900()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File exist already! ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v20, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0600a6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_69

    .line 2826
    :cond_21d
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v19

    if-nez v19, :cond_2a2

    .line 2827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v20, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0600a5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2830
    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$1900()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File Name Error! oldFile ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] newFile ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mRenameDialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$2000(Lcom/cooliris/media/HudLayer;)Landroid/app/Dialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_69

    .line 2837
    :cond_2a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->val$item:Lcom/cooliris/media/MediaItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v19

    if-nez v19, :cond_311

    .line 2838
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2843
    .local v8, mBaseUri:Landroid/net/Uri;
    :goto_2b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cooliris/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2cc
    :goto_2cc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_314

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/MediaSet;

    .line 2844
    .local v14, mMediaSet:Lcom/cooliris/media/MediaSet;
    invoke-virtual {v14}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2e0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2cc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cooliris/media/MediaItem;

    .line 2845
    .local v13, mMediaItem:Lcom/cooliris/media/MediaItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->val$item:Lcom/cooliris/media/MediaItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/cooliris/media/MediaItem;->equals(Lcom/cooliris/media/MediaItem;)Z

    move-result v19

    if-eqz v19, :cond_2e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->val$item:Lcom/cooliris/media/MediaItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v19

    invoke-virtual {v13}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2e0

    .line 2847
    iput-object v15, v13, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    goto :goto_2cc

    .line 2840
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #mBaseUri:Landroid/net/Uri;
    .end local v13           #mMediaItem:Lcom/cooliris/media/MediaItem;
    .end local v14           #mMediaSet:Lcom/cooliris/media/MediaSet;
    :cond_311
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v8       #mBaseUri:Landroid/net/Uri;
    goto :goto_2b0

    .line 2853
    :cond_314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2854
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2855
    .local v2, args:Landroid/content/ContentValues;
    const-string v19, "_data"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    const-string v19, "_display_name"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    const-string v19, "title"

    const/16 v20, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->val$item:Lcom/cooliris/media/MediaItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v16, v19

    .line 2863
    .local v16, mSelectionArgs:[Ljava/lang/String;
    :try_start_370
    const-string v19, "_id = ?"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v3, v8, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_379
    .catch Ljava/lang/Exception; {:try_start_370 .. :try_end_379} :catch_3a7

    .line 2883
    :goto_379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mRenameDialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$2000(Lcom/cooliris/media/HudLayer;)Landroid/app/Dialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->dismiss()V

    .line 2884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->val$item:Lcom/cooliris/media/MediaItem;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/cooliris/media/DetailMode;->updateFilename(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    goto/16 :goto_69

    .line 2864
    :catch_3a7
    move-exception v4

    .line 2866
    .local v4, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$1900()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "BaseUri ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] ID ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v16, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v20, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0600a5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2874
    const-wide/16 v19, 0x3e8

    :try_start_411
    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_414
    .catch Ljava/lang/InterruptedException; {:try_start_411 .. :try_end_414} :catch_44b

    .line 2880
    :goto_414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52$3;->this$1:Lcom/cooliris/media/HudLayer$52;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    move-object/from16 v19, v0

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v19

    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MEDIA_MOUNTED"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "file://"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_379

    .line 2875
    :catch_44b
    move-exception v5

    .line 2876
    .local v5, e1:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$1900()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Thread sleep error!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_414
.end method
