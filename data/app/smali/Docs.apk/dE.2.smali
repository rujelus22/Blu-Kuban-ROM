.class public LdE;
.super Ljava/lang/Object;
.source "Tracker.java"


# instance fields
.field private a:I

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LbC;

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Z


# direct methods
.method public constructor <init>(LanD;Ljava/lang/String;LeZ;)V
    .registers 7
    .parameter
    .end parameter
    .parameter
        .annotation runtime LdF;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "LeZ;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, LdE;->a:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LdE;->a:Ljava/util/Map;

    .line 53
    iput-object p1, p0, LdE;->a:LanD;

    .line 54
    iput-object p2, p0, LdE;->a:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 56
    invoke-static {}, LbC;->a()LbC;

    move-result-object v1

    iput-object v1, p0, LdE;->a:LbC;

    .line 57
    sget-object v1, LeV;->l:LeV;

    invoke-interface {p3, v1}, LeZ;->a(LeV;)Z

    move-result v1

    iput-boolean v1, p0, LdE;->a:Z

    .line 59
    const-string v1, "unknown"

    .line 61
    :try_start_27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, LcY;->app_name_drivev2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_30} :catch_3b

    move-result-object v0

    .line 65
    :goto_31
    invoke-static {}, LZG;->a()Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-object v2, p0, LdE;->a:LbC;

    invoke-virtual {v2, v0, v1}, LbC;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 62
    :catch_3b
    move-exception v0

    move-object v0, v1

    goto :goto_31
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 5

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget v0, p0, LdE;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LdE;->a:I

    if-nez v0, :cond_22

    iget-boolean v0, p0, LdE;->a:Z

    if-nez v0, :cond_22

    .line 75
    iget-object v1, p0, LdE;->a:LbC;

    iget-object v2, p0, LdE;->a:Ljava/lang/String;

    const/16 v3, 0x3c

    iget-object v0, p0, LdE;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, LbC;->a(Ljava/lang/String;ILandroid/content/Context;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 78
    :cond_22
    monitor-exit p0

    return-void

    .line 74
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, LdE;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, LafQ;->b(Z)V

    .line 101
    iget-object v0, p0, LdE;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void

    .line 100
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, LdE;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 116
    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    :goto_b
    invoke-static {v1}, LafQ;->b(Z)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 118
    const-string v2, "timeSpan"

    long-to-int v0, v0

    invoke-virtual {p0, v2, p2, p3, v0}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    return-void

    .line 116
    :cond_1f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 163
    if-eqz p2, :cond_1a

    .line 164
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-boolean v1, p0, LdE;->a:Z

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 166
    iget-object v1, p0, LdE;->a:LbC;

    const-string v2, "referredFrom"

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v2, v0, v3}, LbC;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    :cond_1a
    iget-boolean v0, p0, LdE;->a:Z

    if-eqz v0, :cond_37

    .line 170
    const-string v0, "Tracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PageView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_36
    return-void

    .line 172
    :cond_37
    iget-object v0, p0, LdE;->a:LbC;

    invoke-virtual {v0, p1}, LbC;->a(Ljava/lang/String;)V

    goto :goto_36
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, LdE;->a:Z

    if-eqz v0, :cond_3b

    .line 148
    const-string v0, "Tracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_3a
    return-void

    .line 151
    :cond_3b
    iget-object v0, p0, LdE;->a:LbC;

    invoke-virtual {v0, p1, p2, p3, p4}, LbC;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3a
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget v0, p0, LdE;->a:I

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, LafQ;->b(Z)V

    .line 86
    iget v0, p0, LdE;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LdE;->a:I

    .line 87
    iget-boolean v0, p0, LdE;->a:Z

    if-nez v0, :cond_1c

    .line 88
    iget v0, p0, LdE;->a:I

    if-nez v0, :cond_20

    .line 89
    iget-object v0, p0, LdE;->a:LbC;

    invoke-virtual {v0}, LbC;->b()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_26

    .line 94
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 85
    :cond_1e
    const/4 v0, 0x0

    goto :goto_6

    .line 91
    :cond_20
    :try_start_20
    iget-object v0, p0, LdE;->a:LbC;

    invoke-virtual {v0}, LbC;->a()Z
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    goto :goto_1c

    .line 85
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, LdE;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 126
    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, LafQ;->b(Z)V

    .line 127
    return-void

    .line 126
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method
