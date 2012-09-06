.class public abstract Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/ui/b;


# instance fields
.field private m:Landroid/app/ActionBar;

.field private n:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

.field private o:Ljava/util/ArrayList;

.field private p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->q:Z

    .line 120
    return-void
.end method

.method protected final a(Lcom/google/android/youtube/app/honeycomb/phone/bv;)V
    .registers 4
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->n:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    const-string v1, "setWorkspace() must be called before addTab()"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 79
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bv;->d()V

    .line 82
    :cond_1c
    return-void
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c(I)V
    .registers 4
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->n:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->b(Z)V

    .line 70
    const v0, 0x7f080033

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->m:Landroid/app/ActionBar;

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->a(Landroid/app/Activity;ILandroid/app/ActionBar;)Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->n:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->n:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->setOnTabSelectedListener(Lcom/google/android/youtube/core/ui/b;)V

    .line 72
    return-void

    .line 68
    :cond_19
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final d(I)V
    .registers 4
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->u()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->b()V

    .line 124
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/phone/bv;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    .line 126
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->r:Z

    if-eqz v0, :cond_1f

    .line 127
    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/bv;->c()V

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bv;->d()V

    .line 130
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->invalidateOptionsMenu()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->q:Z

    .line 132
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->n:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    return-object v0
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/phone/bv;

    .line 156
    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bv;->b()V

    goto :goto_9

    .line 158
    :cond_19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->m:Landroid/app/ActionBar;

    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->m:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->o:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    .line 98
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080148

    if-ne v0, v1, :cond_29

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bv;->a()Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_21

    const v1, 0x7f0b01fa

    invoke-static {p0, v1, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 110
    const/4 v0, 0x1

    .line 113
    :goto_20
    return v0

    .line 106
    :cond_21
    const v0, 0x7f0b01f9

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 112
    :cond_29
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    .line 113
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_20
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPause()V

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    if-eqz v0, :cond_c

    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bv;->c()V

    .line 50
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->r:Z

    .line 51
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->r:Z

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->q:Z

    if-nez v0, :cond_13

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/bv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/bv;->d()V

    .line 60
    :cond_13
    return-void
.end method
