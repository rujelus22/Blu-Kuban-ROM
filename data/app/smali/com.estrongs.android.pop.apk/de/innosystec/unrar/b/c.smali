.class public Lde/innosystec/unrar/b/c;
.super Ljava/io/RandomAccessFile;

# interfaces
.implements Lde/innosystec/unrar/b/a;


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lde/innosystec/unrar/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lde/innosystec/unrar/b/c;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const-string v0, "r"

    invoke-direct {p0, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a([BI)I
    .registers 4

    sget-boolean v0, Lde/innosystec/unrar/b/c;->a:Z

    if-nez v0, :cond_c

    if-gtz p2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lde/innosystec/unrar/b/c;->readFully([BII)V

    return p2
.end method

.method public a()J
    .registers 3

    invoke-virtual {p0}, Lde/innosystec/unrar/b/c;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lde/innosystec/unrar/b/c;->seek(J)V

    return-void
.end method
