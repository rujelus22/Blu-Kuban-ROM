.class public abstract Lcom/google/android/youtube/coreicecream/ControllerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/Map;

.field private c:Lcom/google/android/youtube/coreicecream/a;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->b:Ljava/util/Map;

    .line 45
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 270
    return-void
.end method

.method protected a(Lcom/google/android/youtube/coreicecream/a;)V
    .registers 4
    .parameter

    .prologue
    .line 89
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/k;->a(Z)V

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    if-eq p1, v0, :cond_36

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    if-eqz v0, :cond_19

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/a;->h_()V

    .line 96
    :cond_19
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->invalidateOptionsMenu()V

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 101
    if-eqz v0, :cond_2d

    .line 102
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->setContentView(Landroid/view/View;)V

    .line 104
    :cond_2d
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->d:Z

    if-eqz v0, :cond_36

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/a;->i_()V

    .line 108
    :cond_36
    return-void
.end method

.method protected a(Lcom/google/android/youtube/coreicecream/a;Landroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/youtube/coreicecream/a;->a()I

    move-result v0

    .line 61
    if-ltz v0, :cond_4d

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_17
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    if-eqz p2, :cond_3d

    .line 69
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controller_state_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 73
    :cond_3d
    invoke-virtual {p1, v0, v1}, Lcom/google/android/youtube/coreicecream/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a(Lcom/google/android/youtube/coreicecream/a;)V

    .line 78
    :cond_4c
    return-void

    :cond_4d
    move-object v0, v1

    goto :goto_17
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->e:Z

    .line 164
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 167
    return-void
.end method

.method protected final b()Lcom/google/android/youtube/coreicecream/a;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    return-object v0
.end method

.method protected final b(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 116
    if-eqz p1, :cond_1e

    .line 117
    const-string v0, "selected_controller_index"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 118
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 119
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a(Lcom/google/android/youtube/coreicecream/a;)V

    .line 122
    :cond_1e
    return-void
.end method

.method protected final b(Lcom/google/android/youtube/coreicecream/a;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 304
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10102eb

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 305
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 306
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

    .line 311
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/coreicecream/a;->a(IILandroid/content/Intent;)Z

    .line 296
    return-void
.end method

.method public final onBackPressed()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/a;->i()Z

    move-result v0

    if-nez v0, :cond_b

    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 277
    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->setVolumeControlStream(I)V

    .line 52
    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/a;->c(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/coreicecream/a;->a(ILandroid/os/Bundle;)Landroid/app/Dialog;

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
    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    if-eqz v0, :cond_d

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/coreicecream/a;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 239
    :cond_d
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/a;

    .line 157
    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/a;->d()V

    goto :goto_6

    .line 159
    :cond_16
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/coreicecream/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

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
    .line 290
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/coreicecream/a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

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
    .line 254
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->e:Z

    if-eqz v0, :cond_12

    .line 256
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a()V

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/a;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_11
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    .line 266
    return-void
.end method

.method protected final onPause()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/a;->h()V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    return-void
.end method

.method protected final onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    .line 230
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/a;->a(Landroid/view/Menu;)V

    .line 248
    :cond_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_40

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/a;

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controller_state_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 203
    const-string v3, "controller_ui_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 207
    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 208
    if-eqz v0, :cond_3c

    .line 209
    invoke-virtual {v0, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 200
    :cond_3c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 212
    :cond_40
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    const-string v1, "selected_controller_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a(Lcom/google/android/youtube/coreicecream/a;)V

    .line 214
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/a;->g()V

    .line 139
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/a;

    .line 182
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 183
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/coreicecream/a;->a(Landroid/os/Bundle;)V

    .line 185
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 186
    iget-object v4, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 187
    if-eqz v0, :cond_2c

    .line 188
    invoke-virtual {v0, v3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 190
    :cond_2c
    const-string v0, "controller_ui_state"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controller_state_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 194
    :cond_4b
    const-string v0, "selected_controller_index"

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    return-void
.end method

.method public final onSearchRequested()Z
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/a;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 174
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final onStart()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    if-eqz v0, :cond_c

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/a;->i_()V

    .line 132
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->d:Z

    .line 133
    return-void
.end method

.method protected final onStop()V
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->d:Z

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->c:Lcom/google/android/youtube/coreicecream/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/a;->h_()V

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 152
    return-void
.end method
