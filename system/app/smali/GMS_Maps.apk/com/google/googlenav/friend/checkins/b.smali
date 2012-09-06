.class public Lcom/google/googlenav/friend/checkins/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LaM/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()LaM/a;
    .registers 3

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/b;->a:LaM/a;

    if-nez v0, :cond_10

    .line 264
    new-instance v0, LaM/a;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1}, LaM/a;-><init>(LY/c;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/checkins/b;->a:LaM/a;

    .line 267
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/b;->a:LaM/a;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 263
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
