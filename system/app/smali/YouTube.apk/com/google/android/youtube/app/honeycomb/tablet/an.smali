.class public abstract Lcom/google/android/youtube/app/honeycomb/tablet/an;
.super Lcom/google/android/youtube/coreicecream/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field protected final b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

.field protected final c:Lcom/google/android/youtube/app/YouTubeApplication;

.field protected final d:Lcom/google/android/youtube/app/o;

.field protected final e:Lcom/google/android/youtube/app/aa;

.field private final h:Lcom/google/android/youtube/app/ui/af;

.field private final i:Lcom/google/android/youtube/app/ui/bb;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/google/android/youtube/coreicecream/a;-><init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 52
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->d:Lcom/google/android/youtube/app/o;

    .line 53
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-direct {v0, p2, p3, p5}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    .line 54
    const-string v0, "youtube"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->a:Landroid/content/SharedPreferences;

    .line 55
    new-instance v0, Lcom/google/android/youtube/app/ui/af;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/app/ui/af;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h:Lcom/google/android/youtube/app/ui/af;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->h()Lcom/google/android/youtube/app/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->e:Lcom/google/android/youtube/app/aa;

    .line 58
    new-instance v0, Lcom/google/android/youtube/app/ui/bb;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/app/p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/youtube/app/ui/bb;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/Analytics;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i:Lcom/google/android/youtube/app/ui/bb;

    .line 60
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 103
    sparse-switch p1, :sswitch_data_18

    .line 109
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/a;->a(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 105
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->h:Lcom/google/android/youtube/app/ui/af;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/af;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 107
    :sswitch_f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->e:Lcom/google/android/youtube/app/aa;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 103
    :sswitch_data_18
    .sparse-switch
        0x3eb -> :sswitch_f
        0x3f1 -> :sswitch_8
    .end sparse-switch
.end method

.method protected a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/a;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Landroid/view/Menu;)Z

    .line 91
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->m()Landroid/app/ActionBar;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_21

    .line 69
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    .line 71
    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 73
    :cond_21
    return-void
.end method

.method protected a(IILandroid/content/Intent;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 139
    :goto_f
    return v2

    .line 136
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    goto :goto_f
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i:Lcom/google/android/youtube/app/ui/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/a;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 98
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    return-void
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->i:Lcom/google/android/youtube/app/ui/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bb;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected h_()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/a;->h_()V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a()V

    .line 85
    return-void
.end method

.method protected i_()V
    .registers 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/a;->i_()V

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->k()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V

    .line 79
    return-void
.end method

.method protected final j()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Z)V

    .line 117
    return v1
.end method

.method protected final k()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/an;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 124
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    .line 126
    :goto_17
    return-object v0

    :cond_18
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    goto :goto_17
.end method
