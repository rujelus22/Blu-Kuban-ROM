.class Lcom/google/googlenav/ui/view/dialog/e;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/e;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 6

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/e;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/d;->a(Lcom/google/googlenav/ui/view/dialog/d;)Landroid/view/View;

    move-result-object v3

    if-lez p1, :cond_1b

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/e;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/d;->b(Lcom/google/googlenav/ui/view/dialog/d;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    if-ge p1, v3, :cond_1d

    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1b
    move v0, v2

    goto :goto_b

    :cond_1d
    move v1, v2

    goto :goto_17
.end method
