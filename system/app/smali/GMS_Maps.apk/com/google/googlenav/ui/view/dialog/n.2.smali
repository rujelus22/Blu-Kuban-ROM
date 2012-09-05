.class Lcom/google/googlenav/ui/view/dialog/n;
.super Landroid/support/v4/view/PagerAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/n;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public getCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/n;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/view/dialog/d;->a(Lcom/google/googlenav/ui/view/dialog/d;I)LaD/d;

    move-result-object v0

    invoke-virtual {v0}, LaD/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/n;->a:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/d;->e(Lcom/google/googlenav/ui/view/dialog/d;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p2

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
