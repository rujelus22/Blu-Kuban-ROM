.class Lcom/google/googlenav/ui/view/android/bP;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field A:Landroid/widget/TextView;

.field B:Landroid/widget/TextView;

.field C:Landroid/widget/ImageView;

.field D:Landroid/widget/ImageView;

.field E:Landroid/widget/LinearLayout;

.field F:Landroid/widget/ImageView;

.field G:Lcom/google/googlenav/ui/view/android/bQ;

.field H:Lcom/google/googlenav/ui/view/android/bQ;

.field I:Lcom/google/googlenav/ui/view/android/bQ;

.field J:Lcom/google/googlenav/ui/view/android/bR;

.field K:Lcom/google/googlenav/ui/view/android/bS;

.field L:Lcom/google/googlenav/ui/view/android/bT;

.field M:Lcom/google/googlenav/ui/view/android/bT;

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/CheckBox;

.field e:[Landroid/widget/TextView;

.field f:[Landroid/widget/TextView;

.field g:[Landroid/widget/TextView;

.field h:Lcom/google/googlenav/ui/view/android/DistanceView;

.field i:Lcom/google/googlenav/ui/view/android/HeadingView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:[Landroid/widget/TextView;

.field o:[Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/ImageView;

.field r:Landroid/widget/LinearLayout;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/view/View;

.field v:Landroid/widget/TextView;

.field w:Landroid/widget/TextView;

.field x:Landroid/widget/TextView;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v2, 0x4

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->e:[Landroid/widget/TextView;

    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->f:[Landroid/widget/TextView;

    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->g:[Landroid/widget/TextView;

    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->n:[Landroid/widget/TextView;

    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->o:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->G:Lcom/google/googlenav/ui/view/android/bQ;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->G:Lcom/google/googlenav/ui/view/android/bQ;

    iput v2, v0, Lcom/google/googlenav/ui/view/android/bQ;->b:I

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->H:Lcom/google/googlenav/ui/view/android/bQ;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->H:Lcom/google/googlenav/ui/view/android/bQ;

    iput v2, v0, Lcom/google/googlenav/ui/view/android/bQ;->b:I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->H:Lcom/google/googlenav/ui/view/android/bQ;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bQ;->d:Lcom/google/googlenav/ui/view/android/bN;

    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->I:Lcom/google/googlenav/ui/view/android/bQ;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->I:Lcom/google/googlenav/ui/view/android/bQ;

    iput v2, v0, Lcom/google/googlenav/ui/view/android/bQ;->b:I

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->J:Lcom/google/googlenav/ui/view/android/bR;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->J:Lcom/google/googlenav/ui/view/android/bR;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bR;->a:Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->K:Lcom/google/googlenav/ui/view/android/bS;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->K:Lcom/google/googlenav/ui/view/android/bS;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bS;->a:Lbb/a;

    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->L:Lcom/google/googlenav/ui/view/android/bT;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->L:Lcom/google/googlenav/ui/view/android/bT;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bT;->a:Ljava/lang/String;

    :cond_36
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->M:Lcom/google/googlenav/ui/view/android/bT;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->M:Lcom/google/googlenav/ui/view/android/bT;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bT;->a:Ljava/lang/String;

    :cond_3e
    return-void
.end method
