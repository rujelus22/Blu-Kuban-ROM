.class public final Ldbxyzptlk/p/E;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public final a:D

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(DJJ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-wide p1, p0, Ldbxyzptlk/p/E;->a:D

    .line 319
    iput-wide p3, p0, Ldbxyzptlk/p/E;->b:J

    .line 320
    iput-wide p5, p0, Ldbxyzptlk/p/E;->c:J

    .line 321
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 9
    .parameter

    .prologue
    .line 324
    const-string v0, "duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldbxyzptlk/p/E;-><init>(DJJ)V

    .line 327
    return-void
.end method
