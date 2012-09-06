.class final Lcom/google/android/youtube/app/honeycomb/tablet/an;
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

.field final synthetic i:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

.field private final j:F

.field private k:[I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ag;Landroid/view/View;F)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a:Landroid/view/View;

    .line 1038
    const v0, 0x7f08012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Landroid/widget/LinearLayout;

    .line 1039
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->c:Landroid/widget/LinearLayout;

    .line 1040
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/PlayerView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d:Lcom/google/android/youtube/core/player/PlayerView;

    .line 1041
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->e:Landroid/view/View;

    .line 1042
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->f:Landroid/view/View;

    .line 1043
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Landroid/widget/LinearLayout;

    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/view/View;

    .line 1044
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedGridView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h:Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 1046
    iput p3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->j:F

    .line 1047
    return-void
.end method

.method private a(I)I
    .registers 4
    .parameter

    .prologue
    .line 1152
    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->j:F

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

    .line 1126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->k:[I

    if-nez v0, :cond_30

    .line 1128
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->k:[I

    .line 1132
    :cond_30
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a:Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1134
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1136
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1137
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1139
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1140
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1141
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1143
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1144
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1145
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1147
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1149
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

    .line 1050
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_ec

    move v0, v1

    :goto_c
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1051
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->k:[I

    if-eqz v0, :cond_2e

    .line 1053
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->k:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->k:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->k:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->k:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->k:[I

    .line 1058
    :cond_2e
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1059
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->j(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1061
    if-eqz p1, :cond_ef

    .line 1062
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->k(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0078

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1063
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->l(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0079

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1065
    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v5

    .line 1066
    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v6

    .line 1068
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1070
    const/high16 v7, 0x3f00

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    add-int/2addr v2, v6

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1072
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1073
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1075
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1076
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1077
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1078
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1080
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1082
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1083
    invoke-virtual {v0, v5, v1, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1084
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1085
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->e:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1086
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/view/View;

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v2

    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1114
    :goto_c0
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h:Lcom/google/android/youtube/core/ui/PagedGridView;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i:Lcom/google/android/youtube/app/honeycomb/tablet/ag;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->m(Lcom/google/android/youtube/app/honeycomb/tablet/ag;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/ui/PagedGridView;->setNumColumns(I)V

    .line 1117
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1118
    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1119
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1121
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    return-void

    .line 1050
    :cond_ec
    const/4 v0, 0x1

    goto/16 :goto_c

    .line 1088
    :cond_ef
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1090
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1094
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x3f10

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1098
    const/16 v3, 0x60

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1099
    const/high16 v2, 0x420c

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1100
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1101
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1102
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1103
    const/high16 v2, 0x4282

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1105
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1106
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1107
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1109
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->f:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v2

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1110
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->e:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v2

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1111
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v2

    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v3

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_c0
.end method
