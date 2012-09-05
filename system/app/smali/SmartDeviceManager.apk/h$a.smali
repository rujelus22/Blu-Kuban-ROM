.class final Lh$a;
.super Ljava/lang/Thread;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lh;


# direct methods
.method synthetic constructor <init>(Lh;)V
    .registers 3
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh$a;-><init>(Lh;B)V

    return-void
.end method

.method private constructor <init>(Lh;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lh$a;->a:Lh;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 66
    iget-object v0, p0, Lh$a;->a:Lh;

    monitor-enter v0

    .line 67
    :try_start_6
    iget-object v1, p0, Lh$a;->a:Lh;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v1, Lh;->b:Landroid/os/Handler;

    .line 68
    iget-object v1, p0, Lh$a;->a:Lh;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 69
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    .line 70
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 71
    return-void

    .line 69
    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method
