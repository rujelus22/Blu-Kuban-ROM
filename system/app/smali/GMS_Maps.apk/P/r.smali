.class public Lp/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Thread;

.field private volatile b:Lp/t;

.field private final c:Lq/b;

.field private final d:Lp/e;

.field private final e:Lp/a;

.field private final f:Lp/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr/aH;Ljava/lang/Thread;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p3, p0, Lp/r;->a:Ljava/lang/Thread;

    .line 63
    new-instance v0, Lq/b;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lq/b;-><init>(Lr/aH;Z)V

    iput-object v0, p0, Lp/r;->c:Lq/b;

    .line 64
    new-instance v0, Lp/a;

    iget-object v1, p0, Lp/r;->c:Lq/b;

    invoke-direct {v0, p1, v1}, Lp/a;-><init>(Landroid/content/Context;Lq/b;)V

    iput-object v0, p0, Lp/r;->e:Lp/a;

    .line 65
    new-instance v0, Lp/e;

    iget-object v1, p0, Lp/r;->c:Lq/b;

    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v2

    invoke-virtual {v2}, Lt/k;->C()Lt/l;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lp/e;-><init>(Lq/b;Lt/l;)V

    iput-object v0, p0, Lp/r;->d:Lp/e;

    .line 67
    new-instance v0, Lp/x;

    iget-object v1, p0, Lp/r;->c:Lq/b;

    invoke-direct {v0, v1}, Lp/x;-><init>(Lq/b;)V

    iput-object v0, p0, Lp/r;->f:Lp/x;

    .line 68
    return-void
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)Ln/aa;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v3, v0, [Ln/Q;

    .line 165
    const/4 v0, 0x0

    .line 166
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    .line 167
    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lp/d;->b:Ln/Q;

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_11

    .line 169
    :cond_25
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    .line 170
    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lp/d;->b:Ln/Q;

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_29

    .line 172
    :cond_3d
    invoke-static {v3}, Ln/aa;->a([Ln/Q;)Ln/aa;

    move-result-object v1

    .line 173
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    iget-object v0, v0, Lp/d;->b:Ln/Q;

    invoke-virtual {v0}, Ln/Q;->e()D

    move-result-wide v2

    .line 175
    double-to-int v0, v2

    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v2

    invoke-virtual {v2}, Lt/k;->C()Lt/l;

    move-result-object v2

    invoke-virtual {v2}, Lt/l;->a()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ln/aa;->b(I)Ln/aa;

    move-result-object v0

    .line 177
    return-object v0
.end method

.method private final b()V
    .registers 3

    .prologue
    .line 203
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lp/r;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method must be called on RouteFinderThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_16
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lp/r;->f:Lp/x;

    invoke-virtual {v0}, Lp/x;->a()V

    .line 75
    return-void
.end method

.method public a(Lm/b;Lo/x;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lp/r;->b()V

    .line 95
    iget-object v0, p0, Lp/r;->b:Lp/t;

    if-nez v0, :cond_8

    .line 101
    :goto_7
    return-void

    .line 99
    :cond_8
    invoke-virtual {p0, p1, p2}, Lp/r;->b(Lm/b;Lo/x;)Lp/s;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lp/r;->b:Lp/t;

    iget-object v2, v0, Lp/s;->a:Lo/x;

    iget v0, v0, Lp/s;->b:I

    invoke-interface {v1, v2, v0}, Lp/t;->a(Lo/x;I)V

    goto :goto_7
.end method

.method public a(Lp/t;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lp/r;->b:Lp/t;

    .line 85
    return-void
.end method

.method public b(Lm/b;Lo/x;)Lp/s;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-direct {p0}, Lp/r;->b()V

    .line 116
    iget-object v0, p0, Lp/r;->c:Lq/b;

    invoke-virtual {v0, v4}, Lq/b;->a(Ln/aa;)V

    .line 117
    iget-object v0, p0, Lp/r;->d:Lp/e;

    invoke-virtual {v0, p1}, Lp/e;->a(Lm/b;)Ljava/util/Collection;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 119
    new-instance v0, Lp/s;

    invoke-direct {v0, v4, v3}, Lp/s;-><init>(Lo/x;I)V

    .line 151
    :goto_1b
    return-object v0

    .line 121
    :cond_1c
    iget-object v0, p0, Lp/r;->d:Lp/e;

    invoke-virtual {v0, p1, p2}, Lp/e;->a(Lm/b;Lo/x;)Ljava/util/Collection;

    move-result-object v2

    .line 122
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2e

    .line 123
    new-instance v0, Lp/s;

    invoke-direct {v0, v4, v3}, Lp/s;-><init>(Lo/x;I)V

    goto :goto_1b

    .line 125
    :cond_2e
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 127
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    goto :goto_38

    .line 131
    :cond_45
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    goto :goto_49

    .line 138
    :cond_56
    invoke-static {v1, v2}, Lp/r;->a(Ljava/util/Collection;Ljava/util/Collection;)Ln/aa;

    move-result-object v0

    .line 139
    iget-object v3, p0, Lp/r;->c:Lq/b;

    invoke-virtual {v3, v0}, Lq/b;->a(Ln/aa;)V

    .line 141
    iget-object v0, p0, Lp/r;->f:Lp/x;

    invoke-virtual {v0, v1, v2}, Lp/x;->a(Ljava/util/Collection;Ljava/util/Collection;)Lp/A;

    move-result-object v0

    .line 142
    if-nez v0, :cond_6e

    .line 143
    new-instance v0, Lp/s;

    const/4 v1, 0x2

    invoke-direct {v0, v4, v1}, Lp/s;-><init>(Lo/x;I)V

    goto :goto_1b

    .line 148
    :cond_6e
    new-instance v1, Lo/P;

    invoke-virtual {p1}, Lm/b;->m()Ln/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/P;-><init>(Ln/s;)V

    .line 149
    iget-object v2, p0, Lp/r;->e:Lp/a;

    invoke-virtual {v2, v0, v1, p2}, Lp/a;->a(Lp/A;Lo/P;Lo/x;)Lo/x;

    move-result-object v1

    .line 151
    new-instance v0, Lp/s;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp/s;-><init>(Lo/x;I)V

    goto :goto_1b
.end method
