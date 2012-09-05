.class Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;
.super Ljava/lang/Object;
.source "SwypeCore.java"

# interfaces
.implements Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReadOnlyFileObjectZip"
.end annotation


# instance fields
.field private entry:Ljava/util/zip/ZipEntry;

.field private is:Ljava/util/zip/ZipInputStream;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)V
    .registers 3
    .parameter "is"
    .parameter "entry"

    .prologue
    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;->is:Ljava/util/zip/ZipInputStream;

    .line 839
    iput-object p2, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;->entry:Ljava/util/zip/ZipEntry;

    .line 840
    return-void
.end method


# virtual methods
.method public available()J
    .registers 3

    .prologue
    .line 860
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 851
    iput-object v1, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;->entry:Ljava/util/zip/ZipEntry;

    .line 852
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;->is:Ljava/util/zip/ZipInputStream;

    if-eqz v0, :cond_e

    .line 853
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;->is:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 854
    iput-object v1, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;->is:Ljava/util/zip/ZipInputStream;

    .line 856
    :cond_e
    return-void
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 873
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public read([BII)I
    .registers 7
    .parameter "buf"
    .parameter "offs"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    move v1, p2

    .line 866
    .local v1, start:I
    :goto_1
    if-lez p3, :cond_f

    iget-object v2, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectZip;->is:Ljava/util/zip/ZipInputStream;

    #calls: Lcom/swype/android/jni/SwypeCore;->readSafe(Ljava/io/InputStream;[BII)I
    invoke-static {v2, p1, p2, p3}, Lcom/swype/android/jni/SwypeCore;->access$200(Ljava/io/InputStream;[BII)I

    move-result v0

    .local v0, count:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_1

    .line 868
    .end local v0           #count:I
    :cond_f
    sub-int v2, p2, v1

    return v2
.end method
