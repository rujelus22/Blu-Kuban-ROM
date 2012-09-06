.class final Lcom/anddoes/launcher/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hb;

.field private final synthetic b:Lcom/anddoes/launcher/ha;

.field private final synthetic c:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hb;Lcom/anddoes/launcher/ha;Ljava/util/HashMap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/hh;->a:Lcom/anddoes/launcher/hb;

    iput-object p2, p0, Lcom/anddoes/launcher/hh;->b:Lcom/anddoes/launcher/ha;

    iput-object p3, p0, Lcom/anddoes/launcher/hh;->c:Ljava/util/HashMap;

    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/anddoes/launcher/hh;->a:Lcom/anddoes/launcher/hb;

    iget-object v1, p0, Lcom/anddoes/launcher/hh;->b:Lcom/anddoes/launcher/ha;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/hb;->a(Lcom/anddoes/launcher/ha;)Lcom/anddoes/launcher/ha;

    move-result-object v0

    .line 1296
    if-eqz v0, :cond_f

    .line 1297
    iget-object v1, p0, Lcom/anddoes/launcher/hh;->c:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/anddoes/launcher/ha;->a(Ljava/util/HashMap;)V

    .line 1299
    :cond_f
    return-void
.end method
