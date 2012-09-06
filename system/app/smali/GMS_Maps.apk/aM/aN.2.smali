.class LaM/aN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/E;


# instance fields
.field private final a:Lat/B;

.field private final b:Lcom/google/googlenav/ui/aH;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/E;)V
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/E;->f()Lat/B;

    move-result-object v0

    iput-object v0, p0, LaM/aN;->a:Lat/B;

    .line 345
    const/4 v0, 0x5

    new-array v1, v0, [Lat/B;

    .line 346
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/E;->b()Lat/B;

    move-result-object v0

    .line 347
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/E;->c()Lat/B;

    move-result-object v2

    .line 348
    const/4 v4, 0x0

    aput-object v0, v1, v4

    .line 349
    new-instance v4, Lat/B;

    invoke-virtual {v0}, Lat/B;->c()I

    move-result v5

    invoke-virtual {v2}, Lat/B;->e()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lat/B;-><init>(II)V

    aput-object v4, v1, v3

    .line 350
    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 351
    const/4 v4, 0x3

    new-instance v5, Lat/B;

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v0}, Lat/B;->e()I

    move-result v6

    invoke-direct {v5, v2, v6}, Lat/B;-><init>(II)V

    aput-object v5, v1, v4

    .line 352
    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 354
    const/4 v4, -0x1

    .line 355
    const v2, -0xd5ba98

    .line 356
    new-instance v0, Lat/N;

    const/4 v5, 0x0

    check-cast v5, [[Lat/B;

    invoke-direct/range {v0 .. v5}, Lat/N;-><init>([Lat/B;III[[Lat/B;)V

    iput-object v0, p0, LaM/aN;->b:Lcom/google/googlenav/ui/aH;

    .line 357
    return-void
.end method


# virtual methods
.method public a()Lat/B;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, LaM/aN;->a:Lat/B;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2

    .prologue
    .line 375
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public c()B
    .registers 2

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 361
    const/4 v0, 0x4

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 390
    return-object p0
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 4

    .prologue
    .line 396
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v1, "OfflineLayer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public h()Lcom/google/googlenav/ui/aH;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, LaM/aN;->b:Lcom/google/googlenav/ui/aH;

    return-object v0
.end method
