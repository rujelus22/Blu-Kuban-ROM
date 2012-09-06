.class Lcom/google/googlenav/actionbar/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;


# direct methods
.method constructor <init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)V
    .registers 2
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/googlenav/actionbar/d;->a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/googlenav/actionbar/d;->a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    iget-object v0, v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_f

    .line 251
    iget-object v0, p0, Lcom/google/googlenav/actionbar/d;->a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    iget-object v0, v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    sget-object v1, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/actionbar/d;->a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    invoke-static {v0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)Lcom/google/googlenav/actionbar/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/actionbar/b;->b()V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/googlenav/actionbar/d;->a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    iget-object v0, v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_f

    .line 240
    iget-object v0, p0, Lcom/google/googlenav/actionbar/d;->a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    iget-object v0, v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    sget-object v1, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->d:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_f
    const/4 v0, 0x1

    return v0
.end method
