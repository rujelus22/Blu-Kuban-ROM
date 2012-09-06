.class final Lcom/anddoes/launcher/hj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hb;

.field private final synthetic b:Lcom/anddoes/launcher/ha;

.field private final synthetic c:Lcom/anddoes/launcher/gn;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hb;Lcom/anddoes/launcher/ha;Lcom/anddoes/launcher/gn;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/hj;->a:Lcom/anddoes/launcher/hb;

    iput-object p2, p0, Lcom/anddoes/launcher/hj;->b:Lcom/anddoes/launcher/ha;

    iput-object p3, p0, Lcom/anddoes/launcher/hj;->c:Lcom/anddoes/launcher/gn;

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/anddoes/launcher/hj;->a:Lcom/anddoes/launcher/hb;

    iget-object v1, p0, Lcom/anddoes/launcher/hj;->b:Lcom/anddoes/launcher/ha;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/hb;->a(Lcom/anddoes/launcher/ha;)Lcom/anddoes/launcher/ha;

    move-result-object v0

    .line 1323
    if-eqz v0, :cond_f

    .line 1324
    iget-object v1, p0, Lcom/anddoes/launcher/hj;->c:Lcom/anddoes/launcher/gn;

    invoke-interface {v0, v1}, Lcom/anddoes/launcher/ha;->b(Lcom/anddoes/launcher/gn;)V

    .line 1326
    :cond_f
    return-void
.end method
