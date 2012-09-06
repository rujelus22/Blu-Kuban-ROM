.class Lr/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/H;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/dg;

.field private b:Ljava/util/Queue;

.field private c:Ljava/util/Map;

.field private d:Lr/t;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;Lr/t;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lr/as;->a:Lcom/google/android/maps/driveabout/vector/dg;

    .line 284
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lr/as;->b:Ljava/util/Queue;

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr/as;->c:Ljava/util/Map;

    .line 286
    iput-object p2, p0, Lr/as;->d:Lr/t;

    .line 287
    return-void
.end method

.method static synthetic a(Lr/as;)Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lr/as;->a:Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 350
    iget-object v0, p0, Lr/as;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 351
    iget-object v0, p0, Lr/as;->b:Ljava/util/Queue;

    new-instance v1, Lr/au;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lr/au;-><init>(Lr/as;Lr/ar;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lr/as;->b:Ljava/util/Queue;

    new-instance v1, Lr/aw;

    invoke-direct {v1, p0, p1}, Lr/aw;-><init>(Lr/as;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public a(J)V
    .registers 6
    .parameter

    .prologue
    .line 337
    invoke-static {p1, p2}, Lh/a;->b(J)Ln/am;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_10

    .line 339
    iget-object v1, p0, Lr/as;->b:Ljava/util/Queue;

    new-instance v2, Lr/az;

    invoke-direct {v2, p0, v0}, Lr/az;-><init>(Lr/as;Ln/am;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 341
    :cond_10
    return-void
.end method

.method public a(JI)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-static {p1, p2}, Lh/a;->b(J)Ln/am;

    move-result-object v1

    .line 320
    iget-object v0, p0, Lr/as;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/al;

    .line 322
    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 323
    iget-object v1, p0, Lr/as;->b:Ljava/util/Queue;

    new-instance v2, Lr/ax;

    invoke-direct {v2, p0, v0, p3}, Lr/ax;-><init>(Lr/as;Ln/al;I)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 325
    :cond_1a
    return-void
.end method

.method public a(Ln/al;)V
    .registers 4
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lr/as;->c:Ljava/util/Map;

    invoke-interface {p1}, Ln/al;->d()Ln/am;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 305
    :goto_0
    iget-object v0, p0, Lr/as;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 306
    iget-object v0, p0, Lr/as;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/at;

    iget-object v1, p0, Lr/as;->d:Lr/t;

    invoke-interface {v0, v1}, Lr/at;->a(Lr/t;)V

    goto :goto_0

    .line 310
    :cond_16
    iget-object v0, p0, Lr/as;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_41

    .line 311
    const-string v0, "SDCardTileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lr/as;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tiles were not inserted into the disk cache."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lr/as;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 315
    :cond_41
    return-void
.end method

.method public b(JI)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-static {p1, p2}, Lh/a;->b(J)Ln/am;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_10

    .line 331
    iget-object v1, p0, Lr/as;->b:Ljava/util/Queue;

    new-instance v2, Lr/ay;

    invoke-direct {v2, p0, v0, p3}, Lr/ay;-><init>(Lr/as;Ln/am;I)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 333
    :cond_10
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 355
    iget-object v0, p0, Lr/as;->b:Ljava/util/Queue;

    new-instance v1, Lr/av;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lr/av;-><init>(Lr/as;Lr/ar;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method
