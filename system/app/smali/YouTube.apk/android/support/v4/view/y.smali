.class final Landroid/support/v4/view/y;
.super Landroid/database/DataSetObserver;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ay;
.implements Landroid/support/v4/view/az;


# instance fields
.field final synthetic a:Landroid/support/v4/view/PagerTitleStrip;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .registers 2
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/PagerTitleStrip;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 464
    invoke-direct {p0, p1}, Landroid/support/v4/view/y;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 479
    iget v0, p0, Landroid/support/v4/view/y;->b:I

    if-nez v0, :cond_19

    .line 481
    iget-object v0, p0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/v;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/v;)V

    .line 483
    :cond_19
    return-void
.end method

.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 487
    iput p1, p0, Landroid/support/v4/view/y;->b:I

    .line 488
    return-void
.end method

.method public final a(IF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 470
    const/high16 v0, 0x3f00

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    .line 472
    add-int/lit8 p1, p1, 0x1

    .line 474
    :cond_8
    iget-object v0, p0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/PagerTitleStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    .line 475
    return-void
.end method

.method public final a(Landroid/support/v4/view/v;Landroid/support/v4/view/v;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 492
    iget-object v0, p0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/v;Landroid/support/v4/view/v;)V

    .line 493
    return-void
.end method

.method public final onChanged()V
    .registers 4

    .prologue
    .line 497
    iget-object v0, p0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/v;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/v;)V

    .line 498
    return-void
.end method
