.class final Landroid/support/v4/view/j;
.super Landroid/database/DataSetObserver;

# interfaces
.implements Landroid/support/v4/view/ab;
.implements Landroid/support/v4/view/ac;


# instance fields
.field final synthetic a:Landroid/support/v4/view/PagerTitleStrip;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/PagerTitleStrip;B)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/view/j;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    iget v0, p0, Landroid/support/v4/view/j;->b:I

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/i;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/i;)V

    :cond_19
    return-void
.end method

.method public final a(IF)V
    .registers 4

    const/high16 v0, 0x3f00

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    add-int/lit8 p1, p1, 0x1

    :cond_8
    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(IF)V

    return-void
.end method

.method public final a(Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V

    return-void
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/view/j;->b:I

    return-void
.end method

.method public final onChanged()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/i;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/i;)V

    return-void
.end method
