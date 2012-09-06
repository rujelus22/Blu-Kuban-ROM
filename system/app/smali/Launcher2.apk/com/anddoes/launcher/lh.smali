.class final Lcom/anddoes/launcher/lh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/lh;->a:Lcom/anddoes/launcher/Workspace;

    .line 3268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/anddoes/launcher/lh;->a:Lcom/anddoes/launcher/Workspace;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anddoes/launcher/Workspace;->e:Z

    .line 3272
    iget-object v0, p0, Lcom/anddoes/launcher/lh;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->f(Lcom/anddoes/launcher/Workspace;)V

    .line 3273
    return-void
.end method
