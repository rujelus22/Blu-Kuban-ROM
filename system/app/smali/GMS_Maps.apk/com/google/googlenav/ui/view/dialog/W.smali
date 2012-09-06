.class Lcom/google/googlenav/ui/view/dialog/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/s;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/w;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/w;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/s;->d(Lcom/google/googlenav/ui/view/dialog/s;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v0

    .line 213
    const/4 v1, 0x2

    if-ge v0, v1, :cond_18

    .line 214
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/w;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/s;->d(Lcom/google/googlenav/ui/view/dialog/s;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 216
    :cond_18
    return-void
.end method
