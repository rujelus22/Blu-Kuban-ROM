.class final Lcom/anddoes/launcher/bl;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/DeleteDropTarget;

.field private final synthetic b:Lcom/anddoes/launcher/gk;

.field private final synthetic c:Lcom/anddoes/launcher/gn;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/DeleteDropTarget;Ljava/lang/String;Lcom/anddoes/launcher/gk;Lcom/anddoes/launcher/gn;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/bl;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    iput-object p3, p0, Lcom/anddoes/launcher/bl;->b:Lcom/anddoes/launcher/gk;

    iput-object p4, p0, Lcom/anddoes/launcher/bl;->c:Lcom/anddoes/launcher/gn;

    .line 302
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/anddoes/launcher/bl;->b:Lcom/anddoes/launcher/gk;

    iget-object v1, p0, Lcom/anddoes/launcher/bl;->c:Lcom/anddoes/launcher/gn;

    iget v1, v1, Lcom/anddoes/launcher/gn;->a:I

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/gk;->deleteAppWidgetId(I)V

    .line 305
    return-void
.end method
