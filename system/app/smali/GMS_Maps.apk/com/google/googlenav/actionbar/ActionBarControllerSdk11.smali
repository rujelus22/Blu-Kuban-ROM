.class public Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;
.super Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private h:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
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

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->h:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 110
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v2

    if-eqz v2, :cond_24

    :goto_14
    invoke-virtual {v1, p4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 113
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 114
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 116
    :cond_20
    invoke-virtual {v1, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    return-void

    :cond_24
    move p4, v0

    .line 110
    goto :goto_14
.end method

.method public a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/v;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    sget-boolean v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->a:Z

    if-nez v0, :cond_f

    if-nez p2, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_f
    iput-object p2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->h:Landroid/app/Dialog;

    .line 39
    invoke-virtual {p2}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->f:Landroid/app/ActionBar;

    .line 41
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->f:Landroid/app/ActionBar;

    if-nez v0, :cond_1c

    .line 99
    :goto_1b
    return-void

    .line 45
    :cond_1c
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->a(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/ui/v;)V

    .line 48
    invoke-virtual {p2}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 51
    new-instance v1, Lcom/google/googlenav/actionbar/c;

    invoke-direct {v1, p0}, Lcom/google/googlenav/actionbar/c;-><init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    .line 94
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->f:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_1b
.end method

.method public d()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 126
    return v2
.end method

.method public e()V
    .registers 1

    .prologue
    .line 132
    return-void
.end method

.method public g()V
    .registers 1

    .prologue
    .line 138
    return-void
.end method

.method public h()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public n()Landroid/content/Context;
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Landroid/content/Context;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
