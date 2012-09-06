.class Lw/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# instance fields
.field final synthetic a:Lw/e;


# direct methods
.method private constructor <init>(Lw/e;)V
    .registers 2
    .parameter

    .prologue
    .line 979
    iput-object p1, p0, Lw/g;->a:Lw/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lw/e;Lw/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 979
    invoke-direct {p0, p1}, Lw/g;-><init>(Lw/e;)V

    return-void
.end method


# virtual methods
.method public a(Ln/am;ILn/al;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 983
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 998
    :cond_3
    :goto_3
    return-void

    .line 987
    :cond_4
    iget-object v0, p0, Lw/g;->a:Lw/e;

    invoke-static {v0, p1, p2, p3}, Lw/e;->a(Lw/e;Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v1

    .line 989
    if-eqz v1, :cond_3

    .line 990
    iget-object v0, p0, Lw/g;->a:Lw/e;

    invoke-static {v0}, Lw/e;->c(Lw/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 991
    if-nez v0, :cond_33

    .line 992
    const-string v0, "TileFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an unknown tile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 995
    :cond_33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 996
    iget-object v0, p0, Lw/g;->a:Lw/e;

    invoke-static {v0, p1, v1, v2, v3}, Lw/e;->a(Lw/e;Ln/am;Lcom/google/android/maps/driveabout/vector/aV;J)V

    goto :goto_3
.end method
