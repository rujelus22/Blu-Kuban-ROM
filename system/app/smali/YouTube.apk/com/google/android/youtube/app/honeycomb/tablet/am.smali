.class final Lcom/google/android/youtube/app/honeycomb/tablet/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/LinearLayout;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Lcom/google/android/youtube/core/player/PlayerView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public final g:Landroid/view/View;

.field public final h:Lcom/google/android/youtube/core/ui/PagedGridView;

.field final synthetic i:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

.field private final j:F

.field private k:[I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ah;Landroid/view/View;F)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->i:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a:Landroid/view/View;

    .line 834
    const v0, 0x7f0900a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->b:Landroid/widget/LinearLayout;

    .line 835
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->c:Landroid/widget/LinearLayout;

    .line 836
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/PlayerView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->d:Lcom/google/android/youtube/core/player/PlayerView;

    .line 837
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->e:Landroid/view/View;

    .line 838
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->f:Landroid/view/View;

    .line 839
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->b:Landroid/widget/LinearLayout;

    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->g:Landroid/view/View;

    .line 840
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedGridView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->h:Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 842
    iput p3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->j:F

    .line 843
    return-void
.end method

.method private a(I)I
    .registers 4
    .parameter

    .prologue
    .line 948
    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->j:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 922
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->k:[I

    if-nez v0, :cond_30

    .line 924
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->k:[I

    .line 928
    :cond_30
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a:Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 930
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 932
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 933
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 935
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 936
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 937
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 939
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 940
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 941
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 943
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 945
    return-void
.end method

.method public final a(Z)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x10

    const/16 v7, 0x20

    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 846
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->b:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_ec

    move v0, v1

    :goto_c
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 847
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->k:[I

    if-eqz v0, :cond_2e

    .line 849
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->k:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->k:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->k:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->k:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->k:[I

    .line 854
    :cond_2e
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 855
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->i:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->h(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 857
    if-eqz p1, :cond_ef

    .line 858
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->i:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->i(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0045

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 859
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->i:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->j(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0046

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 861
    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v5

    .line 862
    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v6

    .line 864
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 866
    const/high16 v7, 0x3f00

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    add-int/2addr v2, v6

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 868
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 869
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 871
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 872
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 873
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 874
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 876
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 878
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 879
    invoke-virtual {v0, v5, v1, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 880
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 881
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->e:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 882
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->g:Landroid/view/View;

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v2

    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 910
    :goto_c0
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->h:Lcom/google/android/youtube/core/ui/PagedGridView;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->i:Lcom/google/android/youtube/app/honeycomb/tablet/ah;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/tablet/ah;->k(Lcom/google/android/youtube/app/honeycomb/tablet/ah;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/ui/PagedGridView;->a(I)V

    .line 913
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 914
    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 915
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 917
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 919
    return-void

    .line 846
    :cond_ec
    const/4 v0, 0x1

    goto/16 :goto_c

    .line 884
    :cond_ef
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 886
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 890
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x3f10

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 894
    const/16 v3, 0x60

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 895
    const/high16 v2, 0x420c

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 896
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 897
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 898
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 899
    const/high16 v2, 0x4282

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 901
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 902
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 903
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 905
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->f:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v2

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 906
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->e:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v2

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 907
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/am;->g:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v2

    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v3

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/am;->a(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_c0
.end method
