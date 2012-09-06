.class final Lcom/anddoes/launcher/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/fb;->a:Lcom/anddoes/launcher/Launcher;

    iput-boolean p2, p0, Lcom/anddoes/launcher/fb;->b:Z

    .line 4416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4419
    iget-boolean v0, p0, Lcom/anddoes/launcher/fb;->b:Z

    if-eqz v0, :cond_1d

    .line 4424
    iget-object v0, p0, Lcom/anddoes/launcher/fb;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->setVisibility(I)V

    .line 4425
    iget-object v0, p0, Lcom/anddoes/launcher/fb;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->r(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/SearchDropTargetBar;->a(Z)V

    .line 4426
    iget-object v0, p0, Lcom/anddoes/launcher/fb;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 4430
    :goto_1c
    return-void

    .line 4428
    :cond_1d
    iget-object v0, p0, Lcom/anddoes/launcher/fb;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->G()V

    goto :goto_1c
.end method
