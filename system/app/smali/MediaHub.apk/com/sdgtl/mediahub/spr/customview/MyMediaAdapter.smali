.class public Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private completeProgressGap:I

.field private mCategory:I

.field private mContext:Landroid/content/Context;

.field private mDBController:Lcom/sdgtl/mediahub/spr/c/a;

.field private mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

.field private mHandlerResultUpdataUI:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;

.field private mOnItemDownloadClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadClickListener;

.field private mOnItemDownloadPauseClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadPauseClickListener;

.field private mOnItemDownloadResumeClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadResumeClickListener;

.field private mOnItemDownloadStopClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadStopClickListener;

.field private mOnItemPlayClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;

.field private mOnItemPlayLongClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->completeProgressGap:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mHandlerResultUpdataUI:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadClickListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemDownloadClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadStopClickListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemDownloadStopClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadStopClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemPlayClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemPlayLongClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadPauseClickListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemDownloadPauseClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadPauseClickListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadResumeClickListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemDownloadResumeClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadResumeClickListener;

    return-object v0
.end method


# virtual methods
.method public checkLicenseExpired(Lcom/sdgtl/mediahub/spr/common/di;)Z
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->C()Ljava/lang/String;

    move-result-object v0

    :cond_e
    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "06"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_2c
    const-string v2, "Y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v0

    :goto_3c
    return v0

    :cond_3d
    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    if-lez v0, :cond_4b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_4b
    const/4 v0, 0x1

    goto :goto_3c

    :cond_4d
    move v0, v1

    goto :goto_3c
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sdgtl/mediahub/spr/common/di;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->getItem(I)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/16 v5, 0x64

    const/4 v4, 0x5

    const/4 v8, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    if-nez p2, :cond_1b8

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/ah;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/customview/ah;-><init>(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;)V

    const v1, 0x7f0d0036

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->a:Landroid/widget/ImageView;

    const v1, 0x7f0d003e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->b:Landroid/widget/ImageView;

    const v1, 0x7f0d003d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->c:Landroid/widget/TextView;

    const v1, 0x7f0d00c3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->d:Landroid/widget/TextView;

    const v1, 0x7f0d00a0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->e:Landroid/widget/TextView;

    const v1, 0x7f0d00c4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->f:Landroid/widget/TextView;

    const v1, 0x7f0d00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const v1, 0x7f0d00c6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const v1, 0x7f0d00c7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const v1, 0x7f0d00c8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const v1, 0x7f0d00c9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v1, 0x7f0d00ca

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const v1, 0x7f0d00c1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->m:Landroid/widget/ProgressBar;

    const v1, 0x7f0d00cb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->n:Landroid/widget/ProgressBar;

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v1, 0x7f0d00c2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v8, :cond_f8

    const v1, 0x7f0d00cf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->p:Landroid/widget/TextView;

    const v1, 0x7f0d00cd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->q:Landroid/widget/ImageView;

    const v1, 0x7f0d00ce

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/sdgtl/mediahub/spr/customview/ah;->r:Landroid/widget/Button;

    :cond_f8
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_fc
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    new-instance v3, Lcom/sdgtl/mediahub/spr/customview/ab;

    invoke-direct {v3, p0, v0, p1}, Lcom/sdgtl/mediahub/spr/customview/ab;-><init>(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;Lcom/sdgtl/mediahub/spr/common/di;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mCategory:I

    if-eq v2, v4, :cond_144

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v8, :cond_11c

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->r:Landroid/widget/Button;

    new-instance v3, Lcom/sdgtl/mediahub/spr/customview/ac;

    invoke-direct {v3, p0, v0, p1}, Lcom/sdgtl/mediahub/spr/customview/ac;-><init>(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;Lcom/sdgtl/mediahub/spr/common/di;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11c
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    new-instance v3, Lcom/sdgtl/mediahub/spr/customview/ad;

    invoke-direct {v3, p0, v0, p1}, Lcom/sdgtl/mediahub/spr/customview/ad;-><init>(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;Lcom/sdgtl/mediahub/spr/common/di;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    new-instance v3, Lcom/sdgtl/mediahub/spr/customview/ae;

    invoke-direct {v3, p0, v0, p1}, Lcom/sdgtl/mediahub/spr/customview/ae;-><init>(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;Lcom/sdgtl/mediahub/spr/common/di;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    new-instance v3, Lcom/sdgtl/mediahub/spr/customview/af;

    invoke-direct {v3, p0, v0, p1}, Lcom/sdgtl/mediahub/spr/customview/af;-><init>(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;Lcom/sdgtl/mediahub/spr/common/di;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    new-instance v3, Lcom/sdgtl/mediahub/spr/customview/ag;

    invoke-direct {v3, p0, v0, p1}, Lcom/sdgtl/mediahub/spr/customview/ag;-><init>(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;Lcom/sdgtl/mediahub/spr/common/di;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_144
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c0

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_158
    iget-boolean v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v2, :cond_1c6

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->T:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00c0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v8, :cond_1b0

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->q:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1b0
    :goto_1b0
    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    invoke-static {v1, v0, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    return-object p2

    :cond_1b8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/customview/ah;

    goto/16 :goto_fc

    :cond_1c0
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_158

    :cond_1c6
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v8, :cond_1d3

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->q:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1d3
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mCategory:I

    if-eq v2, v4, :cond_1f3

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v3, "Archive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2be

    :cond_1f3
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2b4

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const v3, 0x7f0200ff

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_217
    const/4 v2, 0x0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22c

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v4, "02"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d0

    :cond_22c
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_239
    :goto_239
    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v4, "02"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_257

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v4, "04"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_257

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v4, "06"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_351

    :cond_257
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00f7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_285
    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->e:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " / "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2a1
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->f:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b0

    :cond_2b4
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const v3, 0x7f020101

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_217

    :cond_2be
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v8, :cond_2cb

    invoke-virtual {p0, v1, v0, p1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->getViewXlarge(Lcom/sdgtl/mediahub/spr/customview/ah;Lcom/sdgtl/mediahub/spr/common/di;I)V

    goto/16 :goto_217

    :cond_2cb
    invoke-virtual {p0, v1, v0, p1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->getViewNormal(Lcom/sdgtl/mediahub/spr/customview/ah;Lcom/sdgtl/mediahub/spr/common/di;I)V

    goto/16 :goto_217

    :cond_2d0
    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v4, "03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e4

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v4, "04"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_239

    :cond_2e4
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_239

    :cond_2f3
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30c

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_285

    :cond_30c
    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    if-nez v4, :cond_32f

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00f8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_285

    :cond_32f
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00f6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_285

    :cond_351
    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/customview/ah;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00f4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a1
.end method

.method public getViewNormal(Lcom/sdgtl/mediahub/spr/customview/ah;Lcom/sdgtl/mediahub/spr/common/di;I)V
    .registers 18

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->d()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v12

    const-string v9, ""

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    invoke-static/range {v1 .. v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/download/a;ILjava/lang/String;Ljava/util/ArrayList;II)J

    move-result-wide v6

    if-eqz v12, :cond_681

    iget-object v2, v12, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget v1, v12, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    move-object v3, v2

    move v2, v1

    :goto_33
    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mTotalSize:J

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_1ab

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v2, v1, :cond_1ab

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ab

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mTotalSize:J

    :goto_4d
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {v1, v8, v9, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;IIJ)Z

    move-result v1

    long-to-double v8, v6

    const-wide/high16 v10, 0x4059

    mul-double/2addr v8, v10

    long-to-double v10, v4

    div-double/2addr v8, v10

    double-to-int v8, v8

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    iget-object v10, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->f:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget v10, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->completeProgressGap:I

    rsub-int/lit8 v10, v10, 0x64

    if-ge v8, v10, :cond_1d5

    iget-object v10, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->m:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v10, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->n:Landroid/widget/ProgressBar;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_7f
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v11, "02"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_97

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v11, "04"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d8

    :cond_97
    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e4

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->checkLicenseExpired(Lcom/sdgtl/mediahub/spr/common/di;)Z

    move-result v10

    if-eqz v10, :cond_1e4

    move-object/from16 v0, p2

    iget v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v10, v2, :cond_d2

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d2

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v10, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-object/from16 v0, p2

    iget v11, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {v10, v11, v12, v13}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    :cond_d2
    const-string v10, "Expired"

    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    :cond_d8
    :goto_d8
    if-eqz v1, :cond_21a

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    if-eqz v1, :cond_1f4

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1f4

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->a()I

    move-result v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v1, v2, :cond_1f4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12e

    const/4 v1, 0x5

    if-ne v2, v1, :cond_1ec

    :cond_12e
    move-object/from16 v0, p2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/di;

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_145
    :goto_145
    const-string v1, "Downloaded"

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    :goto_14b
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1aa

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p3

    if-le v1, v0, :cond_16f

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/di;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    :cond_16f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18e

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v2, "Expired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->f(ILjava/lang/String;)J

    :cond_18e
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mHandlerResultUpdataUI:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mHandlerResultUpdataUI:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1aa
    return-void

    :cond_1ab
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    if-eqz v1, :cond_67e

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c9

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v4, "01"

    invoke-static {v1, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_4d

    :cond_1c9
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v4, "02"

    invoke-static {v1, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_4d

    :cond_1d5
    iget-object v10, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->m:Landroid/widget/ProgressBar;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v10, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->n:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_7f

    :cond_1e4
    const-string v10, "Downloadable"

    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    goto/16 :goto_d8

    :cond_1ec
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_145

    :cond_1f4
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_145

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/di;

    const/4 v2, 0x1

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_145

    :cond_21a
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v10, "Expired"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_244

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_14b

    :cond_244
    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-gtz v1, :cond_3ec

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v1, v2, :cond_2d9

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d9

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c0

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    const-string v2, "0%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_269
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->m:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "Downloading"

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    if-eqz v1, :cond_2ae

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2ae

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2ae
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2cf

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_14b

    :cond_2c0
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0023

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_269

    :cond_2cf
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v2, 0x7f020102

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_14b

    :cond_2d9
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_373

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35a

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_303
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->m:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "Downloading"

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    if-eqz v1, :cond_348

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_348

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_348
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_369

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const v2, 0x7f02010b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_14b

    :cond_35a
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_303

    :cond_369
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const v2, 0x7f020102

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_14b

    :cond_373
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v1, "Downloadable"

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3c0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    :cond_3c0
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3da

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const v2, 0x7f0200ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_14b

    :cond_3da
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v2, 0x7f020102

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_14b

    :cond_3ec
    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v2, v1, :cond_501

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_501

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    if-eqz v1, :cond_4db

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v10, 0x5

    if-eq v1, v10, :cond_4db

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v1, v10, v11, v12}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    iget v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v1, v10, v11}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v1, :cond_433

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_433
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->c(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    if-eqz v10, :cond_446

    const/4 v1, 0x5

    if-ne v10, v1, :cond_4d4

    :cond_446
    move-object/from16 v0, p2

    iput v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/di;

    iput v10, v1, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    :cond_456
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_45d
    :goto_45d
    cmp-long v1, v6, v4

    if-ltz v1, :cond_542

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    if-eqz v1, :cond_51d

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_51d

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->a()I

    move-result v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v1, v2, :cond_51d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4b5

    const/4 v1, 0x5

    if-ne v2, v1, :cond_516

    :cond_4b5
    move-object/from16 v0, p2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/di;

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4cc
    :goto_4cc
    const-string v1, "Downloaded"

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    goto/16 :goto_14b

    :cond_4d4
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_45d

    :cond_4db
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45d

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/di;

    const/4 v10, 0x1

    iput v10, v1, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_45d

    :cond_501
    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    if-eqz v1, :cond_456

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v10, 0x5

    if-eq v1, v10, :cond_456

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_45d

    :cond_516
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4cc

    :cond_51d
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4cc

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/di;

    const/4 v2, 0x1

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4cc

    :cond_542
    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v1, v2, :cond_5db

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5db

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5cc

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_572
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-wide/32 v4, 0x200000

    cmp-long v1, v6, v4

    if-lez v1, :cond_643

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_597
    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v2, v1, :cond_655

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_655

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_64b

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_5c4
    const-string v1, "Downloading"

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    goto/16 :goto_14b

    :cond_5cc
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0023

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_572

    :cond_5db
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    move-object/from16 v0, p2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_617

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_607

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_572

    :cond_607
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a001f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_572

    :cond_617
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_633

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0022

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_572

    :cond_633
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0021

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_572

    :cond_643
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_597

    :cond_64b
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v2, 0x7f020102

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_5c4

    :cond_655
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_674

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const v2, 0x7f02010b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_5c4

    :cond_674
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const v2, 0x7f020102

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_5c4

    :cond_67e
    move-wide v4, v10

    goto/16 :goto_4d

    :cond_681
    move v2, v8

    move-object v3, v9

    goto/16 :goto_33
.end method

.method public getViewXlarge(Lcom/sdgtl/mediahub/spr/customview/ah;Lcom/sdgtl/mediahub/spr/common/di;I)V
    .registers 16

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->d()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v4

    const-string v1, ""

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    if-eqz v4, :cond_49b

    iget-object v1, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget v0, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    move v7, v0

    move-object v8, v1

    :goto_1a
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    if-eqz v0, :cond_498

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v0

    move-wide v9, v0

    :goto_31
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget v1, p2, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget v2, p2, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {v0, v1, v2, v9, v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;IIJ)Z

    move-result v11

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    iget v2, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v3, p2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v3, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iget-object v4, p2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iget v5, p2, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    iget v6, p2, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    invoke-static/range {v0 .. v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/download/a;ILjava/lang/String;Ljava/util/ArrayList;II)J

    move-result-wide v1

    long-to-double v3, v1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    long-to-double v5, v9

    div-double/2addr v3, v5

    double-to-int v0, v3

    iget-object v3, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    iget v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->completeProgressGap:I

    rsub-int/lit8 v4, v4, 0x64

    if-ge v0, v4, :cond_163

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->m:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->n:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_6b
    if-eqz v11, :cond_17b

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_172

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_78
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_92
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v4, "02"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v4, "04"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    :cond_a6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_480

    invoke-virtual {p0, p2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->checkLicenseExpired(Lcom/sdgtl/mediahub/spr/common/di;)Z

    move-result v0

    if-eqz v0, :cond_480

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v0, v7, :cond_d3

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v4, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v5, p2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v6, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    :cond_d3
    const-string v0, "Expired"

    iput-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    :cond_d7
    :goto_d7
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v4, "Expired"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10a

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-gtz v0, :cond_486

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_492

    const-string v0, "Downloadable"

    iput-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    iget-wide v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_10a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    :cond_10a
    :goto_10a
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p3, :cond_126

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    :cond_126
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_141

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v1, "Expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->f(ILjava/lang/String;)J

    :cond_141
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iget-object v2, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mHandlerResultUpdataUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mHandlerResultUpdataUI:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_157
    return-void

    :cond_158
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v0

    move-wide v9, v0

    goto/16 :goto_31

    :cond_163
    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->m:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->n:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_6b

    :cond_172
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_78

    :cond_17b
    iget v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mCategory:I

    packed-switch v4, :pswitch_data_4a0

    goto/16 :goto_92

    :pswitch_182
    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->p:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-gtz v0, :cond_284

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v0, v7, :cond_236

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_236

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00c2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1ea
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22d

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v4, 0x7f020105

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_207
    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    if-eqz v0, :cond_216

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_216

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_216
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_92

    :cond_21e
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0023

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1ea

    :cond_22d
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v4, 0x7f020102

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_207

    :cond_236
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26c

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_24e
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27b

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const v4, 0x7f02010b

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_207

    :cond_26c
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a001f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24e

    :cond_27b
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const v4, 0x7f020102

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_207

    :cond_284
    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v0, v7, :cond_35b

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35b

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    if-eqz v0, :cond_324

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_324

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget v4, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v5, p2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v6, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v4, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v5, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v0, :cond_2b9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_2b9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDBController:Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    if-eqz v4, :cond_2c8

    const/4 v0, 0x5

    if-ne v4, v0, :cond_31d

    :cond_2c8
    iput v4, p2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iput v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2db
    :goto_2db
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_343

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0023

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2f1
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_352

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v4, 0x7f020105

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_30e
    const-wide/32 v4, 0x200000

    cmp-long v0, v1, v4

    if-lez v0, :cond_3f5

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_92

    :cond_31d
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2db

    :cond_324
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2db

    const/4 v0, 0x1

    iput v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    const/4 v4, 0x1

    iput v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2db

    :cond_343
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00c2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f1

    :cond_352
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const v4, 0x7f020102

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_30e

    :cond_35b
    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    if-eqz v0, :cond_3ad

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3ad

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_36a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mDownloadHelper:Lcom/sdgtl/mediahub/spr/download/a;

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v4, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c4

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b5

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_38e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3ec

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const v4, 0x7f02010b

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_39e
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->k:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_30e

    :cond_3ad
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_36a

    :cond_3b5
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a001f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38e

    :cond_3c4
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3dd

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0022

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38e

    :cond_3dd
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0021

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38e

    :cond_3ec
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->l:Landroid/widget/Button;

    const v4, 0x7f020102

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_39e

    :cond_3f5
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_92

    :pswitch_3fd
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_429

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const v4, 0x7f0200ff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_92

    :cond_429
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const v4, 0x7f020101

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_92

    :pswitch_433
    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_45a

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_43e
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_92

    :cond_45a
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_43e

    :pswitch_462
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->j:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->h:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/customview/ah;->i:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_92

    :cond_480
    const-string v0, "Downloadable"

    iput-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    goto/16 :goto_d7

    :cond_486
    cmp-long v0, v1, v9

    if-gez v0, :cond_48c

    if-eqz v11, :cond_492

    :cond_48c
    const-string v0, "Downloaded"

    iput-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    goto/16 :goto_10a

    :cond_492
    const-string v0, "Downloading"

    iput-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    goto/16 :goto_10a

    :cond_498
    move-wide v9, v2

    goto/16 :goto_31

    :cond_49b
    move v7, v0

    move-object v8, v1

    goto/16 :goto_1a

    nop

    :pswitch_data_4a0
    .packed-switch 0x1
        :pswitch_182
        :pswitch_3fd
        :pswitch_433
        :pswitch_462
    .end packed-switch
.end method

.method public refresh(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCategory(I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mCategory:I

    return-void
.end method

.method public setDownloadingTotalSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mTotalSize:J

    return-void
.end method

.method public setOnItemDownloadClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemDownloadClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadClickListener;

    return-void
.end method

.method public setOnItemDownloadPauseClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadPauseClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemDownloadPauseClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadPauseClickListener;

    return-void
.end method

.method public setOnItemDownloadResumeClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadResumeClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemDownloadResumeClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadResumeClickListener;

    return-void
.end method

.method public setOnItemDownloadStopClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadStopClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemDownloadStopClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadStopClickListener;

    return-void
.end method

.method public setOnItemPlayClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemPlayClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;

    return-void
.end method

.method public setOnItemPlayLongClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemPlayLongClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;

    return-void
.end method
