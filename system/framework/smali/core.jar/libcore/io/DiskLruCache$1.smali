.class Llibcore/io/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/io/DiskLruCache;


# direct methods
.method constructor <init>(Llibcore/io/DiskLruCache;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Llibcore/io/DiskLruCache$1;->this$0:Llibcore/io/DiskLruCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Llibcore/io/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v1, p0, Llibcore/io/DiskLruCache$1;->this$0:Llibcore/io/DiskLruCache;

    monitor-enter v1

    .line 158
    :try_start_4
    iget-object v0, p0, Llibcore/io/DiskLruCache$1;->this$0:Llibcore/io/DiskLruCache;

    #getter for: Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Llibcore/io/DiskLruCache;->access$000(Llibcore/io/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_e

    .line 159
    monitor-exit v1

    .line 167
    :goto_d
    return-object v3

    .line 161
    :cond_e
    iget-object v0, p0, Llibcore/io/DiskLruCache$1;->this$0:Llibcore/io/DiskLruCache;

    #calls: Llibcore/io/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Llibcore/io/DiskLruCache;->access$100(Llibcore/io/DiskLruCache;)V

    .line 162
    iget-object v0, p0, Llibcore/io/DiskLruCache$1;->this$0:Llibcore/io/DiskLruCache;

    #calls: Llibcore/io/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Llibcore/io/DiskLruCache;->access$200(Llibcore/io/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 163
    iget-object v0, p0, Llibcore/io/DiskLruCache$1;->this$0:Llibcore/io/DiskLruCache;

    #calls: Llibcore/io/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Llibcore/io/DiskLruCache;->access$300(Llibcore/io/DiskLruCache;)V

    .line 164
    iget-object v0, p0, Llibcore/io/DiskLruCache$1;->this$0:Llibcore/io/DiskLruCache;

    const/4 v2, 0x0

    #setter for: Llibcore/io/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v2}, Llibcore/io/DiskLruCache;->access$402(Llibcore/io/DiskLruCache;I)I

    .line 166
    :cond_26
    monitor-exit v1

    goto :goto_d

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v0
.end method
