.class Lw/h;
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
    .line 1013
    iput-object p1, p0, Lw/h;->a:Lw/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lw/e;Lw/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1013
    invoke-direct {p0, p1}, Lw/h;-><init>(Lw/e;)V

    return-void
.end method

.method private a(Lw/d;)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 8
    .parameter

    .prologue
    .line 1024
    iget-object v0, p0, Lw/h;->a:Lw/e;

    iget-object v1, p1, Lw/d;->a:Ln/am;

    invoke-static {v0, v1}, Lw/e;->a(Lw/e;Ln/am;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v1

    .line 1025
    if-eqz v1, :cond_1f

    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->d(Lw/e;)Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/googlenav/common/a;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1027
    iget-object v0, p0, Lw/h;->a:Lw/e;

    iget-object v2, p1, Lw/d;->a:Ln/am;

    invoke-static {v0, v2, v1}, Lw/e;->a(Lw/e;Ln/am;Lcom/google/android/maps/driveabout/vector/aV;)Z

    move-object v0, v1

    .line 1079
    :goto_1e
    return-object v0

    .line 1028
    :cond_1f
    if-nez v1, :cond_a7

    .line 1029
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->e(Lw/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p1, Lw/d;->a:Ln/am;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1031
    if-eqz v0, :cond_62

    .line 1037
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1052
    :cond_37
    iget-boolean v1, p1, Lw/d;->b:Z

    if-eqz v1, :cond_50

    .line 1055
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->e(Lw/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lw/d;->a:Ln/am;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->f(Lw/e;)I

    .line 1064
    :goto_4b
    invoke-static {}, Lw/e;->l()Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    goto :goto_1e

    .line 1060
    :cond_50
    iget-object v1, p0, Lw/h;->a:Lw/e;

    invoke-static {v1}, Lw/e;->e(Lw/e;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Lw/d;->a:Ln/am;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 1067
    :cond_62
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->g(Lw/e;)Lw/a;

    move-result-object v2

    monitor-enter v2

    .line 1070
    :try_start_69
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->g(Lw/e;)Lw/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw/a;->a(Lw/d;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1071
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->e(Lw/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p1, Lw/d;->a:Ln/am;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->h(Lw/e;)I

    .line 1074
    iget-object v0, p0, Lw/h;->a:Lw/e;

    iget-object v3, p1, Lw/d;->a:Ln/am;

    iget-boolean v4, p1, Lw/d;->b:Z

    iget-object v5, p0, Lw/h;->a:Lw/e;

    invoke-static {v5}, Lw/e;->i(Lw/e;)Lr/aF;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lw/e;->a(Lw/e;Ln/am;ZLr/aF;)V

    .line 1076
    :cond_a0
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_1e

    :catchall_a4
    move-exception v0

    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_69 .. :try_end_a6} :catchall_a4

    throw v0

    :cond_a7
    move-object v0, v1

    goto/16 :goto_1e
.end method

.method private a(Lw/d;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1088
    :goto_0
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->g(Lw/e;)Lw/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lw/a;->a(Lw/d;Z)Lw/d;

    move-result-object p1

    .line 1089
    if-nez p1, :cond_d

    .line 1109
    :cond_c
    return-void

    .line 1098
    :cond_d
    invoke-direct {p0, p1}, Lw/h;->a(Lw/d;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    .line 1102
    if-eqz v0, :cond_c

    .line 1107
    invoke-static {}, Lw/e;->l()Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v1

    if-eq v0, v1, :cond_1b

    const/4 p2, 0x1

    goto :goto_0

    :cond_1b
    const/4 p2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ln/am;ILn/al;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1114
    sget-object v0, Lr/aH;->g:Ln/am;

    if-ne p1, v0, :cond_22

    .line 1116
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->g(Lw/e;)Lw/a;

    move-result-object v1

    monitor-enter v1

    .line 1117
    :try_start_e
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->j(Lw/e;)Lw/d;

    move-result-object v0

    .line 1118
    iget-object v3, p0, Lw/h;->a:Lw/e;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lw/e;->a(Lw/e;Lw/d;)Lw/d;

    .line 1119
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 1121
    invoke-direct {p0, v0, v2}, Lw/h;->a(Lw/d;Z)V

    .line 1167
    :cond_1e
    :goto_1e
    return-void

    .line 1119
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 1126
    :cond_22
    iget-object v0, p0, Lw/h;->a:Lw/e;

    invoke-static {v0}, Lw/e;->e(Lw/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1127
    if-nez v0, :cond_49

    .line 1128
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

    goto :goto_1e

    .line 1137
    :cond_49
    iget-object v1, p0, Lw/h;->a:Lw/e;

    invoke-static {v1}, Lw/e;->g(Lw/e;)Lw/a;

    move-result-object v5

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lw/d;

    invoke-virtual {v5, v1}, Lw/a;->a(Lw/d;)Z

    move-result v1

    if-nez v1, :cond_8a

    move v1, v2

    move v2, v3

    .line 1154
    :goto_5b
    if-eqz v1, :cond_6b

    .line 1155
    iget-object v1, p0, Lw/h;->a:Lw/e;

    invoke-static {v1}, Lw/e;->e(Lw/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    iget-object v1, p0, Lw/h;->a:Lw/e;

    invoke-static {v1}, Lw/e;->f(Lw/e;)I

    .line 1159
    :cond_6b
    if-eqz v2, :cond_74

    .line 1160
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lw/d;

    invoke-direct {p0, v1, v3}, Lw/h;->a(Lw/d;Z)V

    .line 1163
    :cond_74
    if-eqz v4, :cond_1e

    .line 1164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v0, v1, v5

    .line 1165
    iget-object v2, p0, Lw/h;->a:Lw/e;

    invoke-static {v2, p1, v4, v0, v1}, Lw/e;->a(Lw/e;Ln/am;Lcom/google/android/maps/driveabout/vector/aV;J)V

    goto :goto_1e

    .line 1142
    :cond_8a
    const/4 v1, 0x3

    if-ne p2, v1, :cond_94

    .line 1144
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lw/d;

    iget-boolean v1, v1, Lw/d;->b:Z

    goto :goto_5b

    .line 1148
    :cond_94
    iget-object v1, p0, Lw/h;->a:Lw/e;

    invoke-static {v1, p1, p2, p3}, Lw/e;->a(Lw/e;Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v4

    .line 1151
    if-eqz v4, :cond_a6

    invoke-static {}, Lw/e;->l()Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v1

    if-eq v4, v1, :cond_a6

    move v1, v2

    :goto_a3
    move v3, v1

    move v1, v2

    goto :goto_5b

    :cond_a6
    move v1, v3

    goto :goto_a3
.end method
