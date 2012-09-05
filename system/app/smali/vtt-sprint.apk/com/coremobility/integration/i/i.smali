.class public final Lcom/coremobility/integration/i/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/i/b;
.implements Lcom/coremobility/integration/i/c;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/i/f;

.field private b:Lcom/coremobility/integration/i/a;

.field private c:Lcom/coremobility/integration/i/h;

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/coremobility/integration/i/f;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/coremobility/integration/i/i;->a:Lcom/coremobility/integration/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    iput-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    iput-boolean v1, p0, Lcom/coremobility/integration/i/i;->d:Z

    iput v1, p0, Lcom/coremobility/integration/i/i;->e:I

    iput-object v0, p0, Lcom/coremobility/integration/i/i;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->a:Lcom/coremobility/integration/i/f;

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/integration/i/i;->d:Z

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    invoke-virtual {v0, p0}, Lcom/coremobility/integration/i/a;->a(Lcom/coremobility/integration/i/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    :goto_1e
    monitor-exit v1

    return v2

    :cond_20
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/i/i;->a(I)V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_25

    goto :goto_1e

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/coremobility/integration/i/h;)I
    .registers 10

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    iput-boolean v2, p0, Lcom/coremobility/integration/i/i;->d:Z

    invoke-static {}, Lcom/coremobility/integration/i/f;->r()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v1, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    invoke-interface {v1, v0}, Lcom/coremobility/integration/i/h;->h(I)V

    iput-object v7, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    :goto_15
    return v0

    :cond_16
    iput v2, p0, Lcom/coremobility/integration/i/i;->e:I

    invoke-static {}, Lcom/coremobility/integration/i/f;->e()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "json url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/coremobility/integration/i/a;

    invoke-direct {v4, v3}, Lcom/coremobility/integration/i/a;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    invoke-static {}, Lcom/coremobility/integration/i/f;->s()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_55

    invoke-static {v2}, Lcom/coremobility/integration/i/f;->a(Z)Z

    iput-boolean v2, p0, Lcom/coremobility/integration/i/i;->d:Z

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    invoke-interface {v0, v1}, Lcom/coremobility/integration/i/h;->h(I)V

    iput-object v7, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    :cond_53
    move v0, v1

    goto :goto_15

    :cond_55
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6f

    iget-object v1, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    invoke-virtual {v1, v3, p0}, Lcom/coremobility/integration/i/a;->a(Ljava/util/Map;Lcom/coremobility/integration/i/c;)V

    :goto_60
    iget-object v1, p0, Lcom/coremobility/integration/i/i;->a:Lcom/coremobility/integration/i/f;

    invoke-virtual {v1}, Lcom/coremobility/integration/i/f;->g()V

    iget-object v1, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    invoke-virtual {v1}, Lcom/coremobility/integration/i/a;->start()V

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Z)Z

    move v0, v2

    goto :goto_15

    :cond_6f
    iget-object v1, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    invoke-virtual {v1, v7, p0}, Lcom/coremobility/integration/i/a;->a(Ljava/util/Map;Lcom/coremobility/integration/i/c;)V

    goto :goto_60
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->a:Lcom/coremobility/integration/i/f;

    iget-object v0, v0, Lcom/coremobility/integration/i/f;->a:Lcom/coremobility/integration/i/g;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->a:Lcom/coremobility/integration/i/f;

    iget-object v0, v0, Lcom/coremobility/integration/i/f;->a:Lcom/coremobility/integration/i/g;

    invoke-interface {v0, p1}, Lcom/coremobility/integration/i/g;->i(I)V

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->a:Lcom/coremobility/integration/i/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coremobility/integration/i/f;->a:Lcom/coremobility/integration/i/g;

    :cond_12
    return-void
.end method

.method public final a(Lcom/coremobility/integration/i/d;I)V
    .registers 8

    const/4 v0, 0x2

    const/16 v3, 0x17

    const/4 v2, 0x0

    iget v1, p0, Lcom/coremobility/integration/i/i;->e:I

    packed-switch v1, :pswitch_data_120

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid upgr state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/i/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_23
    return-void

    :pswitch_24
    if-eqz p1, :cond_30

    :try_start_26
    invoke-virtual {p1}, Lcom/coremobility/integration/i/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/i/i;->f:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30} :catch_11d

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/coremobility/integration/i/i;->a:Lcom/coremobility/integration/i/f;

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_38
    iput-object v0, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    iget-boolean v0, p0, Lcom/coremobility/integration/i/i;->d:Z

    if-eqz v0, :cond_4e

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/i/i;->d:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/i/i;->a(I)V

    :cond_49
    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_4b

    goto :goto_23

    :catchall_4b
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    if-eqz v0, :cond_49

    if-nez p2, :cond_cc

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->f:Ljava/lang/String;

    if-eqz v0, :cond_9e

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrade url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_73
    const/4 v2, 0x1

    iput v2, p0, Lcom/coremobility/integration/i/i;->e:I

    invoke-static {}, Lcom/coremobility/integration/i/f;->s()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_84

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a9

    :cond_84
    iget-object v0, p0, Lcom/coremobility/integration/i/i;->a:Lcom/coremobility/integration/i/f;

    invoke-virtual {v0}, Lcom/coremobility/integration/i/f;->h()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/i/i;->d:Z

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/coremobility/integration/i/h;->h(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    goto :goto_49

    :cond_9e
    const/16 v2, 0x17

    const-string v3, "upgrade url: NULL"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_73

    :cond_a9
    new-instance v3, Lcom/coremobility/integration/i/a;

    invoke-direct {v3, v0}, Lcom/coremobility/integration/i/a;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_c5

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/integration/i/a;->a(Ljava/util/Map;Lcom/coremobility/integration/i/c;)V

    :goto_bb
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Z)Z

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/i/a;->start()V

    goto :goto_49

    :cond_c5
    iget-object v0, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/integration/i/a;->a(Ljava/util/Map;Lcom/coremobility/integration/i/c;)V

    goto :goto_bb

    :cond_cc
    iget-object v0, p0, Lcom/coremobility/integration/i/i;->a:Lcom/coremobility/integration/i/f;

    invoke-virtual {v0}, Lcom/coremobility/integration/i/f;->h()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/i/i;->d:Z

    invoke-virtual {p0, p2}, Lcom/coremobility/integration/i/i;->a(I)V
    :try_end_db
    .catchall {:try_start_4e .. :try_end_db} :catchall_4b

    goto/16 :goto_49

    :pswitch_dd
    invoke-static {v2}, Lcom/coremobility/integration/i/f;->a(Z)Z

    if-eqz p1, :cond_f0

    :try_start_e2
    const-string v1, "cm-android.apk"

    iget-object v2, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    invoke-virtual {p1, v1, v2}, Lcom/coremobility/integration/i/d;->a(Ljava/lang/String;Lcom/coremobility/integration/i/a;)Z
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e9} :catch_118

    move-result v1

    if-nez v1, :cond_f0

    move p2, v0

    :try_start_ed
    invoke-static {}, Lcom/coremobility/integration/i/f;->i()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_11a

    :cond_f0
    :goto_f0
    iget-object v0, p0, Lcom/coremobility/integration/i/i;->a:Lcom/coremobility/integration/i/f;

    invoke-static {v0}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_f8
    iput-object v0, p0, Lcom/coremobility/integration/i/i;->b:Lcom/coremobility/integration/i/a;

    iget-boolean v0, p0, Lcom/coremobility/integration/i/i;->d:Z

    if-eqz v0, :cond_10b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/i/i;->d:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/i/i;->a(I)V

    :cond_105
    :goto_105
    monitor-exit v1
    :try_end_106
    .catchall {:try_start_f8 .. :try_end_106} :catchall_108

    goto/16 :goto_23

    :catchall_108
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10b
    :try_start_10b
    iget-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;

    invoke-interface {v0, p2}, Lcom/coremobility/integration/i/h;->h(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/i;->c:Lcom/coremobility/integration/i/h;
    :try_end_117
    .catchall {:try_start_10b .. :try_end_117} :catchall_108

    goto :goto_105

    :catch_118
    move-exception v0

    goto :goto_f0

    :catch_11a
    move-exception v1

    move p2, v0

    goto :goto_f0

    :catch_11d
    move-exception v0

    goto/16 :goto_30

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_24
        :pswitch_dd
    .end packed-switch
.end method
