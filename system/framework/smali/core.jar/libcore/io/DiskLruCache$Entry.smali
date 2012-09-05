.class final Llibcore/io/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Llibcore/io/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field final synthetic this$0:Llibcore/io/DiskLruCache;


# direct methods
.method private constructor <init>(Llibcore/io/DiskLruCache;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "key"

    .prologue
    .line 762
    iput-object p1, p0, Llibcore/io/DiskLruCache$Entry;->this$0:Llibcore/io/DiskLruCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object p2, p0, Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 764
    #getter for: Llibcore/io/DiskLruCache;->valueCount:I
    invoke-static {p1}, Llibcore/io/DiskLruCache;->access$1800(Llibcore/io/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Llibcore/io/DiskLruCache$Entry;->lengths:[J

    .line 765
    return-void
.end method

.method synthetic constructor <init>(Llibcore/io/DiskLruCache;Ljava/lang/String;Llibcore/io/DiskLruCache$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 750
    invoke-direct {p0, p1, p2}, Llibcore/io/DiskLruCache$Entry;-><init>(Llibcore/io/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Llibcore/io/DiskLruCache$Entry;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 750
    iget-object v0, p0, Llibcore/io/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 750
    iget-object v0, p0, Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Llibcore/io/DiskLruCache$Entry;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 750
    iget-boolean v0, p0, Llibcore/io/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$602(Llibcore/io/DiskLruCache$Entry;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 750
    iput-boolean p1, p0, Llibcore/io/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 750
    iget-object v0, p0, Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 750
    iput-object p1, p0, Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$800(Llibcore/io/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .parameter "strings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .registers 7
    .parameter "strings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    array-length v2, p1

    iget-object v3, p0, Llibcore/io/DiskLruCache$Entry;->this$0:Llibcore/io/DiskLruCache;

    #getter for: Llibcore/io/DiskLruCache;->valueCount:I
    invoke-static {v3}, Llibcore/io/DiskLruCache;->access$1800(Llibcore/io/DiskLruCache;)I

    move-result v3

    if-eq v2, v3, :cond_e

    .line 780
    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 784
    :cond_e
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    :try_start_f
    array-length v2, p1

    if-ge v1, v2, :cond_25

    .line 785
    iget-object v2, p0, Llibcore/io/DiskLruCache$Entry;->lengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_1f

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 787
    :catch_1f
    move-exception v0

    .line 788
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 790
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_25
    return-void
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .registers 6
    .parameter "i"

    .prologue
    .line 797
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Llibcore/io/DiskLruCache$Entry;->this$0:Llibcore/io/DiskLruCache;

    #getter for: Llibcore/io/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Llibcore/io/DiskLruCache;->access$1900(Llibcore/io/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .registers 6
    .parameter "i"

    .prologue
    .line 801
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Llibcore/io/DiskLruCache$Entry;->this$0:Llibcore/io/DiskLruCache;

    #getter for: Llibcore/io/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Llibcore/io/DiskLruCache;->access$1900(Llibcore/io/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .local v3, result:Ljava/lang/StringBuilder;
    iget-object v0, p0, Llibcore/io/DiskLruCache$Entry;->lengths:[J

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_19

    aget-wide v4, v0, v1

    .line 770
    .local v4, size:J
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 772
    .end local v4           #size:J
    :cond_19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
