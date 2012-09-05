.class Lcom/google/googlenav/ui/view/dialog/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/h;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/h;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/d;->d(Lcom/google/googlenav/ui/view/dialog/d;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/h;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/d;->d(Lcom/google/googlenav/ui/view/dialog/d;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_18
    return-void
.end method
