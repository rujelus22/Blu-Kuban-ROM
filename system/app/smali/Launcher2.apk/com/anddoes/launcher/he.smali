.class final Lcom/anddoes/launcher/he;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hb;

.field private final synthetic b:Lcom/anddoes/launcher/ha;

.field private final synthetic c:Z

.field private final synthetic d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hb;Lcom/anddoes/launcher/ha;ZLjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/he;->a:Lcom/anddoes/launcher/hb;

    iput-object p2, p0, Lcom/anddoes/launcher/he;->b:Lcom/anddoes/launcher/ha;

    iput-boolean p3, p0, Lcom/anddoes/launcher/he;->c:Z

    iput-object p4, p0, Lcom/anddoes/launcher/he;->d:Ljava/util/ArrayList;

    .line 1482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1485
    iget-object v0, p0, Lcom/anddoes/launcher/he;->b:Lcom/anddoes/launcher/ha;

    if-eqz v0, :cond_1b

    .line 1486
    iget-boolean v0, p0, Lcom/anddoes/launcher/he;->c:Z

    if-eqz v0, :cond_13

    .line 1487
    iget-object v0, p0, Lcom/anddoes/launcher/he;->b:Lcom/anddoes/launcher/ha;

    iget-object v1, p0, Lcom/anddoes/launcher/he;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/anddoes/launcher/ha;->a(Ljava/util/ArrayList;)V

    .line 1498
    :goto_12
    return-void

    .line 1489
    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/he;->b:Lcom/anddoes/launcher/ha;

    iget-object v1, p0, Lcom/anddoes/launcher/he;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/anddoes/launcher/ha;->b(Ljava/util/ArrayList;)V

    goto :goto_12

    .line 1496
    :cond_1b
    const-string v0, "Launcher.Model"

    const-string v1, "not binding apps: no Launcher activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method
