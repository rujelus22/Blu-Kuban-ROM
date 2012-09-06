.class final Lcom/anddoes/launcher/hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hb;

.field private final synthetic b:Lcom/anddoes/launcher/ha;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:I

.field private final synthetic e:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hb;Lcom/anddoes/launcher/ha;Ljava/util/ArrayList;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/hg;->a:Lcom/anddoes/launcher/hb;

    iput-object p2, p0, Lcom/anddoes/launcher/hg;->b:Lcom/anddoes/launcher/ha;

    iput-object p3, p0, Lcom/anddoes/launcher/hg;->c:Ljava/util/ArrayList;

    iput p4, p0, Lcom/anddoes/launcher/hg;->d:I

    iput p5, p0, Lcom/anddoes/launcher/hg;->e:I

    .line 1282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/anddoes/launcher/hg;->a:Lcom/anddoes/launcher/hb;

    iget-object v1, p0, Lcom/anddoes/launcher/hg;->b:Lcom/anddoes/launcher/ha;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/hb;->a(Lcom/anddoes/launcher/ha;)Lcom/anddoes/launcher/ha;

    move-result-object v0

    .line 1285
    if-eqz v0, :cond_16

    .line 1286
    iget-object v1, p0, Lcom/anddoes/launcher/hg;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/anddoes/launcher/hg;->d:I

    iget v3, p0, Lcom/anddoes/launcher/hg;->d:I

    iget v4, p0, Lcom/anddoes/launcher/hg;->e:I

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/anddoes/launcher/ha;->a(Ljava/util/ArrayList;II)V

    .line 1288
    :cond_16
    return-void
.end method
