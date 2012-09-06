.class public Lcom/google/android/apps/docs/app/BaseActivity;
.super Lcom/google/android/apps/docs/RoboFragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements LdP;
.implements LpL;


# instance fields
.field private a:LIi;

.field public a:LIk;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LdG;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LdQ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public b:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private volatile k:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->i:Z

    .line 47
    iput-boolean v1, p0, Lcom/google/android/apps/docs/app/BaseActivity;->j:Z

    .line 52
    iput-boolean v1, p0, Lcom/google/android/apps/docs/app/BaseActivity;->k:Z

    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    .line 135
    sget-object v1, LdL;->a:LdL;

    invoke-virtual {v0, v1}, LdL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 137
    sget v0, LcZ;->CakemixTheme_Docs:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/BaseActivity;->setTheme(I)V

    .line 139
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->f()V

    .line 140
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->j:Z

    if-nez v0, :cond_c

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->j:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LIk;

    invoke-interface {v0, p0}, LIk;->a(Landroid/app/Activity;)V

    .line 147
    :cond_c
    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LIi;

    if-nez v0, :cond_10

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LIk;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()LIC;

    move-result-object v1

    invoke-interface {v0, p0, v1}, LIk;->a(Landroid/app/Activity;LIC;)LIi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LIi;

    .line 161
    :cond_10
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()Ljava/lang/String;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_11

    .line 288
    iget-object v1, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LdG;

    invoke-interface {v1, v0}, LdG;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 289
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->finish()V

    .line 292
    :cond_11
    return-void
.end method


# virtual methods
.method protected a()LIC;
    .registers 3

    .prologue
    .line 165
    new-instance v1, Lej;

    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-direct {v1, p0, v0}, Lej;-><init>(Landroid/app/Activity;LdL;)V

    return-object v1
.end method

.method public a()LIi;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LIi;

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-object v0
.end method

.method public a()LdL;
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 296
    const-class v0, LdQ;

    if-ne p1, v0, :cond_7

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LdQ;

    .line 306
    :goto_6
    return-object v0

    .line 300
    :cond_7
    const-class v0, LIi;

    if-ne p1, v0, :cond_e

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LIi;

    goto :goto_6

    .line 306
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/RoboFragmentActivity;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()LpI;
    .registers 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()Lans;

    move-result-object v0

    const-class v1, LpI;

    invoke-interface {v0, v1}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpI;

    return-object v0
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->i:Z

    return v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .registers 1

    .prologue
    .line 252
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->k:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->f()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->k:Z

    .line 208
    if-nez p1, :cond_26

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()LpI;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()Lx;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, LpI;->a(Lx;Landroid/content/Context;)Z

    move-result v1

    .line 213
    if-nez v1, :cond_26

    .line 214
    new-instance v1, LdS;

    invoke-direct {v1, p0}, LdS;-><init>(Lcom/google/android/apps/docs/app/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    :cond_26
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LIi;

    invoke-interface {v0, p1}, LIi;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onPause()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->i:Z

    .line 74
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    .line 260
    iget-object v1, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LIi;

    if-eqz v1, :cond_18

    .line 261
    iget-object v1, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LIi;

    invoke-virtual {v0}, LdL;->a()I

    move-result v0

    invoke-interface {v1, v0}, LIi;->a(I)V

    .line 263
    :cond_18
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onPostResume()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->k:Z

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()LpI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()Lx;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, LpI;->a(Lx;Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onResume()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->i:Z

    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->h()V

    .line 61
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 267
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    .line 272
    iput-boolean v2, p0, Lcom/google/android/apps/docs/app/BaseActivity;->k:Z

    .line 277
    :cond_c
    const-string v0, "BaseActivityIsRestart"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onStart()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->k:Z

    .line 228
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->k:Z

    .line 233
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onStop()V

    .line 234
    return-void
.end method

.method public setContentView(I)V
    .registers 2
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->e()V

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->c()V

    .line 97
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->g()V

    .line 98
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->e()V

    .line 105
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->c()V

    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->g()V

    .line 108
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->e()V

    .line 115
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/RoboFragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->c()V

    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->g()V

    .line 118
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseActivity;->a:LIi;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, LIi;->a(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 183
    return-void
.end method
