.class public abstract Lcom/google/android/youtube/coreicecream/ControllerActivity;
.super Landroid/app/Activity;
.source "ControllerActivity.java"


# instance fields
.field private final controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/coreicecream/Controller;",
            ">;"
        }
    .end annotation
.end field

.field private selectedController:Lcom/google/android/youtube/coreicecream/Controller;

.field private started:Z

.field private upNavigationEnabled:Z

.field private final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/youtube/coreicecream/Controller;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->views:Ljava/util/Map;

    .line 45
    return-void
.end method


# virtual methods
.method protected addController(Lcom/google/android/youtube/coreicecream/Controller;Landroid/os/Bundle;)V
    .registers 9
    .parameter "controller"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/youtube/coreicecream/Controller;->getContentViewId()I

    move-result v1

    .line 60
    .local v1, contentViewId:I
    const/4 v0, 0x0

    .line 61
    .local v0, content:Landroid/view/View;
    if-ltz v1, :cond_18

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    iget-object v4, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->views:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_18
    iget-object v4, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const/4 v3, 0x0

    .line 68
    .local v3, controllerState:Landroid/os/Bundle;
    if-eqz p2, :cond_3f

    .line 69
    iget-object v4, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 70
    .local v2, controllerIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controller_state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 73
    .end local v2           #controllerIndex:I
    :cond_3f
    invoke-virtual {p1, v0, v3}, Lcom/google/android/youtube/coreicecream/Controller;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    iget-object v4, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4e

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectController(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 78
    :cond_4e
    return-void
.end method

.method protected final addPaddingForActionBar(Lcom/google/android/youtube/coreicecream/Controller;)V
    .registers 9
    .parameter "controller"

    .prologue
    const/4 v6, 0x0

    .line 303
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getView(Lcom/google/android/youtube/coreicecream/Controller;)Landroid/view/View;

    move-result-object v2

    .line 304
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10102eb

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 305
    .local v1, vals:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v0, v3

    .line 306
    .local v0, actionBarHeight:I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 311
    return-void
.end method

.method public final enableUpNavigation(Z)V
    .registers 5
    .parameter "upNavigationEnabled"

    .prologue
    const/4 v2, 0x4

    .line 163
    iput-boolean p1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->upNavigationEnabled:Z

    .line 164
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 165
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz p1, :cond_e

    move v1, v2

    :goto_a
    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 167
    return-void

    .line 165
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected final getView(Lcom/google/android/youtube/coreicecream/Controller;)Landroid/view/View;
    .registers 3
    .parameter "controller"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->views:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/coreicecream/Controller;->onActivityResult(IILandroid/content/Intent;)Z

    .line 296
    return-void
.end method

.method public final onBackPressed()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->onBackPressed()Z

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
    .parameter "savedInstanceState"

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
    .parameter "id"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    if-eqz v0, :cond_d

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/coreicecream/Controller;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 239
    :cond_d
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .registers 4

    .prologue
    .line 156
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/Controller;

    .line 157
    .local v0, controller:Lcom/google/android/youtube/coreicecream/Controller;
    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->onDestroy()V

    goto :goto_6

    .line 159
    .end local v0           #controller:Lcom/google/android/youtube/coreicecream/Controller;
    :cond_16
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->onKeyDown(ILandroid/view/KeyEvent;)Z

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
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->onKeyUp(ILandroid/view/KeyEvent;)Z

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
    .parameter "item"

    .prologue
    .line 254
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->upNavigationEnabled:Z

    if-eqz v0, :cond_12

    .line 256
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->onUpPressed()V

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_11
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 266
    return-void
.end method

.method protected final onPause()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->onPause()V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    return-void
.end method

.method protected final onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/coreicecream/Controller;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 248
    :cond_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 200
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_41

    .line 201
    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/Controller;

    .line 202
    .local v0, controller:Lcom/google/android/youtube/coreicecream/Controller;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "controller_state_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 203
    .local v1, controllerState:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/Controller;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 205
    const-string v5, "controller_ui_state"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 207
    .local v2, controllerUiState:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->views:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 208
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_3e

    .line 209
    invoke-virtual {v4, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 200
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    .end local v0           #controller:Lcom/google/android/youtube/coreicecream/Controller;
    .end local v1           #controllerState:Landroid/os/Bundle;
    .end local v2           #controllerUiState:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v4           #view:Landroid/view/View;
    :cond_41
    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    const-string v6, "selected_controller_index"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {p0, v5}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectController(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 214
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->onResume()V

    .line 139
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 10
    .parameter "outState"

    .prologue
    .line 180
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_49

    .line 181
    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/Controller;

    .line 182
    .local v0, controller:Lcom/google/android/youtube/coreicecream/Controller;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v1, controllerOutState:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 186
    .local v2, controllerUiState:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->views:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 187
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_2b

    .line 188
    invoke-virtual {v4, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 190
    :cond_2b
    const-string v5, "controller_ui_state"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "controller_state_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 194
    .end local v0           #controller:Lcom/google/android/youtube/coreicecream/Controller;
    .end local v1           #controllerOutState:Landroid/os/Bundle;
    .end local v2           #controllerUiState:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v4           #view:Landroid/view/View;
    :cond_49
    const-string v5, "selected_controller_index"

    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    return-void
.end method

.method public final onSearchRequested()Z
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->onSearchRequested()Z

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
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    if-eqz v0, :cond_c

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->onStart()V

    .line 132
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->started:Z

    .line 133
    return-void
.end method

.method protected final onStop()V
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->started:Z

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller;->onStop()V

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 152
    return-void
.end method

.method protected onUpPressed()V
    .registers 1

    .prologue
    .line 270
    return-void
.end method

.method protected selectController(Lcom/google/android/youtube/coreicecream/Controller;)V
    .registers 5
    .parameter "controller"

    .prologue
    .line 89
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    if-eq p1, v1, :cond_36

    .line 93
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    if-eqz v1, :cond_19

    .line 94
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v1}, Lcom/google/android/youtube/coreicecream/Controller;->onStop()V

    .line 96
    :cond_19
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->invalidateOptionsMenu()V

    .line 100
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->views:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 101
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2d

    .line 102
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->setContentView(Landroid/view/View;)V

    .line 104
    :cond_2d
    iget-boolean v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->started:Z

    if-eqz v1, :cond_36

    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectedController:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {v1}, Lcom/google/android/youtube/coreicecream/Controller;->onStart()V

    .line 108
    .end local v0           #view:Landroid/view/View;
    :cond_36
    return-void
.end method

.method protected selectControllerFromExtras(Landroid/os/Bundle;)V
    .registers 5
    .parameter "extras"

    .prologue
    .line 116
    if-eqz p1, :cond_1e

    .line 117
    const-string v1, "selected_controller_index"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, index:I
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 119
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->selectController(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 122
    .end local v0           #index:I
    :cond_1e
    return-void
.end method
