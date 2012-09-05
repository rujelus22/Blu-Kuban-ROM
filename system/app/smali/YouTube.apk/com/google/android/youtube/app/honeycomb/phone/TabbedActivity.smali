.class public abstract Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/ui/b;


# instance fields
.field private a:Landroid/app/ActionBar;

.field private b:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->a(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/honeycomb/phone/ap;)V
    .registers 4
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->b:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    const-string v1, "setWorkspace() must be called before addTab()"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 78
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->g()V

    .line 81
    :cond_1c
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V
    .registers 3
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->e:Z

    .line 119
    return-void
.end method

.method protected final b(I)V
    .registers 4
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->b:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/k;->b(Z)V

    .line 69
    const v0, 0x7f09002a

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->a:Landroid/app/ActionBar;

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->a(Landroid/app/Activity;ILandroid/app/ActionBar;)Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->b:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->b:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->a(Lcom/google/android/youtube/core/ui/b;)V

    .line 71
    return-void

    .line 67
    :cond_19
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 139
    return-void
.end method

.method public final c(I)V
    .registers 4
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->m()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->b()V

    .line 123
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/phone/ap;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    .line 125
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->f:Z

    if-eqz v0, :cond_1f

    .line 126
    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->f()V

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->g()V

    .line 129
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->invalidateOptionsMenu()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->e:Z

    .line 131
    return-void
.end method

.method public final e()Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->b:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    return-object v0
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->a:Landroid/app/ActionBar;

    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->a:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->c:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    if-eqz v0, :cond_c

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->a(Landroid/view/Menu;)V

    .line 97
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900d2

    if-ne v0, v2, :cond_2a

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->d()Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_22

    const v2, 0x7f0a01a5

    invoke-static {p0, v2, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    move v0, v1

    .line 114
    :goto_21
    return v0

    .line 105
    :cond_22
    const v0, 0x7f0a01a4

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 111
    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    .line 112
    goto :goto_21

    .line 114
    :cond_34
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_21
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onPause()V

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    if-eqz v0, :cond_c

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->f()V

    .line 49
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->f:Z

    .line 50
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onResume()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->f:Z

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->e:Z

    if-nez v0, :cond_13

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/ap;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ap;->g()V

    .line 59
    :cond_13
    return-void
.end method
