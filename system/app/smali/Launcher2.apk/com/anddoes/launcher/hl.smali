.class final Lcom/anddoes/launcher/hl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hb;

.field private final synthetic b:Lcom/anddoes/launcher/ha;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hb;Lcom/anddoes/launcher/ha;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/hl;->a:Lcom/anddoes/launcher/hb;

    iput-object p2, p0, Lcom/anddoes/launcher/hl;->b:Lcom/anddoes/launcher/ha;

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/anddoes/launcher/hl;->a:Lcom/anddoes/launcher/hb;

    iget-object v1, p0, Lcom/anddoes/launcher/hl;->b:Lcom/anddoes/launcher/ha;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/hb;->a(Lcom/anddoes/launcher/ha;)Lcom/anddoes/launcher/ha;

    move-result-object v0

    .line 1348
    if-eqz v0, :cond_d

    .line 1349
    invoke-interface {v0}, Lcom/anddoes/launcher/ha;->M()V

    .line 1351
    :cond_d
    return-void
.end method
