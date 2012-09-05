.class public final Llibcore/io/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>([Ljava/io/InputStream;)V
    .registers 2
    .parameter "ins"

    .prologue
    .line 600
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Llibcore/io/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 602
    return-void
.end method

.method synthetic constructor <init>([Ljava/io/InputStream;Llibcore/io/DiskLruCache$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 597
    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache$Snapshot;-><init>([Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 619
    iget-object v0, p0, Llibcore/io/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .local v0, arr$:[Ljava/io/InputStream;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v3, :cond_e

    aget-object v2, v0, v1

    .line 620
    .local v2, in:Ljava/io/InputStream;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 622
    .end local v2           #in:Ljava/io/InputStream;
    :cond_e
    return-void
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .registers 3
    .parameter "index"

    .prologue
    .line 608
    iget-object v0, p0, Llibcore/io/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Llibcore/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    #calls: Llibcore/io/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Llibcore/io/DiskLruCache;->access$1400(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
