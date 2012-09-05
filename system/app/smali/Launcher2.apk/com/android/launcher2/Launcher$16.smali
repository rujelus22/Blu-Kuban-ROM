.class Lcom/android/launcher2/Launcher$16;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$successfulDrop:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2469
    iput-object p1, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher2/Launcher$16;->val$successfulDrop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2472
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$16;->val$successfulDrop:Z

    if-eqz v0, :cond_1f

    .line 2476
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2477
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$2700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/SearchDropTargetBar;->showSearchBar(Z)V

    .line 2478
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 2482
    :goto_1e
    return-void

    .line 2480
    :cond_1f
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    goto :goto_1e
.end method
