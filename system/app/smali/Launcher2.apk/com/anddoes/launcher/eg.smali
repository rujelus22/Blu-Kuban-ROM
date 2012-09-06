.class final Lcom/anddoes/launcher/eg;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/eg;->a:Lcom/anddoes/launcher/Launcher;

    iput p3, p0, Lcom/anddoes/launcher/eg;->b:I

    .line 2233
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/anddoes/launcher/eg;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->i(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/gk;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/eg;->b:I

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/gk;->deleteAppWidgetId(I)V

    .line 2236
    return-void
.end method
