.class Ll/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aI;


# instance fields
.field final synthetic a:Ll/w;


# direct methods
.method constructor <init>(Ll/w;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Ll/x;->a:Ll/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr/aH;)V
    .registers 3
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Ll/x;->a:Ll/w;

    invoke-virtual {v0}, Ll/w;->a()V

    .line 82
    return-void
.end method

.method public a(Lr/aH;Ln/am;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 86
    .line 90
    iget-object v0, p0, Ll/x;->a:Ll/w;

    invoke-static {v0}, Ll/w;->a(Ll/w;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_7
    iget-object v0, p0, Ll/x;->a:Ll/w;

    invoke-static {v0}, Ll/w;->a(Ll/w;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/b;

    .line 92
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_32

    .line 93
    iget-object v1, p0, Ll/x;->a:Ll/w;

    invoke-static {v1}, Ll/w;->b(Ll/w;)Lt/f;

    move-result-object v2

    monitor-enter v2

    .line 94
    :try_start_1b
    iget-object v1, p0, Ll/x;->a:Ll/w;

    invoke-static {v1}, Ll/w;->b(Ll/w;)Lt/f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 95
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_35

    .line 97
    if-nez v0, :cond_2c

    if-eqz v1, :cond_31

    .line 99
    :cond_2c
    iget-object v0, p0, Ll/x;->a:Ll/w;

    invoke-static {v0}, Ll/w;->c(Ll/w;)V

    .line 101
    :cond_31
    return-void

    .line 92
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 95
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method
