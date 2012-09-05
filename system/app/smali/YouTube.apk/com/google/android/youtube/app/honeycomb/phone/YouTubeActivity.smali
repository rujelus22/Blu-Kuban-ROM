.class public abstract Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/app/YouTubeApplication;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/google/android/youtube/core/Analytics;

.field private d:Lcom/google/android/youtube/app/o;

.field private e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

.field private f:Landroid/app/ActionBar;

.field private g:Lcom/google/android/youtube/app/ui/af;

.field private h:Z

.field private i:Lcom/google/android/youtube/app/ui/bb;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method protected final d(I)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 98
    return-void
.end method

.method protected d()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected final k()V
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f:Landroid/app/ActionBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 109
    return-void
.end method

.method protected final l()Lcom/google/android/youtube/app/o;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->d:Lcom/google/android/youtube/app/o;

    return-object v0
.end method

.method protected final m()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    return-object v0
.end method

.method public final n()Lcom/google/android/youtube/core/Analytics;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->c:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 233
    :goto_c
    return-void

    .line 232
    :cond_d
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x3

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->setDefaultKeyMode(I)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->setVolumeControlStream(I)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->h:Z

    .line 54
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f:Landroid/app/ActionBar;

    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f:Landroid/app/ActionBar;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f:Landroid/app/ActionBar;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setLogo(I)V

    .line 64
    :goto_30
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->c:Lcom/google/android/youtube/core/Analytics;

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->C()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->b:Landroid/content/SharedPreferences;

    .line 69
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ak;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ak;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->d:Lcom/google/android/youtube/app/o;

    .line 70
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->d:Lcom/google/android/youtube/app/o;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    .line 72
    new-instance v0, Lcom/google/android/youtube/app/ui/af;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/af;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->g:Lcom/google/android/youtube/app/ui/af;

    .line 73
    new-instance v0, Lcom/google/android/youtube/app/ui/bb;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/app/p;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->c:Lcom/google/android/youtube/core/Analytics;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/youtube/app/ui/bb;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/Analytics;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->i:Lcom/google/android/youtube/app/ui/bb;

    .line 74
    return-void

    .line 60
    :cond_78
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_30
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 210
    :goto_7
    return-object v0

    .line 206
    :cond_8
    packed-switch p1, :pswitch_data_28

    .line 210
    if-eqz p2, :cond_23

    packed-switch p1, :pswitch_data_2e

    goto :goto_7

    :pswitch_11
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->h()Lcom/google/android/youtube/app/aa;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 208
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->g:Lcom/google/android/youtube/app/ui/af;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/af;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 210
    :cond_23
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 206
    :pswitch_data_28
    .packed-switch 0x3f1
        :pswitch_1c
    .end packed-switch

    .line 210
    :pswitch_data_2e
    .packed-switch 0x3eb
        :pswitch_11
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->i:Lcom/google/android/youtube/app/ui/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->i:Lcom/google/android/youtube/app/ui/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bb;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_10

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->d:Lcom/google/android/youtube/app/o;

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->a()V

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_f
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->h:Z

    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->b()V

    .line 85
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->c:Lcom/google/android/youtube/core/Analytics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onSearchRequested()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Z)V

    .line 176
    return v1
.end method

.method public final setContentView(I)V
    .registers 2
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 130
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void
.end method
