.class Lorg/apache/commons/compress/archivers/zip/ZipFile$1;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .registers 2
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 13
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 681
    if-ne p1, p2, :cond_4

    .line 682
    const/4 v6, 0x0

    .line 696
    :goto_3
    return v6

    :cond_4
    move-object v0, p1

    .line 684
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .local v0, e1:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object v1, p2

    .line 685
    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 687
    .local v1, e2:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 688
    .local v2, off1:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 689
    .local v3, off2:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    if-nez v2, :cond_26

    .line 690
    const/4 v6, 0x1

    goto :goto_3

    .line 692
    :cond_26
    if-nez v3, :cond_2a

    .line 693
    const/4 v6, -0x1

    goto :goto_3

    .line 695
    :cond_2a
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v6

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 696
    .local v4, val:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3c

    const/4 v6, 0x0

    goto :goto_3

    :cond_3c
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_44

    const/4 v6, -0x1

    goto :goto_3

    :cond_44
    const/4 v6, 0x1

    goto :goto_3
.end method
