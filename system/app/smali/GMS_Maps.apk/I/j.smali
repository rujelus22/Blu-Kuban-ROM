.class Li/j;
.super Lt/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Li/i;


# direct methods
.method constructor <init>(Li/i;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Li/j;->a:Li/i;

    invoke-direct {p0, p2}, Lt/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    check-cast p1, Ljava/lang/String;

    check-cast p2, Li/f;

    invoke-virtual {p0, p1, p2}, Li/j;->a(Ljava/lang/String;Li/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;Li/f;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p2}, Li/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_f

    .line 86
    monitor-enter p0

    .line 87
    :try_start_7
    iget-object v1, p0, Li/j;->a:Li/i;

    iget-object v1, v1, Li/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 90
    :cond_f
    invoke-virtual {p2}, Li/f;->d()V

    .line 91
    return-void

    .line 88
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
