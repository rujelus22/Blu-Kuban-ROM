.class LRx;
.super Ljava/lang/Object;
.source "TempFileManagerImpl.java"

# interfaces
.implements LQX;


# instance fields
.field private a:I

.field final synthetic a:LRw;

.field private a:Ljava/io/File;

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(LRw;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, LRx;->a:LRw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, LRx;->a:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, LRx;->a:Ljava/io/File;

    .line 33
    iput-object p2, p0, LRx;->a:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Landroid/os/ParcelFileDescriptor;
    .registers 5

    .prologue
    const/high16 v3, 0x1000

    .line 59
    iget-object v0, p0, LRx;->a:Ljava/io/File;

    if-eqz v0, :cond_d

    .line 60
    iget-object v0, p0, LRx;->a:Ljava/io/File;

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 72
    :goto_c
    return-object v0

    .line 62
    :cond_d
    iget-object v0, p0, LRx;->a:LRw;

    invoke-static {v0}, LRw;->a(LRw;)LRy;

    move-result-object v0

    invoke-interface {v0}, LRy;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, LRx;->a:Ljava/io/File;

    .line 63
    iget-object v0, p0, LRx;->a:LRw;

    iget-object v1, p0, LRx;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, LRw;->a(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v1

    .line 66
    :try_start_21
    iget-object v0, p0, LRx;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 68
    iget-object v0, p0, LRx;->a:LRw;

    invoke-static {v0}, LRw;->a(LRw;)LRd;

    move-result-object v0

    iget-object v2, p0, LRx;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LRd;->a(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_3b

    .line 70
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 72
    iget-object v0, p0, LRx;->a:Ljava/io/File;

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_c

    .line 70
    :catchall_3b
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, LRx;->a:LRw;

    invoke-static {v0}, LRw;->a(LRw;)LRd;

    move-result-object v0

    iget-object v1, p0, LRx;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LRd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a()V
    .registers 3

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    iget v0, p0, LRx;->a:I

    if-lez v0, :cond_2f

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, LafQ;->b(Z)V

    .line 43
    iget v0, p0, LRx;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LRx;->a:I

    .line 44
    iget v0, p0, LRx;->a:I

    if-nez v0, :cond_2d

    .line 45
    iget-object v0, p0, LRx;->a:Ljava/io/File;

    if-eqz v0, :cond_22

    .line 46
    iget-object v0, p0, LRx;->a:LRw;

    invoke-static {v0}, LRw;->a(LRw;)LRy;

    move-result-object v0

    iget-object v1, p0, LRx;->a:Ljava/io/File;

    invoke-interface {v0, v1}, LRy;->b(Ljava/io/File;)V

    .line 48
    :cond_22
    iget-object v0, p0, LRx;->a:LRw;

    invoke-static {v0}, LRw;->a(LRw;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LRx;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_31

    .line 50
    :cond_2d
    monitor-exit p0

    return-void

    .line 42
    :cond_2f
    const/4 v0, 0x0

    goto :goto_6

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget v0, p0, LRx;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LRx;->a:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 38
    monitor-exit p0

    return-void

    .line 37
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
