.class public Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;
.super Ljava/lang/Object;
.source "MXFolderCustomizedSet.java"


# instance fields
.field protected mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->mList:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 75
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFile(I)Ljava/io/File;
    .registers 3
    .parameter "index"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_9
.end method

.method public setSelectAll()V
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/io/File;

    const-string v1, "/@s:selector:selectall@"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, file:Ljava/io/File;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method
