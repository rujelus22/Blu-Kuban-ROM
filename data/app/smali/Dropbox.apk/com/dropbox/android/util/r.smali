.class public Lcom/dropbox/android/util/r;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/util/q;


# instance fields
.field private final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/util/r;->a:Ljava/util/LinkedHashMap;

    .line 453
    const-string v0, "boot_ts"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/dropbox/android/util/r;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 454
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/dropbox/android/util/r;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 455
    const-string v0, "event"

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 456
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    .line 449
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.02f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-double v4, p0

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)Lcom/dropbox/android/util/r;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/dropbox/android/util/r;->a:Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/dropbox/android/util/r;->a:Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/dropbox/android/util/r;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Lcom/dropbox/android/util/r;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/dropbox/android/util/r;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Lcom/dropbox/android/util/r;->a:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/dropbox/android/util/r;->a:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ldbxyzptlk/B/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/dropbox/android/util/r;
    .registers 4

    .prologue
    .line 499
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/t;->b()Lcom/dropbox/android/service/w;

    move-result-object v0

    .line 500
    const-string v1, "network.state.connected"

    invoke-virtual {v0}, Lcom/dropbox/android/service/w;->a()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 501
    const-string v1, "network.state.isWifi"

    invoke-virtual {v0}, Lcom/dropbox/android/service/w;->b()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 502
    const-string v1, "network.state.isRoaming"

    invoke-virtual {v0}, Lcom/dropbox/android/service/w;->d()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    .line 503
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/dropbox/android/util/r;->a:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Lcom/dropbox/android/util/aa;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    return-object p0
.end method

.method public final c()V
    .registers 1

    .prologue
    .line 515
    invoke-static {p0}, Lcom/dropbox/android/util/h;->a(Lcom/dropbox/android/util/q;)V

    .line 516
    return-void
.end method
