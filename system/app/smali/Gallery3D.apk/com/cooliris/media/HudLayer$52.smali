.class Lcom/cooliris/media/HudLayer$52;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->setRenameFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/HudLayer;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2698
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 2702
    iget-object v7, p0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 2705
    .local v2, inflater:Landroid/view/LayoutInflater;
    sget-object v7, Lcom/cooliris/app/Res;->layout:Lcom/cooliris/media/R$layout;

    const v7, 0x7f030015

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2707
    .local v6, mRenameView:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/cooliris/media/Gallery;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2708
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    sget-object v7, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v7, 0x7f0600a2

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2709
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2711
    sget-object v7, Lcom/cooliris/app/Res;->id:Lcom/cooliris/media/R$id;

    const v7, 0x7f08002b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 2712
    .local v4, mEditText:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v8, p0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/cooliris/media/HudLayer;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2713
    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 2714
    new-instance v7, Lcom/cooliris/media/HudLayer$52$1;

    invoke-direct {v7, p0, v4}, Lcom/cooliris/media/HudLayer$52$1;-><init>(Lcom/cooliris/media/HudLayer$52;Landroid/widget/EditText;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v7, v8, v9}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2726
    iget-object v7, p0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v7}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 2727
    .local v0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    invoke-static {v0}, Lcom/cooliris/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;

    move-result-object v3

    .line 2728
    .local v3, item:Lcom/cooliris/media/MediaItem;
    if-nez v3, :cond_69

    .line 2901
    :goto_68
    return-void

    .line 2731
    :cond_69
    iget-object v7, p0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    #setter for: Lcom/cooliris/media/HudLayer;->mSetAs:Z
    invoke-static {v7, v10}, Lcom/cooliris/media/HudLayer;->access$1102(Lcom/cooliris/media/HudLayer;Z)Z

    .line 2732
    iget-object v7, p0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v7}, Lcom/cooliris/media/HudLayer;->access$100(Lcom/cooliris/media/HudLayer;)Lcom/cooliris/media/GridLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 2734
    iget-object v7, v3, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    iget-object v8, v3, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    iget-object v9, v3, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2736
    .local v5, mFileName:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2768
    const v7, 0x7f060022

    new-instance v8, Lcom/cooliris/media/HudLayer$52$3;

    invoke-direct {v8, p0, v4, v3}, Lcom/cooliris/media/HudLayer$52$3;-><init>(Lcom/cooliris/media/HudLayer$52;Landroid/widget/EditText;Lcom/cooliris/media/MediaItem;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2889
    const v7, 0x7f060023

    new-instance v8, Lcom/cooliris/media/HudLayer$52$4;

    invoke-direct {v8, p0}, Lcom/cooliris/media/HudLayer$52$4;-><init>(Lcom/cooliris/media/HudLayer$52;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2900
    iget-object v7, p0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    #setter for: Lcom/cooliris/media/HudLayer;->mRenameDialog:Landroid/app/Dialog;
    invoke-static {v7, v8}, Lcom/cooliris/media/HudLayer;->access$2002(Lcom/cooliris/media/HudLayer;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_68
.end method
