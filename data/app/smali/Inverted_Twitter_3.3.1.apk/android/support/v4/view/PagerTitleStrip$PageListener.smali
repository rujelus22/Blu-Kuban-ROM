.class Landroid/support/v4/view/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Landroid/support/v4/view/PagerTitleStrip;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public onChanged()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    const/high16 v0, 0x3f00

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    add-int/lit8 p1, p1, 0x1

    :cond_8
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    :cond_19
    return-void
.end method
