.class public final Llibcore/io/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Llibcore/io/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Llibcore/io/DiskLruCache;


# direct methods
.method private constructor <init>(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Entry;)V
    .registers 3
    .parameter
    .parameter "entry"

    .prologue
    .line 632
    iput-object p1, p0, Llibcore/io/DiskLruCache$Editor;->this$0:Llibcore/io/DiskLruCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p2, p0, Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;

    .line 634
    return-void
.end method

.method synthetic constructor <init>(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 628
    invoke-direct {p0, p1, p2}, Llibcore/io/DiskLruCache$Editor;-><init>(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1300(Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Entry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 628
    iget-object v0, p0, Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1702(Llibcore/io/DiskLruCache$Editor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 628
    iput-boolean p1, p0, Llibcore/io/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Llibcore/io/DiskLruCache$Editor;->this$0:Llibcore/io/DiskLruCache;

    const/4 v1, 0x0

    #calls: Llibcore/io/DiskLruCache;->completeEdit(Llibcore/io/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Llibcore/io/DiskLruCache;->access$1600(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Editor;Z)V

    .line 709
    return-void
.end method

.method public commit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    iget-boolean v0, p0, Llibcore/io/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_16

    .line 696
    iget-object v0, p0, Llibcore/io/DiskLruCache$Editor;->this$0:Llibcore/io/DiskLruCache;

    const/4 v1, 0x0

    #calls: Llibcore/io/DiskLruCache;->completeEdit(Llibcore/io/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Llibcore/io/DiskLruCache;->access$1600(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Editor;Z)V

    .line 697
    iget-object v0, p0, Llibcore/io/DiskLruCache$Editor;->this$0:Llibcore/io/DiskLruCache;

    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/io/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 701
    :goto_15
    return-void

    .line 699
    :cond_16
    iget-object v0, p0, Llibcore/io/DiskLruCache$Editor;->this$0:Llibcore/io/DiskLruCache;

    const/4 v1, 0x1

    #calls: Llibcore/io/DiskLruCache;->completeEdit(Llibcore/io/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Llibcore/io/DiskLruCache;->access$1600(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Editor;Z)V

    goto :goto_15
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Llibcore/io/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 658
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_b

    #calls: Llibcore/io/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Llibcore/io/DiskLruCache;->access$1400(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .registers 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor;->this$0:Llibcore/io/DiskLruCache;

    monitor-enter v1

    .line 642
    :try_start_3
    iget-object v0, p0, Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;

    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 649
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 645
    :cond_14
    :try_start_14
    iget-object v0, p0, Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;

    #getter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$600(Llibcore/io/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 646
    const/4 v0, 0x0

    monitor-exit v1

    .line 648
    :goto_1e
    return-object v0

    :cond_1f
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_11

    goto :goto_1e
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .registers 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor;->this$0:Llibcore/io/DiskLruCache;

    monitor-enter v1

    .line 670
    :try_start_3
    iget-object v0, p0, Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;

    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 671
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 674
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 673
    :cond_14
    :try_start_14
    new-instance v0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Llibcore/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Llibcore/io/DiskLruCache$Editor;Ljava/io/OutputStream;Llibcore/io/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .registers 7
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 683
    .local v0, writer:Ljava/io/Writer;
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Llibcore/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    .line 684
    .end local v0           #writer:Ljava/io/Writer;
    .local v1, writer:Ljava/io/Writer;
    :try_start_c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18

    .line 686
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 688
    return-void

    .line 686
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    :catchall_13
    move-exception v2

    :goto_14
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .end local v0           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    goto :goto_14
.end method
