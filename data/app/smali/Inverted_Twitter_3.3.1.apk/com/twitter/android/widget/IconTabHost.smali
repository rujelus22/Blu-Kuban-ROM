.class public Lcom/twitter/android/widget/IconTabHost;
.super Landroid/widget/TabHost;


# instance fields
.field private a:Lcom/twitter/android/widget/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/widget/e;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/IconTabHost;->a:Lcom/twitter/android/widget/e;

    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/IconTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroid/widget/TabHost;->dispatchWindowFocusChanged(Z)V

    :cond_9
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/IconTabHost;->getCurrentTab()I

    move-result v0

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/twitter/android/widget/IconTabHost;->a:Lcom/twitter/android/widget/e;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twitter/android/widget/IconTabHost;->a:Lcom/twitter/android/widget/e;

    invoke-interface {v0}, Lcom/twitter/android/widget/e;->b()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_f
.end method
