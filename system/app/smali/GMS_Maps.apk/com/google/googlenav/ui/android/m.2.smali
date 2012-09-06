.class public Lcom/google/googlenav/ui/android/M;
.super Lcom/google/googlenav/ui/view/d;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/googlenav/ui/android/aC;


# instance fields
.field private final b:Lcom/google/googlenav/ui/android/ElevationChartView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/ui/android/M;->a:Lcom/google/googlenav/ui/android/aC;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/android/ButtonContainer;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/android/M;->a(Lcom/google/googlenav/ui/android/ButtonContainer;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 36
    iget-object v0, p0, Lcom/google/googlenav/ui/android/M;->d:Landroid/view/View;

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/ElevationChartView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/M;->b:Lcom/google/googlenav/ui/android/ElevationChartView;

    .line 37
    return-void
.end method

.method private static a(Lcom/google/googlenav/ui/android/ButtonContainer;I)Landroid/view/View;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 43
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/ui/android/M;->b:Lcom/google/googlenav/ui/android/ElevationChartView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ElevationChartView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/android/M;->b:Lcom/google/googlenav/ui/android/ElevationChartView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/ElevationChartView;->a(Ljava/util/List;Z)V

    .line 70
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/ui/android/M;->d:Landroid/view/View;

    const v1, 0x7f100189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/M;->b()V

    .line 53
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/android/M;->b:Lcom/google/googlenav/ui/android/ElevationChartView;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/android/ElevationChartView;->a(Ljava/util/List;Z)V

    .line 61
    iget-object v0, p0, Lcom/google/googlenav/ui/android/M;->b:Lcom/google/googlenav/ui/android/ElevationChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ElevationChartView;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/google/googlenav/ui/view/d;->b()V

    .line 79
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 88
    return-void
.end method
