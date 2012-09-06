.class Li/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Li/d;

.field private final b:Li/U;

.field private c:Li/T;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>(Li/d;Li/U;Li/T;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Li/k;->a:Li/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Li/k;->b:Li/U;

    .line 122
    iput-object p3, p0, Li/k;->c:Li/T;

    .line 123
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Li/k;->a(Li/a;)V

    .line 131
    iget-object v0, p0, Li/k;->a:Li/d;

    invoke-static {v0}, Li/d;->a(Li/d;)Li/i;

    move-result-object v1

    monitor-enter v1

    .line 132
    :try_start_b
    iget-object v0, p0, Li/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 133
    iget-object v0, p0, Li/k;->a:Li/d;

    invoke-static {v0}, Li/d;->a(Li/d;)Li/i;

    move-result-object v0

    iget-object v0, v0, Li/i;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Li/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Li/k;->d:Ljava/lang/String;

    .line 136
    :cond_1f
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v0
.end method

.method public a(Li/a;)V
    .registers 4
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Li/k;->c:Li/T;

    if-eqz v0, :cond_e

    .line 172
    iget-object v0, p0, Li/k;->c:Li/T;

    iget-object v1, p0, Li/k;->b:Li/U;

    invoke-interface {v0, v1, p1}, Li/T;->a(Li/U;Li/a;)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Li/k;->c:Li/T;

    .line 175
    :cond_e
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Li/k;->d:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Li/k;->e:Ljava/io/File;

    .line 146
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Li/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Li/k;->b:Li/U;

    invoke-virtual {v0}, Li/U;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Li/f;
    .registers 6

    .prologue
    .line 157
    iget-object v0, p0, Li/k;->e:Ljava/io/File;

    invoke-static {v0}, Li/d;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 158
    invoke-virtual {p0}, Li/k;->a()V

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Li/f;

    iget-object v1, p0, Li/k;->a:Li/d;

    invoke-static {v1}, Li/d;->b(Li/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Li/k;->d:Ljava/lang/String;

    iget-object v3, p0, Li/k;->e:Ljava/io/File;

    iget-object v4, p0, Li/k;->a:Li/d;

    invoke-static {v4}, Li/d;->c(Li/d;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Li/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Landroid/os/Handler;)V

    goto :goto_c
.end method
