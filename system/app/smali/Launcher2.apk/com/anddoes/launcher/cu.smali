.class final Lcom/anddoes/launcher/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/FolderIcon;

.field private final synthetic b:Lcom/anddoes/launcher/kj;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/FolderIcon;Lcom/anddoes/launcher/kj;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/cu;->a:Lcom/anddoes/launcher/FolderIcon;

    iput-object p2, p0, Lcom/anddoes/launcher/cu;->b:Lcom/anddoes/launcher/kj;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/anddoes/launcher/cu;->a:Lcom/anddoes/launcher/FolderIcon;

    iget-object v1, p0, Lcom/anddoes/launcher/cu;->b:Lcom/anddoes/launcher/kj;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FolderIcon;->c(Lcom/anddoes/launcher/ec;)V

    .line 497
    return-void
.end method
