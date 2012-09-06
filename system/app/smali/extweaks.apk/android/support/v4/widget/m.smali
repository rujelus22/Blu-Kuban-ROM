.class final Landroid/support/v4/widget/m;
.super Ljava/lang/Object;
.source "SearchViewCompatHoneycomb.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/n;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/n;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/n;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/n;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/n;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/n;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
