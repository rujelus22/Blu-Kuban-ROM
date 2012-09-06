.class public abstract Lcom/google/android/youtube/coreicecream/ControllerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private final m:Ljava/util/List;

.field private n:Lcom/google/android/youtube/coreicecream/Controller;

.field private o:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    .line 43
    sget-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->STOPPED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->o:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 44
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/coreicecream/Controller;)I
    .registers 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/android/youtube/coreicecream/Controller;Landroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    .line 64
    if-eqz p2, :cond_1f

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "controller_state_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 69
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/youtube/coreicecream/Controller;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->b(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 75
    :cond_37
    return-void
.end method

.method protected final b(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 160
    if-eqz p1, :cond_1e

    .line 161
    const-string v0, "selected_controller_index"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 162
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 163
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->b(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 166
    :cond_1e
    return-void
.end method

.method protected final b(Lcom/google/android/youtube/coreicecream/Controller;)V
    .registers 6
    .parameter

    .prologue
    .line 104
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    if-eq p1, v0, :cond_38

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    if-eqz v0, :cond_30

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    sget-object v1, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->STOPPED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    const-string v2, "controller cannot be null"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "newState cannot be null"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "given controller not managed by this activity"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/Controller;->a(Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;)V

    .line 111
    :cond_30
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    .line 113
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->invalidateOptionsMenu()V

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 116
    :cond_38
    return-void
.end method

.method public final b(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->p:Z

    .line 232
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 235
    return-void
.end method

.method protected c(Lcom/google/android/youtube/coreicecream/Controller;)V
    .registers 3
    .parameter

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/google/android/youtube/coreicecream/Controller;->s()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 149
    invoke-virtual {p1}, Lcom/google/android/youtube/coreicecream/Controller;->s()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->setContentView(Landroid/view/View;)V

    .line 151
    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->o:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/coreicecream/Controller;->a(Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;)V

    .line 152
    return-void
.end method

.method protected final d(Lcom/google/android/youtube/coreicecream/Controller;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 378
    invoke-virtual {p1}, Lcom/google/android/youtube/coreicecream/Controller;->s()Landroid/view/View;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10102eb

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 380
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 381
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 386
    return-void
.end method

.method protected e()V
    .registers 1

    .prologue
    .line 337
    return-void
.end method

.method protected final f()Lcom/google/android/youtube/coreicecream/Controller;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/coreicecream/Controller;->a(IILandroid/content/Intent;)Z

    .line 371
    return-void
.end method

.method public final onBackPressed()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->l()Z

    move-result v0

    if-nez v0, :cond_b

    .line 342
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 344
    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 54
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->setVolumeControlStream(I)V

    .line 55
    return-void
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->c(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->a(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    if-eqz v0, :cond_d

    .line 304
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/coreicecream/Controller;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 306
    :cond_d
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method protected final onDestroy()V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/Controller;

    .line 225
    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->d()V

    goto :goto_6

    .line 227
    :cond_16
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 228
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 321
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->p:Z

    if-eqz v0, :cond_12

    .line 323
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->e()V

    .line 324
    const/4 v0, 0x1

    .line 326
    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_11
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    .line 333
    return-void
.end method

.method protected final onPause()V
    .registers 3

    .prologue
    .line 208
    sget-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->PAUSED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->o:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    sget-object v1, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->PAUSED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/Controller;->a(Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;)V

    .line 210
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 211
    return-void
.end method

.method protected final onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    .line 297
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    if-eqz v0, :cond_9

    .line 313
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->a(Landroid/view/Menu;)V

    .line 315
    :cond_9
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 268
    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_38

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/Controller;

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "controller_state_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 271
    const-string v4, "controller_ui_state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 275
    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->s()Landroid/view/View;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_34

    .line 277
    invoke-virtual {v0, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 268
    :cond_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 280
    :cond_38
    const-string v0, "selected_controller_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_49

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    const/4 v2, 0x1

    :cond_49
    const-string v1, "controller index out of bound"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->b(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 281
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 202
    sget-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->RESUMED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->o:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    sget-object v1, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->RESUMED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/Controller;->a(Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;)V

    .line 204
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 248
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_43

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/Controller;

    .line 250
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 251
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/coreicecream/Controller;->a(Landroid/os/Bundle;)V

    .line 253
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 254
    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->s()Landroid/view/View;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_28

    .line 256
    invoke-virtual {v0, v3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 258
    :cond_28
    const-string v0, "controller_ui_state"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "controller_state_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 248
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 262
    :cond_43
    const-string v0, "selected_controller_index"

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    return-void
.end method

.method public final onSearchRequested()Z
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 240
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    move-result v0

    .line 242
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 170
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 171
    sget-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->PAUSED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->o:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    if-eqz v0, :cond_12

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->n:Lcom/google/android/youtube/coreicecream/Controller;

    sget-object v1, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->PAUSED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/Controller;->a(Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;)V

    .line 180
    :cond_12
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 215
    sget-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->STOPPED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->o:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/Controller;

    .line 217
    sget-object v2, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->STOPPED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/coreicecream/Controller;->a(Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;)V

    goto :goto_a

    .line 219
    :cond_1c
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 220
    return-void
.end method
