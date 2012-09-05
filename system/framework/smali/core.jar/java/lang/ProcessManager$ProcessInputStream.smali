.class Ljava/lang/ProcessManager$ProcessInputStream;
.super Ljava/io/FileInputStream;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInputStream"
.end annotation


# instance fields
.field private fd:Ljava/io/FileDescriptor;


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "fd"

    .prologue
    .line 344
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 345
    iput-object p1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    :try_start_0
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_16

    .line 353
    monitor-enter p0

    .line 355
    :try_start_4
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 357
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    .line 359
    monitor-exit p0

    .line 361
    return-void

    .line 357
    :catchall_e
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    throw v0

    .line 359
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v0

    .line 353
    :catchall_16
    move-exception v0

    monitor-enter p0

    .line 355
    :try_start_18
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_22

    .line 357
    const/4 v1, 0x0

    :try_start_1e
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    .line 359
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_27

    throw v0

    .line 357
    :catchall_22
    move-exception v0

    const/4 v1, 0x0

    :try_start_24
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    throw v0

    .line 359
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_27

    throw v0
.end method
