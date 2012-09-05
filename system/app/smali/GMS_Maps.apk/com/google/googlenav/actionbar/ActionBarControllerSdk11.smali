.class public Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;
.super Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;


# static fields
.field static final synthetic a:Z


# instance fields
.field private e:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .registers 5

    return-void
.end method

.method public a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/D;)V
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->a:Z

    if-nez v0, :cond_f

    if-nez p2, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    iput-object p2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->e:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_18

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->a(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/ui/D;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v2, 0x7f03

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    new-instance v2, Lcom/google/googlenav/actionbar/c;

    invoke-direct {v2, p0}, Lcom/google/googlenav/actionbar/c;-><init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;)V

    invoke-virtual {p0, v0, v5, v2}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_17
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected k()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
