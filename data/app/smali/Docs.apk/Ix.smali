.class LIx;
.super Ljava/lang/Object;
.source "HoneycombActionBarHelper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:LIu;

.field final synthetic a:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(LIu;Landroid/view/MenuItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, LIx;->a:LIu;

    iput-object p2, p0, LIx;->a:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 260
    if-nez p2, :cond_3

    .line 279
    :goto_2
    return-void

    .line 267
    :cond_3
    invoke-static {}, LIu;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 268
    iget-object v0, p0, LIx;->a:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 272
    :cond_e
    iget-object v0, p0, LIx;->a:LIu;

    iget-object v0, v0, LIu;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    .line 278
    iget-object v0, p0, LIx;->a:LIu;

    invoke-static {v0}, LIu;->a(LIu;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, LIx;->a:LIu;

    invoke-static {v1}, LIu;->a(LIu;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_2
.end method
