.class Lcom/sec/android/app/twlauncher/ShadowedChildManager;
.super Ljava/lang/Object;
.source "ShadowedChildManager.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;
    }
.end annotation


# instance fields
.field private mChildren:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

.field private mSuspendUpdates:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    .line 14
    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/ShadowedChildManager;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/ShadowedChildManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mSuspendUpdates:Z

    return v0
.end method


# virtual methods
.method public drawAllShadowsWithClipping(Lcom/sec/android/app/twlauncher/GLCanvas;II)V
    .registers 8
    .parameter "canvas"
    .parameter "clipLeft"
    .parameter "clipRight"

    .prologue
    .line 42
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    .line 43
    .local v1, s:Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    .line 44
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    .line 46
    .local v2, view:Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->drawShadow(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    goto :goto_a

    .line 50
    .end local v1           #s:Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;
    .end local v2           #view:Landroid/view/View;
    :cond_24
    return-void
.end method

.method public drawChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z
    .registers 4
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->drawView(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public invalidateAtLocation([I)V
    .registers 8
    .parameter "location"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    .line 65
    .local v1, s:Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    aget v3, p1, v4

    if-ne v2, v3, :cond_c

    iget-object v2, v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    aget v3, p1, v5

    if-ne v2, v3, :cond_c

    .line 66
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->invalidate()V

    .line 71
    aget v2, p1, v4

    if-eqz v2, :cond_c

    aget v2, p1, v5

    if-eqz v2, :cond_c

    .line 77
    .end local v1           #s:Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;
    :cond_37
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 26
    new-instance v0, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;-><init>(Lcom/sec/android/app/twlauncher/ShadowedChildManager;Landroid/view/View;)V

    .line 27
    .local v0, s:Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ShadowedChildManager$Child;->invalidate()V

    .line 28
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 30
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mChildren:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public resumeUpdates()V
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mSuspendUpdates:Z

    .line 23
    return-void
.end method

.method public suspendUpdates()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->mSuspendUpdates:Z

    .line 20
    return-void
.end method
