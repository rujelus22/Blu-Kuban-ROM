.class public Lorg/apache/commons/io/filefilter/EmptyFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "EmptyFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final NOT_EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lorg/apache/commons/io/filefilter/EmptyFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/EmptyFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 59
    new-instance v0, Lorg/apache/commons/io/filefilter/NotFileFilter;

    sget-object v1, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v0, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->NOT_EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 9
    .parameter "file"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_11

    array-length v3, v0

    if-nez v3, :cond_12

    :cond_11
    move v1, v2

    .line 79
    .end local v0           #files:[Ljava/io/File;
    :cond_12
    :goto_12
    return v1

    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    :goto_1d
    move v1, v2

    goto :goto_12

    :cond_1f
    move v2, v1

    goto :goto_1d
.end method