.class public Lk/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a;


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 458
    const-class v0, Lk/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lk/g;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;Lk/k;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/aN;Ljava/lang/StringBuilder;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 478
    invoke-virtual {p5}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v3

    .line 480
    const-string v0, "goesThrough"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 481
    const-string v0, "goesThrough"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 482
    sget-boolean v4, Lk/g;->a:Z

    if-nez v4, :cond_2a

    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 483
    :cond_2a
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    .line 485
    const-wide/high16 v4, 0x4024

    invoke-virtual {v0}, Ln/Q;->e()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v3, v0, v4, v5}, Lo/x;->a(Ln/Q;D)Lo/B;

    move-result-object v4

    .line 487
    if-nez v4, :cond_63

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Point is not on the route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ln/Q;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 501
    :goto_62
    return v0

    .line 493
    :cond_63
    const-string v0, "numWaypoints"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 494
    const-string v0, "numWaypoints"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 495
    invoke-virtual {v3}, Lo/x;->v()[Lo/R;

    move-result-object v4

    array-length v4, v4

    if-eq v0, v4, :cond_9b

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of waypoints was: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lo/x;->v()[Lo/R;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 497
    goto :goto_62

    :cond_9b
    move v0, v2

    .line 501
    goto :goto_62
.end method

.method public a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 463
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "goesThrough"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "numWaypoints"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
