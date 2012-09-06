.class final Lcom/anddoes/launcher/fg;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Lcom/anddoes/launcher/gk;

.field private final synthetic c:Lcom/anddoes/launcher/gn;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Ljava/lang/String;Lcom/anddoes/launcher/gk;Lcom/anddoes/launcher/gn;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/fg;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p3, p0, Lcom/anddoes/launcher/fg;->b:Lcom/anddoes/launcher/gk;

    iput-object p4, p0, Lcom/anddoes/launcher/fg;->c:Lcom/anddoes/launcher/gn;

    .line 5366
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 5368
    iget-object v0, p0, Lcom/anddoes/launcher/fg;->b:Lcom/anddoes/launcher/gk;

    iget-object v1, p0, Lcom/anddoes/launcher/fg;->c:Lcom/anddoes/launcher/gn;

    iget v1, v1, Lcom/anddoes/launcher/gn;->a:I

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/gk;->deleteAppWidgetId(I)V

    .line 5369
    return-void
.end method
