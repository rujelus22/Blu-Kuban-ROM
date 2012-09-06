.class public abstract Lcom/x/google/masf/protocol/Block;
.super Ljava/lang/Object;


# instance fields
.field private id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getId()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/x/google/masf/protocol/Block;->id:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setId(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/x/google/masf/protocol/Block;->id:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
