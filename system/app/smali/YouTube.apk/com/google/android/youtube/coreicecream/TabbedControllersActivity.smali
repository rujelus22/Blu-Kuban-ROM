.class public abstract Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;
.super Lcom/google/android/youtube/coreicecream/ControllerActivity;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field private a:Landroid/app/ActionBar;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILcom/google/android/youtube/coreicecream/a;Landroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->a:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 42
    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 43
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->a:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 44
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-super {p0, p2, p3}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a(Lcom/google/android/youtube/coreicecream/a;Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method protected final a(Lcom/google/android/youtube/coreicecream/a;)V
    .registers 5
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    .line 57
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/coreicecream/a;

    .line 58
    if-ne v1, p1, :cond_a

    .line 59
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->a:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_a

    .line 62
    :cond_26
    return-void
.end method

.method protected final a(Lcom/google/android/youtube/coreicecream/a;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use addController(titleid, controller, savedInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->a:Landroid/app/ActionBar;

    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->a:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->a:Landroid/app/ActionBar;

    const/16 v1, 0x10

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->b:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/a;

    .line 66
    invoke-super {p0, v0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->a(Lcom/google/android/youtube/coreicecream/a;)V

    .line 67
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 75
    return-void
.end method
