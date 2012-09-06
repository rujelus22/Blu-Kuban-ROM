.class LIy;
.super Ljava/lang/Object;
.source "HoneycombActionBarHelper.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic a:LIu;

.field final synthetic a:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(LIu;Landroid/view/MenuItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, LIy;->a:LIu;

    iput-object p2, p0, LIy;->a:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, LIy;->a:LIu;

    iget-object v1, p0, LIy;->a:Landroid/view/MenuItem;

    invoke-static {v0, p1, v1}, LIu;->a(LIu;Ljava/lang/String;Landroid/view/MenuItem;)V

    .line 294
    const/4 v0, 0x1

    return v0
.end method
