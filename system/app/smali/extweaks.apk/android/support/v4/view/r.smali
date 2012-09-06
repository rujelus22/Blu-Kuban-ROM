.class final Landroid/support/v4/view/r;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/support/v4/view/aj;


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

.method synthetic constructor <init>(Landroid/support/v4/view/PagerTitleStrip;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-direct {p0, p1}, Landroid/support/v4/view/r;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 319
    return-void
.end method

.method public final onChanged()V
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 324
    return-void
.end method

.method public final onPageScrollStateChanged(I)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput p1, p0, Landroid/support/v4/view/r;->b:I

    .line 314
    return-void
.end method

.method public final onPageScrolled(IFI)V
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

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IF)V

    .line 301
    return-void
.end method

.method public final onPageSelected(I)V
    .registers 5
    .parameter

    .prologue
    .line 305
    iget v0, p0, Landroid/support/v4/view/r;->b:I

    if-nez v0, :cond_19

    .line 307
    iget-object v0, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/r;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 309
    :cond_19
    return-void
.end method
