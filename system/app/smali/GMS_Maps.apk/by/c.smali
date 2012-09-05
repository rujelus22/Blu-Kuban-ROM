.class public abstract Lby/c;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/f;


# instance fields
.field private a:Lby/d;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lby/c;->b:I

    iput v0, p0, Lby/c;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lby/c;->d:I

    return-void
.end method


# virtual methods
.method public abstract b_()Ljava/io/InputStream;
.end method

.method public declared-synchronized d()Lby/d;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lby/c;->a:Lby/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lby/c;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
