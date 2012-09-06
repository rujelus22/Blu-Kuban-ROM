.class final Lcom/anddoes/launcher/lt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/io;


# instance fields
.field a:Lcom/anddoes/launcher/CellLayout;

.field b:I

.field c:I

.field final synthetic d:Lcom/anddoes/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/Workspace;Lcom/anddoes/launcher/CellLayout;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3901
    iput-object p1, p0, Lcom/anddoes/launcher/lt;->d:Lcom/anddoes/launcher/Workspace;

    .line 3900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3902
    iput-object p2, p0, Lcom/anddoes/launcher/lt;->a:Lcom/anddoes/launcher/CellLayout;

    .line 3903
    iput p3, p0, Lcom/anddoes/launcher/lt;->b:I

    .line 3904
    iput p4, p0, Lcom/anddoes/launcher/lt;->c:I

    .line 3905
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 3908
    iget-object v0, p0, Lcom/anddoes/launcher/lt;->d:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->b(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/cx;

    move-result-object v0

    if-nez v0, :cond_19

    .line 3909
    iget-object v0, p0, Lcom/anddoes/launcher/lt;->d:Lcom/anddoes/launcher/Workspace;

    new-instance v1, Lcom/anddoes/launcher/cx;

    iget-object v2, p0, Lcom/anddoes/launcher/lt;->d:Lcom/anddoes/launcher/Workspace;

    invoke-static {v2}, Lcom/anddoes/launcher/Workspace;->c(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/Launcher;

    move-result-object v2

    .line 3910
    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/anddoes/launcher/cx;-><init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/FolderIcon;)V

    .line 3909
    invoke-static {v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/Workspace;Lcom/anddoes/launcher/cx;)V

    .line 3912
    :cond_19
    iget-object v0, p0, Lcom/anddoes/launcher/lt;->d:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->b(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/cx;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/lt;->b:I

    iget v2, p0, Lcom/anddoes/launcher/lt;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/cx;->a(II)V

    .line 3913
    iget-object v0, p0, Lcom/anddoes/launcher/lt;->d:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->b(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/lt;->a:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/cx;->a(Lcom/anddoes/launcher/CellLayout;)V

    .line 3914
    iget-object v0, p0, Lcom/anddoes/launcher/lt;->d:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->b(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/cx;->a()V

    .line 3915
    iget-object v0, p0, Lcom/anddoes/launcher/lt;->a:Lcom/anddoes/launcher/CellLayout;

    iget-object v1, p0, Lcom/anddoes/launcher/lt;->d:Lcom/anddoes/launcher/Workspace;

    invoke-static {v1}, Lcom/anddoes/launcher/Workspace;->b(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/cx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->a(Lcom/anddoes/launcher/cx;)V

    .line 3916
    iget-object v0, p0, Lcom/anddoes/launcher/lt;->a:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->q()V

    .line 3917
    iget-object v0, p0, Lcom/anddoes/launcher/lt;->d:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->d(Lcom/anddoes/launcher/Workspace;)V

    .line 3918
    return-void
.end method
