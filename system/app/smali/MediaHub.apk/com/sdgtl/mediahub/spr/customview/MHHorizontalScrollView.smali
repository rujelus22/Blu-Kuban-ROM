.class public Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;


# instance fields
.field private TOP5_GRID_VIEW_GAP:I

.field private mContext:Landroid/content/Context;

.field private mFrame:Landroid/widget/LinearLayout;

.field private mImageViews:Ljava/util/ArrayList;

.field private mOnItemClickListener:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mImageViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->initLayout(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mImageViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->initLayout(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mImageViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->initLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;)Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView$OnItemClickListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mOnItemClickListener:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private initLayout(Landroid/content/Context;)V
    .registers 5

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mFrame:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mFrame:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mFrame:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private removeOldView()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_12
    return-void
.end method


# virtual methods
.method public drawImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    return-void
.end method

.method public refresh(Ljava/util/ArrayList;)V
    .registers 5

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->drawImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .registers 8

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->removeOldView()V

    const/4 v0, 0x0

    move v3, v0

    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001d

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/customview/z;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/customview/z;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/customview/aa;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/customview/aa;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0d0036

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0d003d

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->drawImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8f

    const/16 v0, 0x14

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->TOP5_GRID_VIEW_GAP:I

    :goto_6b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_8a

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->TOP5_GRID_VIEW_GAP:I

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_5

    :cond_8f
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->TOP5_GRID_VIEW_GAP:I

    goto :goto_6b
.end method

.method public setOnItemClickListener(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mOnItemClickListener:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method
