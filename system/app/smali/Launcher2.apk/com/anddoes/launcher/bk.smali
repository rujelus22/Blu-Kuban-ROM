.class final Lcom/anddoes/launcher/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/DeleteDropTarget;

.field private final synthetic b:Lcom/anddoes/launcher/cc;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/DeleteDropTarget;Lcom/anddoes/launcher/cc;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/bk;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    iput-object p2, p0, Lcom/anddoes/launcher/bk;->b:Lcom/anddoes/launcher/cc;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/anddoes/launcher/bk;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    iget-object v0, v0, Lcom/anddoes/launcher/DeleteDropTarget;->c:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/anddoes/launcher/SearchDropTargetBar;->d_()V

    .line 246
    iget-object v0, p0, Lcom/anddoes/launcher/bk;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    iget-object v0, v0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->G()V

    .line 247
    iget-object v0, p0, Lcom/anddoes/launcher/bk;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    iget-object v1, p0, Lcom/anddoes/launcher/bk;->b:Lcom/anddoes/launcher/cc;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/DeleteDropTarget;->a(Lcom/anddoes/launcher/DeleteDropTarget;Lcom/anddoes/launcher/cc;)V

    .line 248
    return-void
.end method
