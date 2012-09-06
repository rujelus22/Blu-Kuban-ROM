.class public abstract Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/ae;
.implements Lcom/google/android/youtube/core/async/bd;


# instance fields
.field private m:Lcom/google/android/youtube/app/YouTubeApplication;

.field private n:Landroid/content/SharedPreferences;

.field private o:Lcom/google/android/youtube/core/Analytics;

.field private p:Lcom/google/android/youtube/app/a;

.field private q:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

.field private r:Landroid/app/ActionBar;

.field private s:Lcom/google/android/youtube/app/ui/am;

.field private t:Z

.field private u:Lcom/google/android/youtube/app/ui/bq;

.field private v:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private w:Lcom/google/android/youtube/app/remote/ab;

.field private x:Lcom/google/android/youtube/app/honeycomb/phone/au;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 322
    return-void
.end method

.method protected a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    return-void
.end method

.method public a(Lcom/google/android/youtube/app/remote/RemoteControl;)V
    .registers 3
    .parameter

    .prologue
    .line 336
    if-eqz p1, :cond_8

    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->u:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bq;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    .line 341
    :goto_7
    return-void

    .line 339
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->u:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bq;->a()V

    goto :goto_7
.end method

.method protected b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->r:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->r:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected final e(I)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->r:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->r:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 148
    return-void
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 292
    :goto_c
    return-void

    .line 291
    :cond_d
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 64
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 65
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->setRequestedOrientation(I)V

    .line 68
    :cond_c
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->setDefaultKeyMode(I)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->setVolumeControlStream(I)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t:Z

    .line 73
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->r:Landroid/app/ActionBar;

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->r:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->f()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->r:Landroid/app/ActionBar;

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 80
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->o:Lcom/google/android/youtube/core/Analytics;

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->n:Landroid/content/SharedPreferences;

    .line 85
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/bk;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/bk;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->p:Lcom/google/android/youtube/app/a;

    .line 86
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->p:Lcom/google/android/youtube/app/a;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->q:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    .line 88
    new-instance v0, Lcom/google/android/youtube/app/ui/am;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/am;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->s:Lcom/google/android/youtube/app/ui/am;

    .line 89
    new-instance v0, Lcom/google/android/youtube/app/ui/bq;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->o:Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/app/k;->m()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/youtube/app/ui/bq;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->u:Lcom/google/android/youtube/app/ui/bq;

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->v:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->v:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bd;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/app/remote/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->w:Lcom/google/android/youtube/app/remote/ab;

    .line 96
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/phone/au;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/au;

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/au;->b(Z)V

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->q:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/l;)V

    .line 100
    return-void
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
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

    .line 262
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 269
    :goto_7
    return-object v0

    .line 265
    :cond_8
    packed-switch p1, :pswitch_data_28

    .line 269
    if-eqz p2, :cond_23

    packed-switch p1, :pswitch_data_2e

    goto :goto_7

    :pswitch_11
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/app/g;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/youtube/app/g;->a(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 267
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->s:Lcom/google/android/youtube/app/ui/am;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/am;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 269
    :cond_23
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->b(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 265
    :pswitch_data_28
    .packed-switch 0x3f1
        :pswitch_1c
    .end packed-switch

    .line 269
    :pswitch_data_2e
    .packed-switch 0x3eb
        :pswitch_11
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->q:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Landroid/view/Menu;)Z

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/au;->a(Landroid/view/Menu;)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->v:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Lcom/google/android/youtube/core/async/bd;)V

    .line 105
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 106
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->u:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bq;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->u:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bq;->c(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_10

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->p:Lcom/google/android/youtube/app/a;

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->a()V

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->q:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_f
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t:Z

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->q:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->b()V

    .line 117
    :cond_9
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 118
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/au;->a()V

    .line 219
    return v0
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->o:Lcom/google/android/youtube/core/Analytics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onSearchRequested()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->q:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Z)V

    .line 235
    return v1
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->w:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/ab;->c()V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->w:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ae;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->w:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/ab;->b()Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1a

    .line 133
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->u:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/bq;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    .line 135
    :cond_1a
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->w:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/ab;->d()V

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->w:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/ae;)V

    .line 141
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 142
    return-void
.end method

.method protected final s()V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->r:Landroid/app/ActionBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 159
    return-void
.end method

.method public final setContentView(I)V
    .registers 2
    .parameter

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 180
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void
.end method

.method protected final t()Lcom/google/android/youtube/app/a;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->p:Lcom/google/android/youtube/app/a;

    return-object v0
.end method

.method protected final u()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->q:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    return-object v0
.end method

.method public final v()Lcom/google/android/youtube/core/Analytics;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->o:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method protected final w()Lcom/google/android/youtube/app/ui/bq;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->u:Lcom/google/android/youtube/app/ui/bq;

    return-object v0
.end method

.method protected final x()Lcom/google/android/youtube/app/honeycomb/phone/au;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->x:Lcom/google/android/youtube/app/honeycomb/phone/au;

    return-object v0
.end method

.method public z()V
    .registers 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->finish()V

    .line 329
    return-void
.end method
