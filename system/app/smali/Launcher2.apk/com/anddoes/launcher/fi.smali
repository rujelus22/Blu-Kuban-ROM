.class final Lcom/anddoes/launcher/fi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Lcom/anddoes/launcher/ec;

.field private final synthetic d:Lcom/anddoes/launcher/ui/f;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/ui/f;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/fi;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/fi;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/anddoes/launcher/fi;->c:Lcom/anddoes/launcher/ec;

    iput-object p4, p0, Lcom/anddoes/launcher/fi;->d:Lcom/anddoes/launcher/ui/f;

    .line 5466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    .line 5468
    iget-object v0, p0, Lcom/anddoes/launcher/fi;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5469
    if-eqz v0, :cond_86

    .line 5470
    iget-object v1, p0, Lcom/anddoes/launcher/fi;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5471
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/anddoes/launcher/Folder;

    if-eqz v1, :cond_8c

    .line 5472
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/Folder;

    .line 5473
    const/4 v2, 0x0

    .line 5474
    iget-object v1, v0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-wide v3, v1, Lcom/anddoes/launcher/dd;->j:J

    const-wide/16 v5, -0x65

    cmp-long v1, v3, v5

    if-nez v1, :cond_55

    .line 5475
    iget-object v1, p0, Lcom/anddoes/launcher/fi;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/Workspace;

    move-result-object v1

    iget-object v3, v0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    invoke-virtual {v1, v3}, Lcom/anddoes/launcher/Workspace;->b(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/FolderIcon;

    .line 5476
    if-eqz v1, :cond_55

    .line 5477
    invoke-virtual {v1}, Lcom/anddoes/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/CellLayout;

    move-object v2, v1

    .line 5480
    :cond_55
    iget-object v3, v0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-object v1, p0, Lcom/anddoes/launcher/fi;->c:Lcom/anddoes/launcher/ec;

    check-cast v1, Lcom/anddoes/launcher/kj;

    invoke-virtual {v3, v1}, Lcom/anddoes/launcher/dd;->b(Lcom/anddoes/launcher/ec;)V

    .line 5481
    iget-object v1, p0, Lcom/anddoes/launcher/fi;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    iget-object v3, p0, Lcom/anddoes/launcher/fi;->c:Lcom/anddoes/launcher/ec;

    iget-wide v3, v3, Lcom/anddoes/launcher/ec;->h:J

    invoke-virtual {v1, v3, v4}, Lcom/anddoes/launcher/preference/az;->c(J)V

    .line 5482
    iget-object v1, p0, Lcom/anddoes/launcher/fi;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v3, p0, Lcom/anddoes/launcher/fi;->c:Lcom/anddoes/launcher/ec;

    invoke-static {v1, v3}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    .line 5483
    iget-object v1, v0, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    iget-object v1, v1, Lcom/anddoes/launcher/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_86

    .line 5484
    iget-object v1, p0, Lcom/anddoes/launcher/fi;->a:Lcom/anddoes/launcher/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Folder;Z)V

    .line 5485
    if-eqz v2, :cond_86

    .line 5486
    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->g()V

    .line 5495
    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/anddoes/launcher/fi;->d:Lcom/anddoes/launcher/ui/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ui/f;->b()V

    .line 5496
    return-void

    .line 5490
    :cond_8c
    iget-object v1, p0, Lcom/anddoes/launcher/fi;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v2, p0, Lcom/anddoes/launcher/fi;->c:Lcom/anddoes/launcher/ec;

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/ec;)V

    .line 5491
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 5492
    iget-object v1, p0, Lcom/anddoes/launcher/fi;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_86
.end method
