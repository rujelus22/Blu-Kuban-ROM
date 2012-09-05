.class Lo/e;
.super Lz/g;


# instance fields
.field final synthetic a:Lo/d;


# direct methods
.method constructor <init>(Lo/d;I)V
    .registers 3

    iput-object p1, p0, Lo/e;->a:Lo/d;

    invoke-direct {p0, p2}, Lz/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lo/g;

    invoke-virtual {p0, p1, p2}, Lo/e;->a(Ljava/lang/String;Lo/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lo/g;)V
    .registers 6

    invoke-virtual {p2}, Lo/g;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lo/e;->a:Lo/d;

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lo/e;->a:Lo/d;

    invoke-static {v2}, Lo/d;->a(Lo/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    :cond_13
    invoke-virtual {p2}, Lo/g;->d()V

    return-void

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
