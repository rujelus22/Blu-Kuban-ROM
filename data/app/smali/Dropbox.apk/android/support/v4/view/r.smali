.class final Landroid/support/v4/view/r;
.super Landroid/database/DataSetObserver;
.source "panda.py"

# interfaces
.implements Landroid/support/v4/view/N;
.implements Landroid/support/v4/view/O;


# instance fields
.field final synthetic a:Landroid/support/v4/view/PagerTitleStrip;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-direct {p0, p1}, Landroid/support/v4/view/r;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 305
    iget v0, p0, Landroid/support/v4/view/r;->b:I

    if-nez v0, :cond_19

    .line 307
    iget-object v0, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/p;)V

    .line 309
    :cond_19
    return-void
.end method

.method public final a(IFI)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    const/high16 v0, 0x3f00

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    .line 298
    add-int/lit8 p1, p1, 0x1

    .line 300
    :cond_8
    iget-object v0, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(IF)V

    .line 301
    return-void
.end method

.method public final a(Landroid/support/v4/view/p;Landroid/support/v4/view/p;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/p;Landroid/support/v4/view/p;)V

    .line 319
    return-void
.end method

.method public final b(I)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput p1, p0, Landroid/support/v4/view/r;->b:I

    .line 314
    return-void
.end method

.method public final onChanged()V
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/p;)V

    .line 324
    return-void
.end method
