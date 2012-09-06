.class public LY/b;
.super LY/a;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(LY/c;)V
    .registers 4
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p1}, LY/c;->a()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(LY/c;Ljava/lang/Runnable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, LY/c;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(LY/c;Ljava/lang/Runnable;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p1}, LY/c;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, LY/a;-><init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p4}, LY/b;->b(I)V

    .line 72
    return-void
.end method

.method private b(I)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput p1, p0, LY/b;->a:I

    .line 134
    return-void
.end method


# virtual methods
.method d()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, LY/b;->c:LY/c;

    invoke-virtual {v0, p0}, LY/c;->c(LY/a;)Z

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

    .prologue
    .line 141
    iget-object v0, p0, LY/b;->c:LY/c;

    invoke-virtual {v0, p0}, LY/c;->a(LY/b;)V

    .line 142
    return-void
.end method

.method public declared-synchronized j()I
    .registers 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget v0, p0, LY/b;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
