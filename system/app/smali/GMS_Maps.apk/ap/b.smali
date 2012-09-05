.class public Lap/b;
.super Lap/a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lap/c;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lap/c;->a()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(Lap/c;Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p1}, Lap/c;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(Lap/c;Ljava/lang/Runnable;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lap/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Lap/c;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lap/c;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lap/a;-><init>(Lap/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lap/b;->b(I)V

    return-void
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lap/b;->a:I

    return-void
.end method


# virtual methods
.method d()I
    .registers 2

    iget-object v0, p0, Lap/b;->b:Lap/c;

    invoke-virtual {v0, p0}, Lap/c;->c(Lap/a;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method h()V
    .registers 2

    iget-object v0, p0, Lap/b;->b:Lap/c;

    invoke-virtual {v0, p0}, Lap/c;->a(Lap/b;)V

    return-void
.end method

.method public declared-synchronized j()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lap/b;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
