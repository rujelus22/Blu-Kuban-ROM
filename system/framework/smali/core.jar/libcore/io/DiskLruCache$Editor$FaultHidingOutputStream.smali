.class Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Llibcore/io/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Llibcore/io/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .registers 3
    .parameter
    .parameter "out"

    .prologue
    .line 712
    iput-object p1, p0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llibcore/io/DiskLruCache$Editor;

    .line 713
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 714
    return-void
.end method

.method synthetic constructor <init>(Llibcore/io/DiskLruCache$Editor;Ljava/io/OutputStream;Llibcore/io/DiskLruCache$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 711
    invoke-direct {p0, p1, p2}, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Llibcore/io/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 734
    :try_start_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 738
    :goto_5
    return-void

    .line 735
    :catch_6
    move-exception v0

    .line 736
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llibcore/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llibcore/io/DiskLruCache$Editor;->access$1702(Llibcore/io/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 742
    :try_start_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 746
    :goto_5
    return-void

    .line 743
    :catch_6
    move-exception v0

    .line 744
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llibcore/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llibcore/io/DiskLruCache$Editor;->access$1702(Llibcore/io/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method

.method public write(I)V
    .registers 5
    .parameter "oneByte"

    .prologue
    .line 718
    :try_start_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 722
    :goto_5
    return-void

    .line 719
    :catch_6
    move-exception v0

    .line 720
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llibcore/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llibcore/io/DiskLruCache$Editor;->access$1702(Llibcore/io/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method

.method public write([BII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 726
    :try_start_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 730
    :goto_5
    return-void

    .line 727
    :catch_6
    move-exception v0

    .line 728
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llibcore/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llibcore/io/DiskLruCache$Editor;->access$1702(Llibcore/io/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method
