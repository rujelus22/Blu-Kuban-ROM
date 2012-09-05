.class Landroid/widget/TextView$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 10792
    iput-object p1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10792
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 10923
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 10925
    const/4 v0, 0x1

    .line 10927
    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_15
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 19
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 10796
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v11, v12}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 10799
    .local v10, styledAttributes:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110038

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 10808
    .local v3, allowText:Z
    const/4 v8, 0x0

    .line 10809
    .local v8, selectAllIconId:I
    if-nez v3, :cond_2a

    .line 10811
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 10816
    :cond_2a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v11}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 10817
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 10822
    :cond_3a
    const/4 v11, 0x0

    const v12, 0x102001f

    const/4 v13, 0x0

    const v14, 0x104000d

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v11

    const/16 v12, 0x61

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10828
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v11}, Landroid/widget/TextView;->access$4900(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_82

    .line 10829
    const/4 v11, 0x0

    const v12, 0x1020020

    const/4 v13, 0x0

    const v14, 0x1040003

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v11

    const/16 v12, 0x78

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10837
    :cond_82
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v11}, Landroid/widget/TextView;->access$5000(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_ae

    .line 10838
    const/4 v11, 0x0

    const v12, 0x1020021

    const/4 v13, 0x0

    const v14, 0x1040001

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v11

    const/16 v12, 0x63

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10846
    :cond_ae
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v11}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_da

    .line 10847
    const/4 v11, 0x0

    const v12, 0x1020022

    const/4 v13, 0x0

    const v14, 0x104000b

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v11

    const/16 v12, 0x76

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10856
    :cond_da
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v11}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_110

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v11}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 10857
    const/4 v11, 0x0

    const v12, 0x1020241

    const/4 v13, 0x0

    const v14, 0x10405c4

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v11

    const/16 v12, 0x70

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10867
    :cond_110
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    const v14, 0x10102d8

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 10870
    .local v2, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v9, v11, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 10872
    .local v9, smallestScreenWidthDp:I
    const/16 v11, 0x258

    if-lt v9, v11, :cond_153

    .line 10874
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v11

    if-lez v11, :cond_1a0

    .line 10875
    const/4 v5, 0x0

    .local v5, i:I
    :goto_140
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v11

    if-ge v5, v11, :cond_1a0

    .line 10876
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10875
    add-int/lit8 v5, v5, 0x1

    goto :goto_140

    .line 10882
    .end local v5           #i:I
    :cond_153
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/widget/TextView;->access$5400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v4, v11, Landroid/util/DisplayMetrics;->density:F

    .line 10883
    .local v4, density:F
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/widget/TextView;->access$5500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x105004d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 10886
    .local v7, mMinCellSize:I
    int-to-float v11, v9

    mul-float/2addr v11, v4

    float-to-int v11, v11

    div-int/2addr v11, v7

    add-int/lit8 v6, v11, -0x1

    .line 10888
    .local v6, mMaxActionModeItems:I
    if-lez v6, :cond_1a0

    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v11

    if-lt v11, v6, :cond_1a0

    .line 10889
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_18d
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v11

    if-ge v5, v11, :cond_1a0

    .line 10890
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10889
    add-int/lit8 v5, v5, 0x1

    goto :goto_18d

    .line 10896
    .end local v4           #density:F
    .end local v5           #i:I
    .end local v6           #mMaxActionModeItems:I
    .end local v7           #mMinCellSize:I
    :cond_1a0
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 10898
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v11}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v11

    if-eqz v11, :cond_1c1

    .line 10899
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v11}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v11

    if-nez v11, :cond_1c1

    .line 10901
    const/4 v11, 0x0

    .line 10909
    :goto_1c0
    return v11

    .line 10905
    :cond_1c1
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v11

    if-nez v11, :cond_1cd

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1da

    .line 10906
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    .line 10907
    const/4 v11, 0x1

    goto :goto_1c0

    .line 10909
    :cond_1da
    const/4 v11, 0x0

    goto :goto_1c0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 10932
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 10933
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 10935
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10937
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$5700(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 10938
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$5700(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 10941
    :cond_33
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$5802(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 10942
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 10915
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 10916
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5600(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 10918
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method
