.class public abstract Lcom/google/googlenav/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/google/googlenav/y;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0, v0}, Lcom/google/googlenav/x;-><init>(ZZ)V

    .line 105
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/x;-><init>(ZZLcom/google/googlenav/y;)V

    .line 109
    return-void
.end method

.method public constructor <init>(ZZLcom/google/googlenav/y;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-boolean p1, p0, Lcom/google/googlenav/x;->a:Z

    .line 113
    iput-boolean p2, p0, Lcom/google/googlenav/x;->b:Z

    .line 114
    iput-object p3, p0, Lcom/google/googlenav/x;->c:Lcom/google/googlenav/y;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/x;)Z
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/googlenav/x;->a:Z

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 134
    invoke-static {}, Lcom/google/googlenav/u;->d()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .registers 3

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/googlenav/x;->b:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/googlenav/u;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 129
    :goto_a
    return-void

    .line 122
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/x;->c:Lcom/google/googlenav/y;

    if-eqz v0, :cond_1a

    .line 123
    iget-object v1, p0, Lcom/google/googlenav/x;->c:Lcom/google/googlenav/y;

    monitor-enter v1

    .line 124
    :try_start_12
    invoke-virtual {p0}, Lcom/google/googlenav/x;->a()V

    .line 125
    monitor-exit v1

    goto :goto_a

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    throw v0

    .line 127
    :cond_1a
    invoke-virtual {p0}, Lcom/google/googlenav/x;->a()V

    goto :goto_a
.end method
