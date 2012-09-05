.class public Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I = null

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_STATE_SET:[I = null

.field private static final GROUP_STATE_SETS:[[I = null

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    new-array v0, v3, [I

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    .line 166
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 170
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 174
    new-array v0, v2, [I

    fill-array-data v0, :array_40

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 178
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_STATE_SETS:[[I

    .line 186
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 174
    :array_40
    .array-data 0x4
        0xa8t 0x0t 0x1t 0x1t
        0xa9t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 200
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 206
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 210
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 212
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 214
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    .line 216
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 218
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_40

    .line 219
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 221
    :cond_40
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    .line 223
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    .line 225
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 227
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .registers 3
    .parameter "flatListPosition"

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J
    .registers 5
    .parameter "position"

    .prologue
    .line 1011
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1012
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1014
    :goto_f
    return-wide v0

    :cond_10
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_f
.end method

.method private getFlatPositionForConnector(I)I
    .registers 3
    .parameter "flatListPosition"

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .parameter "pos"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 351
    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v7, v6, :cond_39

    .line 352
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 354
    .local v0, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 358
    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_21

    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_35

    :cond_21
    move v1, v5

    .line 361
    .local v1, isEmpty:Z
    :goto_22
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_37

    :goto_28
    if-eqz v1, :cond_2b

    move v4, v6

    :cond_2b
    or-int v3, v5, v4

    .line 364
    .local v3, stateSetIndex:I
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 378
    .end local v1           #isEmpty:Z
    .end local v3           #stateSetIndex:I
    :cond_34
    :goto_34
    return-object v0

    :cond_35
    move v1, v4

    .line 358
    goto :goto_22

    .restart local v1       #isEmpty:Z
    :cond_37
    move v5, v4

    .line 361
    goto :goto_28

    .line 367
    .end local v0           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v1           #isEmpty:Z
    :cond_39
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 369
    .restart local v0       #indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 371
    iget-object v4, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_53

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 374
    .local v2, stateSet:[I
    :goto_4f
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_34

    .line 371
    .end local v2           #stateSet:[I
    :cond_53
    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_4f
.end method

.method public static getPackedPositionChild(J)I
    .registers 9
    .parameter "packedPosition"

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, -0x1

    .line 939
    cmp-long v1, p0, v5

    if-nez v1, :cond_d

    .line 944
    :cond_c
    :goto_c
    return v0

    .line 942
    :cond_d
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    .line 944
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_c
.end method

.method public static getPackedPositionForChild(II)J
    .registers 8
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 964
    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .registers 5
    .parameter "groupPosition"

    .prologue
    .line 979
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .registers 5
    .parameter "packedPosition"

    .prologue
    .line 920
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const/4 v0, -0x1

    .line 922
    :goto_a
    return v0

    :cond_b
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_a
.end method

.method public static getPackedPositionType(J)I
    .registers 6
    .parameter "packedPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 900
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    .line 901
    const/4 v0, 0x2

    .line 904
    :goto_c
    return v0

    :cond_d
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isHeaderOrFooterPosition(I)Z
    .registers 5
    .parameter "position"

    .prologue
    .line 489
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 490
    .local v0, footerViewsStart:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_10

    if-lt p1, v0, :cond_12

    :cond_10
    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method


# virtual methods
.method public collapseGroup(I)Z
    .registers 4
    .parameter "groupPos"

    .prologue
    .line 646
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 648
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_f

    .line 649
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 652
    :cond_f
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 14
    .parameter "view"
    .parameter "flatListPosition"
    .parameter "id"

    .prologue
    .line 985
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 987
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 999
    :goto_b
    return-object v0

    .line 990
    :cond_c
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 991
    .local v6, adjustedPosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 992
    .local v7, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 993
    .local v8, pos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 995
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J

    move-result-wide p3

    .line 996
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 997
    .local v2, packedPosition:J
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 999
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 29
    .parameter "canvas"

    .prologue
    .line 234
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_14

    .line 338
    :cond_13
    :goto_13
    return-void

    .line 241
    :cond_14
    const/16 v18, 0x0

    .line 242
    .local v18, saveCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_bb

    const/4 v8, 0x1

    .line 243
    .local v8, clipToPadding:Z
    :goto_27
    if-eqz v8, :cond_86

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    move/from16 v19, v0

    .line 246
    .local v19, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v20, v0

    .line 247
    .local v20, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    move/from16 v24, v0

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 252
    .end local v19           #scrollX:I
    .end local v20           #scrollY:I
    :cond_86
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v9

    .line 254
    .local v9, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v22, v22, v9

    add-int/lit8 v14, v22, -0x1

    .line 256
    .local v14, lastChildFlPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v16, v0

    .line 264
    .local v16, myB:I
    const/4 v15, -0x4

    .line 266
    .local v15, lastItemType:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 271
    .local v12, indicatorRect:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v6

    .line 272
    .local v6, childCount:I
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v7, v22, v9

    .local v7, childFlPos:I
    :goto_b2
    if-ge v10, v6, :cond_c0

    .line 275
    if-gez v7, :cond_be

    .line 273
    :cond_b6
    :goto_b6
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_b2

    .line 242
    .end local v6           #childCount:I
    .end local v7           #childFlPos:I
    .end local v8           #clipToPadding:Z
    .end local v9           #headerViewsCount:I
    .end local v10           #i:I
    .end local v12           #indicatorRect:Landroid/graphics/Rect;
    .end local v14           #lastChildFlPos:I
    .end local v15           #lastItemType:I
    .end local v16           #myB:I
    :cond_bb
    const/4 v8, 0x0

    goto/16 :goto_27

    .line 278
    .restart local v6       #childCount:I
    .restart local v7       #childFlPos:I
    .restart local v8       #clipToPadding:Z
    .restart local v9       #headerViewsCount:I
    .restart local v10       #i:I
    .restart local v12       #indicatorRect:Landroid/graphics/Rect;
    .restart local v14       #lastChildFlPos:I
    .restart local v15       #lastItemType:I
    .restart local v16       #myB:I
    :cond_be
    if-le v7, v14, :cond_cb

    .line 335
    :cond_c0
    if-eqz v8, :cond_13

    .line 336
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_13

    .line 283
    :cond_cb
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 284
    .local v13, item:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    .line 285
    .local v21, t:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 288
    .local v5, b:I
    if-ltz v5, :cond_b6

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_b6

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v17

    .line 295
    .local v17, pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_16b

    .line 296
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1ac

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    :goto_125
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    :goto_13d
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 306
    :goto_141
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 307
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 309
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    .line 312
    :cond_16b
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_199

    .line 314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1c1

    .line 316
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 317
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 324
    :goto_187
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getIndicator(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 325
    .local v11, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_199

    .line 327
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 328
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 332
    .end local v11           #indicator:Landroid/graphics/drawable/Drawable;
    :cond_199
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_b6

    .line 297
    :cond_19e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    goto :goto_125

    .line 299
    :cond_1a5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    goto :goto_13d

    .line 302
    :cond_1ac
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_141

    .line 319
    :cond_1c1
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 320
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_187
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 10
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 394
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v2, p3, v4

    .line 398
    .local v2, flatListPosition:I
    if-ltz v2, :cond_36

    .line 399
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 400
    .local v0, adjustedPosition:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 402
    .local v3, pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_33

    .line 405
    :cond_27
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 406
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 407
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 408
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 416
    .end local v0           #adjustedPosition:I
    .end local v1           #divider:Landroid/graphics/drawable/Drawable;
    .end local v3           #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :goto_32
    return-void

    .line 411
    .restart local v0       #adjustedPosition:I
    .restart local v3       #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_33
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 415
    .end local v0           #adjustedPosition:I
    .end local v3           #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_36
    invoke-super {p0, p1, p2, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_32
.end method

.method public expandGroup(I)Z
    .registers 3
    .parameter "groupPos"

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .registers 10
    .parameter "groupPos"
    .parameter "animate"

    .prologue
    const/4 v6, -0x1

    .line 618
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 620
    .local v1, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 622
    .local v2, retValue:Z
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    if-eqz v4, :cond_1b

    .line 623
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    invoke-interface {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 626
    :cond_1b
    if-eqz p2, :cond_31

    .line 627
    iget-object v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 629
    .local v0, groupFlatPos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v4

    add-int v3, v0, v4

    .line 630
    .local v3, shiftedGroupPosition:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->smoothScrollToPosition(II)V

    .line 633
    .end local v0           #groupFlatPos:I
    .end local v3           #shiftedGroupPosition:I
    :cond_31
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 635
    return v2
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 441
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .registers 7
    .parameter "flatListPosition"

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 759
    const-wide v1, 0xffffffffL

    .line 766
    :goto_b
    return-wide v1

    .line 762
    :cond_c
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 763
    .local v0, adjustedPosition:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 764
    .local v3, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    .line 765
    .local v1, packedPos:J
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_b
.end method

.method public getFlatListPosition(J)I
    .registers 7
    .parameter "packedPosition"

    .prologue
    .line 781
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainPosition(J)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 783
    .local v1, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 784
    .local v0, flatListPosition:I
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 785
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getSelectedId()J
    .registers 6

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    .line 812
    .local v1, packedPos:J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_10

    const-wide/16 v3, -0x1

    .line 821
    :goto_f
    return-wide v3

    .line 814
    :cond_10
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 816
    .local v0, groupPos:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_21

    .line 818
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_f

    .line 821
    :cond_21
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_f
.end method

.method public getSelectedPosition()J
    .registers 4

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 800
    .local v0, selectedPos:I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .registers 17
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v9

    .line 539
    .local v9, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J

    move-result-wide p3

    .line 542
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7b

    .line 546
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_2b

    .line 547
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;->onGroupClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 549
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 550
    const/4 v10, 0x1

    .line 595
    :goto_2a
    return v10

    .line 554
    :cond_2b
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 556
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    .line 558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    .line 560
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_47

    .line 561
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 581
    :cond_47
    :goto_47
    const/4 v10, 0x1

    .line 593
    .local v10, returnValue:Z
    :goto_48
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_2a

    .line 565
    .end local v10           #returnValue:Z
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_62

    .line 570
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 573
    :cond_62
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 574
    .local v8, groupPos:I
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 576
    .local v7, groupFlatPos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int v11, v7, v0

    .line 577
    .local v11, shiftedGroupPosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0, v0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->smoothScrollToPosition(II)V

    goto :goto_47

    .line 584
    .end local v7           #groupFlatPos:I
    .end local v8           #groupPos:I
    .end local v11           #shiftedGroupPosition:I
    :cond_7b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_95

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    .line 586
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;->onChildClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IIJ)Z

    move-result v10

    goto :goto_2a

    .line 590
    :cond_95
    const/4 v10, 0x0

    .restart local v10       #returnValue:Z
    goto :goto_48
.end method

.method public isGroupExpanded(I)Z
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 1161
    instance-of v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    if-nez v1, :cond_8

    .line 1162
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1172
    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object v0, p1

    .line 1166
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    .line 1167
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1169
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 1170
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 1154
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1155
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_10
    invoke-direct {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 7
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 518
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 520
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 525
    :goto_a
    return v1

    .line 524
    :cond_b
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 525
    .local v0, adjustedPosition:I
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_a
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 465
    if-eqz p1, :cond_11

    .line 467
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    .line 473
    :goto_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 474
    return-void

    .line 469
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    goto :goto_b
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 426
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "childDivider"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 390
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "childIndicator"

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1027
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .registers 3
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1041
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    .line 1042
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    .line 1043
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "groupIndicator"

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1055
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 1056
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 1058
    :cond_15
    return-void
.end method

.method public setIndicatorBounds(II)V
    .registers 3
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1072
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    .line 1073
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 1074
    return-void
.end method

.method public setOnChildClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;)V
    .registers 2
    .parameter "onChildClickListener"

    .prologue
    .line 740
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    .line 741
    return-void
.end method

.method public setOnGroupClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;)V
    .registers 2
    .parameter "onGroupClickListener"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    .line 714
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;)V
    .registers 2
    .parameter "onGroupCollapseListener"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    .line 671
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;)V
    .registers 2
    .parameter "onGroupExpandListener"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    .line 689
    return-void
.end method

.method public setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 454
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 455
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .registers 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 851
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainChildPosition(II)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    .line 853
    .local v1, elChildPos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 855
    .local v2, flatChildPos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_23

    .line 859
    if-nez p3, :cond_10

    const/4 v3, 0x0

    .line 877
    :goto_f
    return v3

    .line 861
    :cond_10
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    .line 863
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 866
    if-nez v2, :cond_23

    .line 867
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 871
    :cond_23
    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 872
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 874
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 875
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 877
    const/4 v3, 0x1

    goto :goto_f
.end method

.method public setSelectedGroup(I)V
    .registers 6
    .parameter "groupPosition"

    .prologue
    .line 830
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainGroupPosition(I)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    .line 832
    .local v1, elGroupPos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 833
    .local v2, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 834
    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 835
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 836
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 837
    return-void
.end method
