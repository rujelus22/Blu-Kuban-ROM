.class Lcom/google/googlenav/ui/view/android/bM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field A:Landroid/widget/ImageView;

.field B:Lcom/google/googlenav/ui/bI;

.field C:Lcom/google/googlenav/ui/view/android/bN;

.field D:Lcom/google/googlenav/ui/view/android/bN;

.field E:Lcom/google/googlenav/ui/view/android/bN;

.field F:Lcom/google/googlenav/ui/view/android/bL;

.field G:Lcom/google/googlenav/ui/view/android/bO;

.field H:Lcom/google/googlenav/ui/view/android/bP;

.field I:Lcom/google/googlenav/ui/view/android/bQ;

.field J:Lcom/google/googlenav/ui/view/android/bQ;

.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/CheckBox;

.field d:[Landroid/widget/TextView;

.field e:[Landroid/widget/TextView;

.field f:[Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Lcom/google/googlenav/ui/view/android/DistanceView;

.field i:Lcom/google/googlenav/ui/view/android/HeadingView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/view/View;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/TextView;

.field w:Landroid/widget/ImageView;

.field x:Landroid/widget/ImageView;

.field y:Landroid/widget/LinearLayout;

.field z:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->d:[Landroid/widget/TextView;

    .line 460
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->e:[Landroid/widget/TextView;

    .line 461
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->f:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->C:Lcom/google/googlenav/ui/view/android/bN;

    if-eqz v0, :cond_a

    .line 512
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->C:Lcom/google/googlenav/ui/view/android/bN;

    iput v2, v0, Lcom/google/googlenav/ui/view/android/bN;->b:I

    .line 514
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->D:Lcom/google/googlenav/ui/view/android/bN;

    if-eqz v0, :cond_16

    .line 515
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->D:Lcom/google/googlenav/ui/view/android/bN;

    iput v2, v0, Lcom/google/googlenav/ui/view/android/bN;->b:I

    .line 516
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->D:Lcom/google/googlenav/ui/view/android/bN;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bN;->d:Lcom/google/googlenav/ui/view/android/bJ;

    .line 518
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->E:Lcom/google/googlenav/ui/view/android/bN;

    if-eqz v0, :cond_1e

    .line 519
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->E:Lcom/google/googlenav/ui/view/android/bN;

    iput v2, v0, Lcom/google/googlenav/ui/view/android/bN;->b:I

    .line 521
    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->G:Lcom/google/googlenav/ui/view/android/bO;

    if-eqz v0, :cond_26

    .line 522
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->G:Lcom/google/googlenav/ui/view/android/bO;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bO;->a:Ljava/lang/String;

    .line 524
    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->H:Lcom/google/googlenav/ui/view/android/bP;

    if-eqz v0, :cond_2e

    .line 525
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->H:Lcom/google/googlenav/ui/view/android/bP;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bP;->a:Lcom/google/googlenav/ui/view/a;

    .line 527
    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->I:Lcom/google/googlenav/ui/view/android/bQ;

    if-eqz v0, :cond_36

    .line 528
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->I:Lcom/google/googlenav/ui/view/android/bQ;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bQ;->a:Ljava/lang/String;

    .line 530
    :cond_36
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->J:Lcom/google/googlenav/ui/view/android/bQ;

    if-eqz v0, :cond_3e

    .line 531
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->J:Lcom/google/googlenav/ui/view/android/bQ;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bQ;->a:Ljava/lang/String;

    .line 533
    :cond_3e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->F:Lcom/google/googlenav/ui/view/android/bL;

    if-eqz v0, :cond_46

    .line 534
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bM;->F:Lcom/google/googlenav/ui/view/android/bL;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bL;->a:Ljava/lang/String;

    .line 536
    :cond_46
    return-void
.end method
