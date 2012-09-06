.class final Lcom/anddoes/launcher/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hb;

.field private final synthetic b:Lcom/anddoes/launcher/ha;

.field private final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hb;Lcom/anddoes/launcher/ha;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/hd;->a:Lcom/anddoes/launcher/hb;

    iput-object p2, p0, Lcom/anddoes/launcher/hd;->b:Lcom/anddoes/launcher/ha;

    iput-object p3, p0, Lcom/anddoes/launcher/hd;->c:Ljava/util/ArrayList;

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1396
    iget-object v0, p0, Lcom/anddoes/launcher/hd;->a:Lcom/anddoes/launcher/hb;

    iget-object v1, p0, Lcom/anddoes/launcher/hd;->b:Lcom/anddoes/launcher/ha;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/hb;->a(Lcom/anddoes/launcher/ha;)Lcom/anddoes/launcher/ha;

    move-result-object v0

    .line 1397
    if-eqz v0, :cond_12

    .line 1398
    iget-object v1, p0, Lcom/anddoes/launcher/hd;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/anddoes/launcher/ha;->a(Ljava/util/ArrayList;)V

    .line 1404
    :cond_12
    return-void
.end method
