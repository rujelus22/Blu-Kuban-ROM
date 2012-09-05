.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final FULL_GROW:I = 0x0

.field private static final ON_EXIT_CLOSE_DELAY:I = 0x320

.field private static final PARTIAL_GROW:I = 0x1

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field static final STATE_ANIMATING:I = 0x1

.field static final STATE_NONE:I = -0x1

.field static final STATE_OPEN:I = 0x2

.field static final STATE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sHintText:Ljava/lang/String;


# instance fields
.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field protected mContent:Lcom/android/launcher2/CellLayout;

.field private mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

.field private mCurrentDragView:Landroid/view/View;

.field private mDeleteFolderOnDropCompleted:Z

.field protected mDragController:Lcom/android/launcher2/DragController;

.field private mDragInProgress:Z

.field private mEmptyCell:[I

.field private mExpandDuration:I

.field private mFolderIcon:Lcom/android/launcher2/FolderIcon;

.field mFolderName:Lcom/android/launcher2/FolderEditText;

.field private mFolderNameHeight:I

.field private final mIconCache:Lcom/android/launcher2/IconCache;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconRect:Landroid/graphics/Rect;

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/android/launcher2/FolderInfo;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field private mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxCountX:I

.field private mMaxCountY:I

.field private mMaxNumItems:I

.field private mMode:I

.field private mNewSize:Landroid/graphics/Rect;

.field private mOnExitAlarm:Lcom/android/launcher2/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher2/OnAlarmListener;

.field private mPreviousTargetCell:[I

.field private mRearrangeOnClose:Z

.field private mReorderAlarm:Lcom/android/launcher2/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

.field private mState:I

.field private mSuppressFolderDeletion:Z

.field mSuppressOnAdd:Z

.field private mTargetCell:[I

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/Folder;->mState:I

    .line 81
    iput v4, p0, Lcom/android/launcher2/Folder;->mMode:I

    .line 82
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mNewSize:Landroid/graphics/Rect;

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mIconRect:Landroid/graphics/Rect;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 91
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 95
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    .line 96
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    .line 97
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    .line 98
    new-instance v1, Lcom/android/launcher2/Alarm;

    invoke-direct {v1}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 99
    new-instance v1, Lcom/android/launcher2/Alarm;

    invoke-direct {v1}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 178
    new-instance v1, Lcom/android/launcher2/Folder$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$1;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 567
    new-instance v1, Lcom/android/launcher2/Folder$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$6;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    .line 664
    new-instance v1, Lcom/android/launcher2/Folder$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$7;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    .line 128
    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    .line 129
    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    .line 130
    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    if-ltz v1, :cond_a6

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    if-ltz v1, :cond_a6

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    if-gez v1, :cond_b9

    .line 131
    :cond_a6
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    .line 132
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    .line 133
    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    iget v2, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    .line 136
    :cond_b9
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 139
    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 141
    sget-object v1, Lcom/android/launcher2/Folder;->sDefaultFolderName:Ljava/lang/String;

    if-nez v1, :cond_db

    .line 142
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Folder;->sDefaultFolderName:Ljava/lang/String;

    .line 144
    :cond_db
    sget-object v1, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    if-nez v1, :cond_e8

    .line 145
    const v1, 0x7f0c0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    .line 147
    :cond_e8
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 151
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->setFocusableInTouchMode(Z)V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Folder;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Folder;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/launcher2/Folder;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/launcher2/Folder;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/Folder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setFocusOnFirstChild()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/Folder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Folder;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Folder;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Folder;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/Folder;[I[I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;->realTimeReorder([I[I)V

    return-void
.end method

.method private arrangeChildren(Ljava/util/ArrayList;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 864
    .local v12, vacant:[I
    if-nez p1, :cond_9

    .line 865
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object p1

    .line 867
    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViews()V

    .line 869
    const/4 v8, 0x0

    .local v8, i:I
    :goto_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_72

    .line 870
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 871
    .local v11, v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v12, v2, v3}, Lcom/android/launcher2/CellLayout;->getVacantCell([III)Z

    .line 872
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 873
    .local v10, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v0, 0x0

    aget v0, v12, v0

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 874
    const/4 v0, 0x1

    aget v0, v12, v0

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 875
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 876
    .local v1, info:Lcom/android/launcher2/ItemInfo;
    iget v0, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    const/4 v2, 0x0

    aget v2, v12, v2

    if-ne v0, v2, :cond_46

    iget v0, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v2, 0x1

    aget v2, v12, v2

    if-eq v0, v2, :cond_5e

    .line 877
    :cond_46
    const/4 v0, 0x0

    aget v0, v12, v0

    iput v0, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 878
    const/4 v0, 0x1

    aget v0, v12, v0

    iput v0, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 879
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher2/FolderInfo;->id:J

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 882
    :cond_5e
    const/4 v9, 0x0

    .line 883
    .local v9, insert:Z
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    if-eqz v9, :cond_70

    const/4 v4, 0x0

    :goto_64
    iget-wide v5, v1, Lcom/android/launcher2/ItemInfo;->id:J

    long-to-int v5, v5

    const/4 v7, 0x1

    move-object v3, v11

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 869
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 883
    :cond_70
    const/4 v4, -0x1

    goto :goto_64

    .line 885
    .end local v1           #info:Lcom/android/launcher2/ItemInfo;
    .end local v9           #insert:Z
    .end local v10           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v11           #v:Landroid/view/View;
    :cond_72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 886
    return-void
.end method

.method private centerAboutIcon()V
    .registers 26

    .prologue
    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 782
    .local v18, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v23

    add-int v21, v22, v23

    .line 783
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    move/from16 v23, v0

    add-int v16, v22, v23

    .line 785
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v22, v0

    const v23, 0x7f060018

    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/DragLayer;

    .line 787
    .local v19, parent:Lcom/android/launcher2/DragLayer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 790
    .local v7, centerX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 791
    .local v8, centerY:I
    div-int/lit8 v22, v21, 0x2

    sub-int v9, v7, v22

    .line 792
    .local v9, centeredLeft:I
    div-int/lit8 v22, v16, 0x2

    sub-int v10, v8, v22

    .line 795
    .local v10, centeredTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v11

    .line 796
    .local v11, currentPage:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 797
    .local v5, boundingLayout:Lcom/android/launcher2/CellLayoutChildren;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 798
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 801
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v22

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    add-int v23, v23, v24

    sub-int v23, v23, v21

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 803
    .local v17, left:I
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v22

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v23, v23, v24

    sub-int v23, v23, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 806
    .local v20, top:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_e2

    .line 807
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v23

    sub-int v23, v23, v21

    div-int/lit8 v23, v23, 0x2

    add-int v17, v22, v23

    .line 809
    :cond_e2
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_fa

    .line 810
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v23

    sub-int v23, v23, v16

    div-int/lit8 v23, v23, 0x2

    add-int v20, v22, v23

    .line 813
    :cond_fa
    div-int/lit8 v22, v21, 0x2

    sub-int v23, v9, v17

    add-int v14, v22, v23

    .line 814
    .local v14, folderPivotX:I
    div-int/lit8 v22, v16, 0x2

    sub-int v23, v10, v20

    add-int v15, v22, v23

    .line 815
    .local v15, folderPivotY:I
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->setPivotX(F)V

    .line 816
    int-to-float v0, v15

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->setPivotY(F)V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/FolderIcon;->getMeasuredWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f80

    int-to-float v0, v14

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v12, v0

    .line 819
    .local v12, folderIconPivotX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/FolderIcon;->getMeasuredHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f80

    int-to-float v0, v15

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v13, v0

    .line 821
    .local v13, folderIconPivotY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    move-object/from16 v22, v0

    int-to-float v0, v12

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/FolderIcon;->setPivotX(F)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    move-object/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/FolderIcon;->setPivotY(F)V

    .line 824
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19d

    .line 825
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 826
    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 827
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 828
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 832
    :goto_19c
    return-void

    .line 830
    :cond_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mNewSize:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    add-int v23, v17, v21

    add-int v24, v20, v16

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_19c
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;
    .registers 4
    .parameter "context"

    .prologue
    .line 359
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method private getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "recycle"

    .prologue
    .line 644
    if-nez p6, :cond_28

    .line 645
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 654
    .local v1, res:[F
    :goto_5
    sub-int v0, p1, p3

    .line 655
    .local v0, left:I
    sub-int v2, p2, p4

    .line 658
    .local v2, top:I
    const/4 v3, 0x0

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 659
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 661
    return-object v1

    .line 647
    .end local v0           #left:I
    .end local v1           #res:[F
    .end local v2           #top:I
    :cond_28
    move-object v1, p6

    .restart local v1       #res:[F
    goto :goto_5
.end method

.method private getViewForInfo(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .registers 6
    .parameter "item"

    .prologue
    .line 1024
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 1025
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 1026
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 1027
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1f

    .line 1032
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1e
    return-object v2

    .line 1025
    .restart local v0       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1024
    .end local v2           #v:Landroid/view/View;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1032
    .end local v0           #i:I
    :cond_25
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method private onCloseComplete()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer;

    .line 898
    .local v0, parent:Lcom/android/launcher2/DragLayer;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 899
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 900
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearFocus()V

    .line 901
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIcon;->requestFocus()Z

    .line 903
    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    if-eqz v1, :cond_25

    .line 904
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 905
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 907
    :cond_25
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v3, :cond_36

    .line 908
    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    if-nez v1, :cond_39

    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    if-nez v1, :cond_39

    .line 909
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->replaceFolderWithFinalItem()V

    .line 914
    :cond_36
    :goto_36
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    .line 915
    return-void

    .line 910
    :cond_39
    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    if-eqz v1, :cond_36

    .line 911
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_36
.end method

.method private positionAndSizeAsIcon()V
    .registers 6

    .prologue
    const v3, 0x3f4ccccd

    const/4 v4, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragLayer;

    if-nez v1, :cond_d

    .line 384
    :goto_c
    return-void

    .line 369
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 371
    .local v0, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget v1, p0, Lcom/android/launcher2/Folder;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 372
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setScaleX(F)V

    .line 373
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setScaleY(F)V

    .line 374
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->setAlpha(F)V

    .line 383
    :goto_21
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/Folder;->mState:I

    goto :goto_c

    .line 376
    :cond_25
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 377
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 378
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 379
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 380
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 381
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    goto :goto_21
.end method

.method private realTimeReorder([I[I)V
    .registers 21
    .parameter "empty"
    .parameter "target"

    .prologue
    .line 586
    const/4 v8, 0x0

    .line 587
    .local v8, delay:I
    const/high16 v9, 0x41f0

    .line 588
    .local v9, delayAmount:F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Folder;->readingOrderGreaterThan([I[I)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 589
    const/4 v3, 0x0

    aget v3, p1, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_77

    const/4 v13, 0x1

    .line 590
    .local v13, wrap:Z
    :goto_1f
    if-eqz v13, :cond_79

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v12, v3, 0x1

    .line 591
    .local v12, startY:I
    :goto_26
    move v15, v12

    .local v15, y:I
    :goto_27
    const/4 v3, 0x1

    aget v3, p2, v3

    if-gt v15, v3, :cond_f3

    .line 592
    const/4 v3, 0x1

    aget v3, p1, v3

    if-ne v15, v3, :cond_7d

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v11, v3, 0x1

    .line 593
    .local v11, startX:I
    :goto_36
    const/4 v3, 0x1

    aget v3, p2, v3

    if-ge v15, v3, :cond_7f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    .line 594
    .local v10, endX:I
    :goto_45
    move v14, v11

    .local v14, x:I
    :goto_46
    if-gt v14, v10, :cond_83

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, v14, v15}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 596
    .local v4, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v5, 0x0

    aget v5, p1, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    const/16 v7, 0xe6

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 598
    const/4 v3, 0x0

    aput v14, p1, v3

    .line 599
    const/4 v3, 0x1

    aput v15, p1, v3

    .line 600
    int-to-float v3, v8

    add-float/2addr v3, v9

    float-to-int v8, v3

    .line 601
    float-to-double v5, v9

    const-wide v16, 0x3feccccccccccccdL

    mul-double v5, v5, v16

    double-to-float v9, v5

    .line 594
    :cond_74
    add-int/lit8 v14, v14, 0x1

    goto :goto_46

    .line 589
    .end local v4           #v:Landroid/view/View;
    .end local v10           #endX:I
    .end local v11           #startX:I
    .end local v12           #startY:I
    .end local v13           #wrap:Z
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_77
    const/4 v13, 0x0

    goto :goto_1f

    .line 590
    .restart local v13       #wrap:Z
    :cond_79
    const/4 v3, 0x1

    aget v12, p1, v3

    goto :goto_26

    .line 592
    .restart local v12       #startY:I
    .restart local v15       #y:I
    :cond_7d
    const/4 v11, 0x0

    goto :goto_36

    .line 593
    .restart local v11       #startX:I
    :cond_7f
    const/4 v3, 0x0

    aget v10, p2, v3

    goto :goto_45

    .line 591
    .restart local v10       #endX:I
    .restart local v14       #x:I
    :cond_83
    add-int/lit8 v15, v15, 0x1

    goto :goto_27

    .line 606
    .end local v10           #endX:I
    .end local v11           #startX:I
    .end local v12           #startY:I
    .end local v13           #wrap:Z
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_86
    const/4 v3, 0x0

    aget v3, p1, v3

    if-nez v3, :cond_db

    const/4 v13, 0x1

    .line 607
    .restart local v13       #wrap:Z
    :goto_8c
    if-eqz v13, :cond_dd

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v12, v3, -0x1

    .line 608
    .restart local v12       #startY:I
    :goto_93
    move v15, v12

    .restart local v15       #y:I
    :goto_94
    const/4 v3, 0x1

    aget v3, p2, v3

    if-lt v15, v3, :cond_f3

    .line 609
    const/4 v3, 0x1

    aget v3, p1, v3

    if-ne v15, v3, :cond_e1

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v11, v3, -0x1

    .line 610
    .restart local v11       #startX:I
    :goto_a3
    const/4 v3, 0x1

    aget v3, p2, v3

    if-le v15, v3, :cond_ec

    const/4 v10, 0x0

    .line 611
    .restart local v10       #endX:I
    :goto_a9
    move v14, v11

    .restart local v14       #x:I
    :goto_aa
    if-lt v14, v10, :cond_f0

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, v14, v15}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 613
    .restart local v4       #v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v5, 0x0

    aget v5, p1, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    const/16 v7, 0xe6

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 615
    const/4 v3, 0x0

    aput v14, p1, v3

    .line 616
    const/4 v3, 0x1

    aput v15, p1, v3

    .line 617
    int-to-float v3, v8

    add-float/2addr v3, v9

    float-to-int v8, v3

    .line 618
    float-to-double v5, v9

    const-wide v16, 0x3feccccccccccccdL

    mul-double v5, v5, v16

    double-to-float v9, v5

    .line 611
    :cond_d8
    add-int/lit8 v14, v14, -0x1

    goto :goto_aa

    .line 606
    .end local v4           #v:Landroid/view/View;
    .end local v10           #endX:I
    .end local v11           #startX:I
    .end local v12           #startY:I
    .end local v13           #wrap:Z
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_db
    const/4 v13, 0x0

    goto :goto_8c

    .line 607
    .restart local v13       #wrap:Z
    :cond_dd
    const/4 v3, 0x1

    aget v12, p1, v3

    goto :goto_93

    .line 609
    .restart local v12       #startY:I
    .restart local v15       #y:I
    :cond_e1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    add-int/lit8 v11, v3, -0x1

    goto :goto_a3

    .line 610
    .restart local v11       #startX:I
    :cond_ec
    const/4 v3, 0x0

    aget v10, p2, v3

    goto :goto_a9

    .line 608
    .restart local v10       #endX:I
    .restart local v14       #x:I
    :cond_f0
    add-int/lit8 v15, v15, -0x1

    goto :goto_94

    .line 623
    .end local v10           #endX:I
    .end local v11           #startX:I
    .end local v14           #x:I
    :cond_f3
    return-void
.end method

.method private replaceFolderWithFinalItem()V
    .registers 13

    .prologue
    .line 918
    const/4 v1, 0x0

    .line 920
    .local v1, finalItem:Lcom/android/launcher2/ItemInfo;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 921
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #finalItem:Lcom/android/launcher2/ItemInfo;
    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 925
    .restart local v1       #finalItem:Lcom/android/launcher2/ItemInfo;
    :cond_13
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v4, v2, Lcom/android/launcher2/FolderInfo;->container:J

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v2, v2, Lcom/android/launcher2/FolderInfo;->screen:I

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v11

    .line 926
    .local v11, cellLayout:Lcom/android/launcher2/CellLayout;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 927
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher2/DropTarget;

    if-eqz v0, :cond_35

    .line 928
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    check-cast v0, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 930
    :cond_35
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->removeFolder(Lcom/android/launcher2/FolderInfo;)V

    .line 932
    if-eqz v1, :cond_53

    .line 933
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher2/FolderInfo;->container:J

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v4, v4, Lcom/android/launcher2/FolderInfo;->screen:I

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v5, v5, Lcom/android/launcher2/FolderInfo;->cellX:I

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v6, v6, Lcom/android/launcher2/FolderInfo;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 936
    :cond_53
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-static {v0, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 939
    if-eqz v1, :cond_88

    .line 940
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    const v2, 0x7f030002

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .end local v1           #finalItem:Lcom/android/launcher2/ItemInfo;
    invoke-virtual {v0, v2, v11, v1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v3

    .line 943
    .local v3, child:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v4, v0, Lcom/android/launcher2/FolderInfo;->container:J

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v6, v0, Lcom/android/launcher2/FolderInfo;->screen:I

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v7, v0, Lcom/android/launcher2/FolderInfo;->cellX:I

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v8, v0, Lcom/android/launcher2/FolderInfo;->cellY:I

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v9, v0, Lcom/android/launcher2/FolderInfo;->spanX:I

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v10, v0, Lcom/android/launcher2/FolderInfo;->spanY:I

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    .line 946
    .end local v3           #child:Landroid/view/View;
    :cond_88
    return-void
.end method

.method private sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .registers 5
    .parameter "type"
    .parameter "text"

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 444
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 445
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 446
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 449
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_23
    return-void
.end method

.method private setFocusOnFirstChild()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 452
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 453
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_c

    .line 454
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 456
    :cond_c
    return-void
.end method

.method private setupContentDimensions(I)V
    .registers 10
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 749
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 750
    .local v0, countX:I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v1

    .line 751
    .local v1, countY:I
    const/4 v2, 0x0

    .line 753
    .local v2, done:Z
    :goto_12
    if-nez v2, :cond_53

    .line 754
    move v4, v0

    .line 755
    .local v4, oldCountX:I
    move v5, v1

    .line 756
    .local v5, oldCountY:I
    mul-int v7, v0, v1

    if-ge v7, p1, :cond_37

    .line 758
    if-le v0, v1, :cond_20

    iget v7, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    if-ne v1, v7, :cond_30

    :cond_20
    iget v7, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    if-ge v0, v7, :cond_30

    .line 759
    add-int/lit8 v0, v0, 0x1

    .line 763
    :cond_26
    :goto_26
    if-nez v1, :cond_2a

    add-int/lit8 v1, v1, 0x1

    .line 769
    :cond_2a
    :goto_2a
    if-ne v0, v4, :cond_51

    if-ne v1, v5, :cond_51

    const/4 v2, 0x1

    .line 770
    :goto_2f
    goto :goto_12

    .line 760
    :cond_30
    iget v7, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    if-ge v1, v7, :cond_26

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 764
    :cond_37
    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v7, v0

    if-lt v7, p1, :cond_45

    if-lt v1, v0, :cond_45

    .line 765
    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2a

    .line 766
    :cond_45
    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v7, v1

    if-lt v7, p1, :cond_2a

    .line 767
    add-int/lit8 v7, v0, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2a

    :cond_51
    move v2, v6

    .line 769
    goto :goto_2f

    .line 771
    .end local v4           #oldCountX:I
    .end local v5           #oldCountY:I
    :cond_53
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 772
    invoke-direct {p0, v3}, Lcom/android/launcher2/Folder;->arrangeChildren(Ljava/util/ArrayList;)V

    .line 773
    return-void
.end method

.method private setupContentForNumItems(I)V
    .registers 4
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    .line 835
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 837
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 838
    .local v0, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    if-nez v0, :cond_17

    .line 839
    new-instance v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .end local v0           #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-direct {v0, v1, v1}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .line 840
    .restart local v0       #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 841
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    :cond_17
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 844
    return-void
.end method

.method private updateItemLocationsInDatabase()V
    .registers 11

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v8

    .line 724
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_28

    .line 725
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 726
    .local v9, v:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 727
    .local v1, info:Lcom/android/launcher2/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher2/FolderInfo;->id:J

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 724
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 730
    .end local v1           #info:Lcom/android/launcher2/ItemInfo;
    .end local v9           #v:Landroid/view/View;
    :cond_28
    return-void
.end method

.method private updateTextViewFocus()V
    .registers 4

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 952
    .local v0, lastChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    .line 953
    if-eqz v0, :cond_39

    .line 954
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusDownId(I)V

    .line 955
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusRightId(I)V

    .line 956
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusLeftId(I)V

    .line 957
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusUpId(I)V

    .line 959
    :cond_39
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 6
    .parameter "d"

    .prologue
    const/4 v2, 0x1

    .line 513
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 514
    .local v0, item:Lcom/android/launcher2/ItemInfo;
    iget v1, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 515
    .local v1, itemType:I
    if-eqz v1, :cond_b

    if-ne v1, v2, :cond_12

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isFull()Z

    move-result v3

    if-nez v3, :cond_12

    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public animateClosed()V
    .registers 15

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher2/DragLayer;

    if-nez v10, :cond_9

    .line 503
    :goto_8
    return-void

    .line 462
    :cond_9
    iget v10, p0, Lcom/android/launcher2/Folder;->mMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5b

    .line 463
    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 464
    .local v0, alpha:Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleX"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const v13, 0x3f666666

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 465
    .local v5, scaleX:Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleY"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const v13, 0x3f666666

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 466
    .local v6, scaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {p0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 488
    .end local v5           #scaleX:Landroid/animation/PropertyValuesHolder;
    .end local v6           #scaleY:Landroid/animation/PropertyValuesHolder;
    .local v4, oa:Landroid/animation/ObjectAnimator;
    :goto_49
    new-instance v10, Lcom/android/launcher2/Folder$5;

    invoke-direct {v10, p0}, Lcom/android/launcher2/Folder$5;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 501
    iget v10, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 502
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_8

    .line 468
    .end local v0           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v4           #oa:Landroid/animation/ObjectAnimator;
    :cond_5b
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 470
    .local v3, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    const-string v10, "width"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/launcher2/Folder;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 471
    .local v7, width:Landroid/animation/PropertyValuesHolder;
    const-string v10, "height"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/launcher2/Folder;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 472
    .local v2, height:Landroid/animation/PropertyValuesHolder;
    const-string v10, "x"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/launcher2/Folder;->mIconRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 473
    .local v8, x:Landroid/animation/PropertyValuesHolder;
    const-string v10, "y"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/launcher2/Folder;->mIconRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 474
    .local v9, y:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v11, 0x2

    aput-object v8, v10, v11

    const/4 v11, 0x3

    aput-object v9, v10, v11

    invoke-static {v3, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 475
    .restart local v4       #oa:Landroid/animation/ObjectAnimator;
    new-instance v10, Lcom/android/launcher2/Folder$4;

    invoke-direct {v10, p0}, Lcom/android/launcher2/Folder$4;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 481
    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 482
    .restart local v0       #alpha:Landroid/animation/PropertyValuesHolder;
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 483
    .local v1, alphaOa:Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 484
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x4000

    invoke-direct {v10, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 485
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_49
.end method

.method public animateOpen()V
    .registers 15

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->positionAndSizeAsIcon()V

    .line 389
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher2/DragLayer;

    if-nez v10, :cond_c

    .line 440
    :goto_b
    return-void

    .line 392
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 394
    .local v3, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 395
    iget v10, p0, Lcom/android/launcher2/Folder;->mMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_66

    .line 396
    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 397
    .local v0, alpha:Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleX"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 398
    .local v5, scaleX:Landroid/animation/PropertyValuesHolder;
    const-string v10, "scaleY"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 399
    .local v6, scaleY:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {p0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 419
    .end local v5           #scaleX:Landroid/animation/PropertyValuesHolder;
    .end local v6           #scaleY:Landroid/animation/PropertyValuesHolder;
    .local v4, oa:Landroid/animation/ObjectAnimator;
    :goto_54
    new-instance v10, Lcom/android/launcher2/Folder$3;

    invoke-direct {v10, p0}, Lcom/android/launcher2/Folder$3;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    iget v10, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 439
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_b

    .line 401
    .end local v0           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v4           #oa:Landroid/animation/ObjectAnimator;
    :cond_66
    const-string v10, "width"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/launcher2/Folder;->mNewSize:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 402
    .local v7, width:Landroid/animation/PropertyValuesHolder;
    const-string v10, "height"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/launcher2/Folder;->mNewSize:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 403
    .local v2, height:Landroid/animation/PropertyValuesHolder;
    const-string v10, "x"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/launcher2/Folder;->mNewSize:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 404
    .local v8, x:Landroid/animation/PropertyValuesHolder;
    const-string v10, "y"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/launcher2/Folder;->mNewSize:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 405
    .local v9, y:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v11, 0x2

    aput-object v8, v10, v11

    const/4 v11, 0x3

    aput-object v9, v10, v11

    invoke-static {v3, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 406
    .restart local v4       #oa:Landroid/animation/ObjectAnimator;
    new-instance v10, Lcom/android/launcher2/Folder$2;

    invoke-direct {v10, p0}, Lcom/android/launcher2/Folder$2;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 412
    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 413
    .restart local v0       #alpha:Landroid/animation/PropertyValuesHolder;
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 414
    .local v1, alphaOa:Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 415
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v11, 0x4000

    invoke-direct {v10, v11}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 416
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_54
.end method

.method bind(Lcom/android/launcher2/FolderInfo;)V
    .registers 11
    .parameter "info"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 316
    iget-object v1, p1, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 317
    .local v1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v6, overflow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 319
    const/4 v2, 0x0

    .line 320
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2d

    .line 321
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 322
    .local v0, child:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/ShortcutInfo;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 323
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 325
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 330
    .end local v0           #child:Lcom/android/launcher2/ShortcutInfo;
    :cond_2d
    invoke-direct {p0, v2}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 335
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    .line 336
    .local v5, item:Lcom/android/launcher2/ShortcutInfo;
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v7, v5}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 337
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v7, v5}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_34

    .line 340
    .end local v5           #item:Lcom/android/launcher2/ShortcutInfo;
    :cond_4b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 341
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 342
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v7, p0}, Lcom/android/launcher2/FolderInfo;->addListener(Lcom/android/launcher2/FolderInfo$FolderListener;)V

    .line 344
    sget-object v7, Lcom/android/launcher2/Folder;->sDefaultFolderName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v8, v8, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6c

    .line 345
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v8, v8, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_6b
    return-void

    .line 347
    :cond_6c
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6b
.end method

.method public completeDragExit()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 672
    iput-object v1, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    .line 673
    iput-object v1, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 676
    return-void
.end method

.method protected createAndAddShortcut(Lcom/android/launcher2/ShortcutInfo;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 532
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 534
    .local v1, textView:Landroid/widget/TextView;
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {p1, v3}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v7, v0, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 536
    iget-object v0, p1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 539
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 546
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget v3, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    invoke-virtual {v0, v3, v7}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_52

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    if-ltz v0, :cond_52

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    if-ltz v0, :cond_52

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_52

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v3

    if-lt v0, v3, :cond_59

    .line 548
    :cond_52
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 558
    :goto_58
    return v2

    .line 553
    :cond_59
    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    invoke-direct {v4, v0, v3, v7, v8}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 555
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v6, 0x0

    .line 556
    .local v6, insert:Z
    new-instance v0, Lcom/android/launcher2/FolderKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher2/FolderKeyEventListener;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 557
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    if-eqz v6, :cond_7b

    :goto_73
    iget-wide v7, p1, Lcom/android/launcher2/ShortcutInfo;->id:J

    long-to-int v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move v2, v5

    .line 558
    goto :goto_58

    .line 557
    :cond_7b
    const/4 v2, -0x1

    goto :goto_73
.end method

.method public dismissEditingName()V
    .registers 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 247
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public doneEditingFolderName(Z)V
    .registers 7
    .parameter "commit"

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v2, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, newTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 257
    if-eqz p1, :cond_37

    .line 258
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0055

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 263
    :cond_37
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->requestFocus()Z

    .line 265
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v4, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 266
    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 267
    return-void
.end method

.method protected findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 521
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 522
    .local v0, emptyCell:[I
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget v4, p1, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 523
    aget v2, v0, v2

    iput v2, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 524
    aget v2, v0, v1

    iput v2, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 527
    :goto_19
    return v1

    :cond_1a
    move v1, v2

    goto :goto_19
.end method

.method public getDragDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .registers 3
    .parameter "d"

    .prologue
    .line 743
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    return-object v0
.end method

.method getInfo()Lcom/android/launcher2/FolderInfo;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItemsInReadingOrder(Z)Ljava/util/ArrayList;
    .registers 7
    .parameter "includeCurrentDragItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1047
    iget-boolean v4, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    if-eqz v4, :cond_3d

    .line 1048
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1049
    const/4 v2, 0x0

    .local v2, j:I
    :goto_a
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v4

    if-ge v2, v4, :cond_3a

    .line 1050
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v4

    if-ge v0, v4, :cond_37

    .line 1051
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 1052
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_34

    .line 1053
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .line 1054
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    if-ne v1, v4, :cond_2f

    if-eqz p1, :cond_34

    .line 1055
    :cond_2f
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    .end local v1           #info:Lcom/android/launcher2/ShortcutInfo;
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1049
    .end local v3           #v:Landroid/view/View;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1060
    .end local v0           #i:I
    :cond_3a
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 1062
    .end local v2           #j:I
    :cond_3d
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v4
.end method

.method public getLocationInDragLayer([I)V
    .registers 3
    .parameter "loc"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 1067
    return-void
.end method

.method public isDropEnabled()Z
    .registers 2

    .prologue
    .line 739
    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .registers 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .registers 3

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 509
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 510
    return-void
.end method

.method public notifyDrop()V
    .registers 2

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_7

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 736
    :cond_7
    return-void
.end method

.method public onAdd(Lcom/android/launcher2/ShortcutInfo;)V
    .registers 9
    .parameter "item"

    .prologue
    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 995
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    if-eqz v0, :cond_8

    .line 1004
    :goto_7
    return-void

    .line 996
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 998
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 999
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z

    .line 1001
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/ShortcutInfo;)Z

    .line 1002
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher2/FolderInfo;->id:J

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    goto :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, tag:Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v3, :cond_36

    move-object v0, v2

    .line 199
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 200
    .local v0, item:Lcom/android/launcher2/ShortcutInfo;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 201
    .local v1, pos:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 202
    iget-object v3, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v1, v7

    aget v6, v1, v9

    aget v7, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v1, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 204
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v4, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 206
    .end local v0           #item:Lcom/android/launcher2/ShortcutInfo;
    .end local v1           #pos:[I
    :cond_36
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 5
    .parameter "d"

    .prologue
    const/4 v2, -0x1

    .line 562
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 565
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 5
    .parameter "d"

    .prologue
    .line 681
    iget-boolean v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_12

    .line 682
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 683
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 685
    :cond_12
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 686
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 12
    .parameter "d"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 626
    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Folder;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v7

    .line 627
    .local v7, r:[F
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    aget v1, v7, v9

    float-to-int v1, v1

    aget v2, v7, v8

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    move v3, v8

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    .line 629
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    aget v1, v1, v9

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    aget v0, v0, v8

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    aget v1, v1, v8

    if-eq v0, v1, :cond_5b

    .line 630
    :cond_38
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 631
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 632
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 633
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    aget v1, v1, v9

    aput v1, v0, v9

    .line 634
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    aget v1, v1, v8

    aput v1, v0, v8

    .line 636
    :cond_5b
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 13
    .parameter "d"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 963
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v0, :cond_69

    .line 965
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationInfo;->makeShortcut()Lcom/android/launcher2/ShortcutInfo;

    move-result-object v6

    .line 966
    .local v6, item:Lcom/android/launcher2/ShortcutInfo;
    iput v5, v6, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    .line 967
    iput v5, v6, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    .line 973
    :goto_14
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    if-ne v6, v0, :cond_63

    .line 974
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ShortcutInfo;

    .line 975
    .local v7, si:Lcom/android/launcher2/ShortcutInfo;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 976
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    aget v0, v0, v10

    iput v0, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v0, v7, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 977
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    aget v0, v0, v5

    iput v0, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v0, v7, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 978
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    const/4 v2, -0x1

    iget-wide v8, v6, Lcom/android/launcher2/ShortcutInfo;->id:J

    long-to-int v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 979
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 980
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;)V

    .line 984
    :goto_58
    iput-boolean v5, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 985
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 986
    iput-boolean v5, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 988
    .end local v4           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v7           #si:Lcom/android/launcher2/ShortcutInfo;
    :cond_63
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v0, v6}, Lcom/android/launcher2/FolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 989
    return-void

    .line 969
    .end local v6           #item:Lcom/android/launcher2/ShortcutInfo;
    :cond_69
    iget-object v6, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher2/ShortcutInfo;

    .restart local v6       #item:Lcom/android/launcher2/ShortcutInfo;
    goto :goto_14

    .line 982
    .restart local v4       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v7       #si:Lcom/android/launcher2/ShortcutInfo;
    :cond_6e
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_58
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;Z)V
    .registers 7
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 689
    if-eqz p3, :cond_31

    .line 690
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez v0, :cond_f

    .line 691
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->replaceFolderWithFinalItem()V

    .line 704
    :cond_f
    :goto_f
    if-eq p1, p0, :cond_21

    .line 705
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 706
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 707
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 710
    :cond_21
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 711
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    .line 712
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 713
    iput-object v2, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    .line 714
    iput-object v2, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    .line 715
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 719
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateItemLocationsInDatabase()V

    .line 720
    return-void

    .line 695
    :cond_31
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 699
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    goto :goto_f
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 270
    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 157
    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    .line 158
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 159
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    .line 160
    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderEditText;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 161
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderEditText;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 162
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, measureSpec:I
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, v0, v0}, Lcom/android/launcher2/FolderEditText;->measure(II)V

    .line 168
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderEditText;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 171
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 172
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderEditText;->getInputType()I

    move-result v2

    const/high16 v3, 0x8

    or-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setInputType(I)V

    .line 176
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_9

    .line 1071
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 1073
    :cond_9
    return-void
.end method

.method public onItemsChanged()V
    .registers 1

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 1037
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 8
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v2, :cond_5a

    move-object v0, v1

    .line 211
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 212
    .local v0, item:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v3

    .line 232
    .end local v0           #item:Lcom/android/launcher2/ShortcutInfo;
    :goto_14
    return v2

    .line 216
    .restart local v0       #item:Lcom/android/launcher2/ShortcutInfo;
    :cond_15
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 218
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 219
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    move-object v2, p1

    .line 220
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    .line 223
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    iget v5, v0, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    aput v5, v2, v3

    .line 224
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    iget v5, v0, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    aput v5, v2, v4

    .line 225
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    .line 227
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 228
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 229
    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    .line 230
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    .end local v0           #item:Lcom/android/launcher2/ShortcutInfo;
    :cond_5a
    move v2, v4

    .line 232
    goto :goto_14
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 847
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v5

    add-int v3, v4, v5

    .line 848
    .local v3, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    add-int v2, v4, v5

    .line 851
    .local v2, height:I
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 853
    .local v1, contentWidthSpec:I
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 855
    .local v0, contentHeightSpec:I
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v1, v0}, Lcom/android/launcher2/CellLayout;->measure(II)V

    .line 857
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget v5, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/android/launcher2/FolderEditText;->measure(II)V

    .line 859
    invoke-virtual {p0, v3, v2}, Lcom/android/launcher2/Folder;->setMeasuredDimension(II)V

    .line 860
    return-void
.end method

.method public onRemove(Lcom/android/launcher2/ShortcutInfo;)V
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1007
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 1010
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    if-ne p1, v1, :cond_8

    .line 1021
    :cond_7
    :goto_7
    return-void

    .line 1011
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->getViewForInfo(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1012
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 1013
    iget v1, p0, Lcom/android/launcher2/Folder;->mState:I

    if-ne v1, v2, :cond_21

    .line 1014
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 1018
    :goto_17
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_7

    .line 1019
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->replaceFolderWithFinalItem()V

    goto :goto_7

    .line 1016
    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    goto :goto_17
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 1040
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method readingOrderGreaterThan([I[I)Z
    .registers 7
    .parameter "v1"
    .parameter "v2"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 574
    aget v2, p1, v1

    aget v3, p2, v1

    if-gt v2, v3, :cond_14

    aget v2, p1, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_15

    aget v2, p1, v0

    aget v3, p2, v0

    if-le v2, v3, :cond_15

    :cond_14
    move v0, v1

    .line 577
    :cond_15
    return v0
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .registers 2
    .parameter "dragController"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    .line 295
    return-void
.end method

.method setFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 299
    return-void
.end method

.method public startEditingFolderName()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 242
    return-void
.end method
