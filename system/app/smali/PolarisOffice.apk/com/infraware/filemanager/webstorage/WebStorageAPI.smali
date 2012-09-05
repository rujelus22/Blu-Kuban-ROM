.class public Lcom/infraware/filemanager/webstorage/WebStorageAPI;
.super Ljava/lang/Object;
.source "WebStorageAPI.java"


# static fields
.field static final ROOT_PATH:Ljava/lang/String; = ""

.field private static instance:Lcom/infraware/filemanager/webstorage/WebStorageAPI;


# instance fields
.field private arrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private indexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->instance:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 35
    return-void
.end method

.method private addExtension(Ljava/lang/String;Lcom/infraware/filemanager/webstorage/service/AbstractEntry;)Ljava/lang/String;
    .registers 6
    .parameter "title"
    .parameter "entry"

    .prologue
    .line 289
    invoke-interface {p2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v0

    .line 290
    .local v0, kind:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".doc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 299
    :cond_1f
    :goto_1f
    return-object p1

    .line 292
    :cond_20
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".xls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    .line 294
    :cond_3c
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".ppt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    .line 296
    :cond_58
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1f
.end method

.method private findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .registers 15
    .parameter "serviceType"
    .parameter "userID"
    .parameter "path"
    .parameter "onlyFolder"

    .prologue
    const/4 v9, 0x0

    .line 216
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v7

    .line 217
    .local v7, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    if-nez v7, :cond_9

    move-object v8, v9

    .line 264
    :goto_8
    return-object v8

    .line 220
    :cond_9
    invoke-virtual {v7, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v6

    .line 221
    .local v6, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v6, :cond_11

    move-object v8, v9

    .line 222
    goto :goto_8

    .line 224
    :cond_11
    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->getEntryTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v3

    .line 225
    .local v3, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-nez v3, :cond_19

    move-object v8, v9

    .line 226
    goto :goto_8

    .line 228
    :cond_19
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v8, "/"

    invoke-direct {v4, p3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v4, strToken:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    .local v0, childEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;>;"
    :cond_24
    :goto_24
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_2c

    move-object v8, v3

    .line 264
    goto :goto_8

    .line 233
    :cond_2c
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, tmpPath:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3c

    move-object v8, v9

    .line 235
    goto :goto_8

    .line 237
    :cond_3c
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_24

    .line 239
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {v8}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 240
    .local v1, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    if-eqz p4, :cond_61

    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v8

    if-nez v8, :cond_61

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_92

    move-object v8, v9

    .line 244
    goto :goto_8

    .line 249
    :cond_61
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->encodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_87

    .line 251
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_80

    .line 253
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {v8}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 254
    goto :goto_24

    .line 256
    :cond_80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    goto :goto_8

    .line 258
    :cond_87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_92

    move-object v8, v9

    .line 260
    goto/16 :goto_8

    .line 237
    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d
.end method

.method private getExtension(Ljava/lang/String;Lcom/infraware/filemanager/webstorage/service/AbstractEntry;)Ljava/lang/String;
    .registers 5
    .parameter "title"
    .parameter "entry"

    .prologue
    .line 304
    invoke-interface {p2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v0

    .line 305
    .local v0, kind:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 306
    const-string v1, "doc"

    .line 314
    :goto_e
    return-object v1

    .line 307
    :cond_f
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 308
    const-string v1, "xls"

    goto :goto_e

    .line 309
    :cond_1a
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 310
    const-string v1, "ppt"

    goto :goto_e

    .line 311
    :cond_25
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 312
    const-string v1, "png"

    goto :goto_e

    .line 314
    :cond_30
    const-string v1, ""

    goto :goto_e
.end method

.method public static getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->instance:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    invoke-direct {v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->instance:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    .line 46
    :cond_b
    sget-object v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->instance:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    return-object v0
.end method

.method private getParentFolder(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "folder"

    .prologue
    .line 269
    const-string v1, ""

    .line 270
    .local v1, parentFolder:Ljava/lang/String;
    const/4 v0, 0x0

    .line 272
    .local v0, newFolder:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "/"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v2, strToken:Ljava/util/StringTokenizer;
    :cond_a
    :goto_a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 280
    move-object p1, v0

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_19

    .line 282
    const-string v1, "/"

    .line 284
    :cond_19
    return-object v1

    .line 276
    :cond_1a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method private removeEntry(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"
    .parameter "isFolder"

    .prologue
    const/4 v5, 0x0

    .line 361
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v3

    .line 362
    .local v3, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v3, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v2

    .line 363
    .local v2, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v2, :cond_d

    move v4, v5

    .line 379
    :goto_c
    return v4

    .line 366
    :cond_d
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v1

    .line 367
    .local v1, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-nez v1, :cond_15

    move v4, v5

    .line 368
    goto :goto_c

    .line 370
    :cond_15
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    invoke-interface {v4}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v4

    if-eq v4, p4, :cond_23

    move v4, v5

    .line 371
    goto :goto_c

    .line 374
    :cond_23
    :try_start_23
    invoke-virtual {v2, v1}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->removeEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    :try_end_26
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_23 .. :try_end_26} :catch_28

    .line 379
    const/4 v4, 0x1

    goto :goto_c

    .line 375
    :catch_28
    move-exception v0

    .local v0, e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    move v4, v5

    .line 376
    goto :goto_c
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->cancel()V

    .line 101
    :cond_9
    return-void
.end method

.method public checkLoginThreadAlive()Z
    .registers 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 92
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public checkThreadAlive()Z
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v0, :cond_f

    .line 80
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isDone()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 85
    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 83
    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public clear()Z
    .registers 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v1, :cond_b

    .line 184
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->cancel()V

    .line 185
    const/4 v1, 0x0

    .line 191
    :goto_a
    return v1

    .line 188
    :cond_b
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v0

    .line 189
    .local v0, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->clearData()V

    .line 191
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public createFolder(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "serviceType"
    .parameter "userId"
    .parameter "newFolderName"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 332
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v5

    .line 333
    .local v5, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v5, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v4

    .line 334
    .local v4, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v4, :cond_e

    move v6, v7

    .line 356
    :goto_d
    return v6

    .line 337
    :cond_e
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v2

    .line 338
    .local v2, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-eqz v2, :cond_16

    move v6, v7

    .line 339
    goto :goto_d

    .line 341
    :cond_16
    invoke-direct {p0, p3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getParentFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, parentFolder:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v6, :cond_29

    move v1, v6

    .line 344
    .local v1, index:I
    :goto_21
    invoke-direct {p0, p1, p2, v3, v6}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v2

    .line 345
    if-nez v2, :cond_30

    move v6, v7

    .line 346
    goto :goto_d

    .line 342
    .end local v1           #index:I
    :cond_29
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v1, v8, 0x1

    goto :goto_21

    .line 349
    .restart local v1       #index:I
    :cond_30
    :try_start_30
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->createFolder(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_37} :catch_38
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_30 .. :try_end_37} :catch_3b

    goto :goto_d

    .line 350
    :catch_38
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v6, v7

    .line 351
    goto :goto_d

    .line 352
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3b
    move-exception v0

    .local v0, e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    move v6, v7

    .line 353
    goto :goto_d
.end method

.method public createThreadByType(Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    .registers 8
    .parameter "type"
    .parameter "serviceType"
    .parameter "userId"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 51
    if-nez p1, :cond_5

    move-object v0, v1

    .line 73
    :goto_4
    return-object v0

    .line 54
    :cond_5
    const/4 v0, 0x0

    .line 55
    .local v0, thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    const-string v2, "LOGIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    .line 57
    new-instance v0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;

    .end local v0           #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    invoke-direct {v0, p2, p3, p4}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;-><init>(ILjava/lang/String;Landroid/os/Handler;)V

    .line 58
    .restart local v0       #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    goto :goto_4

    .line 61
    :cond_14
    const-string v2, "UPLOAD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    .line 63
    new-instance v0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;

    .end local v0           #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    invoke-direct {v0, p2, p3, p4}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;-><init>(ILjava/lang/String;Landroid/os/Handler;)V

    .line 64
    .restart local v0       #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    goto :goto_4

    .line 67
    :cond_22
    const-string v2, "DOWNLOAD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_30

    .line 69
    new-instance v0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;

    .end local v0           #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    invoke-direct {v0, p2, p3, p4}, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;-><init>(ILjava/lang/String;Landroid/os/Handler;)V

    .line 70
    .restart local v0       #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    goto :goto_4

    :cond_30
    move-object v0, v1

    .line 73
    goto :goto_4
.end method

.method public download(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 22
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 694
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v14

    .line 695
    .local v14, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v13

    .line 696
    .local v13, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v13, :cond_10

    .line 697
    const/4 v15, 0x0

    .line 740
    :goto_f
    return v15

    .line 699
    :cond_10
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 700
    .local v10, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-nez v10, :cond_21

    .line 701
    const/4 v15, 0x0

    goto :goto_f

    .line 703
    :cond_21
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 704
    .local v9, newFileName:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->addExtension(Ljava/lang/String;Lcom/infraware/filemanager/webstorage/service/AbstractEntry;)Ljava/lang/String;

    move-result-object v9

    .line 706
    const-string v15, "/"

    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 707
    .local v8, lastIndex:I
    const/4 v15, -0x1

    if-ne v8, v15, :cond_47

    .line 708
    const/4 v15, 0x0

    goto :goto_f

    .line 710
    :cond_47
    const/4 v15, 0x0

    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 711
    .local v6, dstFolder:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 714
    .local v12, tmpFile:Ljava/lang/String;
    :try_start_6f
    invoke-virtual {v13, v10, v12}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->downloadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_72} :catch_8f
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_6f .. :try_end_72} :catch_93

    move-result-object v12

    .line 721
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v15, :cond_97

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v15}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel()Z

    move-result v15

    if-eqz v15, :cond_97

    .line 723
    if-eqz v12, :cond_8d

    .line 725
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v4, deleteFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 729
    .end local v4           #deleteFile:Ljava/io/File;
    :cond_8d
    const/4 v15, 0x0

    goto :goto_f

    .line 715
    :catch_8f
    move-exception v7

    .line 716
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 717
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_93
    move-exception v7

    .line 718
    .local v7, e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 732
    .end local v7           #e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    :cond_97
    if-nez v12, :cond_9c

    .line 733
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 735
    :cond_9c
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 736
    .local v11, srcFile:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 738
    .local v5, dstFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 740
    invoke-virtual {v11, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    goto/16 :goto_f
.end method

.method public download(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z
    .registers 8
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"
    .parameter "thread"

    .prologue
    .line 685
    iput-object p5, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 686
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->download(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 687
    .local v0, result:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 689
    return v0
.end method

.method public getFirst(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    .registers 15
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 474
    const/4 v9, 0x1

    invoke-direct {p0, p1, p2, p3, v9}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v5

    .line 475
    .local v5, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-nez v5, :cond_9

    .line 527
    :cond_8
    :goto_8
    return-object v2

    .line 478
    :cond_9
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 479
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;>;"
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_8

    .line 483
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 484
    .local v3, index:I
    :goto_1b
    if-gez v3, :cond_a4

    .line 494
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_8

    .line 497
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    check-cast v5, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 498
    .restart local v5       #node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 500
    .local v1, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v8

    .line 501
    .local v8, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v8, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v7

    .line 502
    .local v7, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-eqz v7, :cond_8

    .line 505
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->encodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, title:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8

    .line 509
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, key:Ljava/lang/String;
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    const-string v10, "0"

    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    invoke-direct {v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;-><init>()V

    .line 519
    .local v2, file:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v9

    iput-boolean v9, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    .line 520
    iput-object p3, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->path:Ljava/lang/String;

    .line 521
    iput-object v6, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    .line 522
    invoke-direct {p0, v6, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getExtension(Ljava/lang/String;Lcom/infraware/filemanager/webstorage/service/AbstractEntry;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    .line 523
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getSize()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->size:J

    .line 524
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getUpdated()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->updateTime:J

    .line 525
    iput p1, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->serviceType:I

    goto/16 :goto_8

    .line 486
    .end local v1           #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    .end local v2           #file:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    .end local v8           #webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    :cond_a4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    check-cast v5, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 487
    .restart local v5       #node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 488
    .restart local v1       #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c0

    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_c3

    .line 489
    :cond_c0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 491
    :cond_c3
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1b
.end method

.method public getNext(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    .registers 16
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 532
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, key:Ljava/lang/String;
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 535
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;>;"
    if-nez v0, :cond_2d

    .line 578
    :goto_2c
    return-object v2

    .line 538
    :cond_2d
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 539
    .local v4, indexString:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 541
    .local v3, index:I
    add-int/lit8 v3, v3, 0x1

    .line 542
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v3, v10, :cond_47

    .line 544
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 548
    :cond_47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 549
    .local v6, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 551
    .local v1, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v9

    .line 552
    .local v9, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v9, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v8

    .line 553
    .local v8, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v8, :cond_63

    .line 555
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 559
    :cond_63
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->encodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 560
    .local v7, title:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_77

    .line 562
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 566
    :cond_77
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    invoke-direct {v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;-><init>()V

    .line 570
    .local v2, file:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v10

    iput-boolean v10, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    .line 571
    iput-object p3, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->path:Ljava/lang/String;

    .line 572
    iput-object v7, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    .line 573
    invoke-direct {p0, v7, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getExtension(Ljava/lang/String;Lcom/infraware/filemanager/webstorage/service/AbstractEntry;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    .line 574
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getSize()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->size:J

    .line 575
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getUpdated()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->updateTime:J

    .line 576
    iput p1, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->serviceType:I

    goto :goto_2c
.end method

.method public isExist(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 583
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v0

    .line 584
    .local v0, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-nez v0, :cond_15

    .line 586
    if-ne p1, v2, :cond_12

    .line 588
    invoke-static {p3}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->cutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 589
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v0

    .line 592
    :cond_12
    if-nez v0, :cond_15

    .line 596
    :goto_14
    return v1

    :cond_15
    move v1, v2

    goto :goto_14
.end method

.method public isLogin(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "serviceType"
    .parameter "userId"
    .parameter "password"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 107
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LOGIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_17

    .line 122
    :cond_16
    :goto_16
    return v2

    .line 111
    :cond_17
    if-eqz p2, :cond_16

    .line 114
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v1

    .line 115
    .local v1, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v1, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v0

    .line 116
    .local v0, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-eqz v0, :cond_16

    invoke-virtual {v0, p3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->checkPassword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 118
    const-string v4, "/"

    invoke-direct {p0, p1, p2, v4, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v4

    if-eqz v4, :cond_16

    move v2, v3

    .line 119
    goto :goto_16
.end method

.method public login(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .parameter "serviceType"
    .parameter "userId"
    .parameter "password"
    .parameter "isRefresh"

    .prologue
    const/4 v4, 0x0

    .line 136
    if-nez p2, :cond_5

    move v1, v4

    .line 163
    :cond_4
    :goto_4
    return v1

    .line 139
    :cond_5
    if-nez p3, :cond_9

    .line 140
    const-string p3, ""

    .line 142
    :cond_9
    const/4 v1, 0x1

    .line 144
    .local v1, result:Z
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v3

    .line 145
    .local v3, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v3, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v2

    .line 146
    .local v2, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-eqz v2, :cond_1a

    invoke-virtual {v2, p3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->checkPassword(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 149
    :cond_1a
    :try_start_1a
    invoke-virtual {v3, p2, p3, p1}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->login(Ljava/lang/String;Ljava/lang/String;I)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    :try_end_1d
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1a .. :try_end_1d} :catch_2c
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_1a .. :try_end_1d} :catch_2f

    move-result-object v2

    .line 157
    :cond_1e
    :goto_1e
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel()Z

    move-result v5

    if-eqz v5, :cond_32

    move v1, v4

    .line 158
    goto :goto_4

    .line 150
    :catch_2c
    move-exception v0

    .line 151
    .local v0, e:Lorg/apache/http/auth/AuthenticationException;
    const/4 v1, 0x0

    goto :goto_1e

    .line 152
    .end local v0           #e:Lorg/apache/http/auth/AuthenticationException;
    :catch_2f
    move-exception v0

    .line 153
    .local v0, e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    const/4 v1, 0x0

    goto :goto_1e

    .line 160
    .end local v0           #e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    :cond_32
    if-eqz v1, :cond_4

    .line 161
    invoke-virtual {v2, p3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->setPassword(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public login(ILjava/lang/String;Ljava/lang/String;ZLcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z
    .registers 8
    .parameter "serviceType"
    .parameter "userId"
    .parameter "password"
    .parameter "isRefresh"
    .parameter "thread"

    .prologue
    .line 127
    iput-object p5, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 128
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->login(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 129
    .local v0, result:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 131
    return v0
.end method

.method public logout(ILjava/lang/String;)Z
    .registers 5
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v1, :cond_b

    .line 170
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->cancel()V

    .line 171
    const/4 v1, 0x0

    .line 177
    :goto_a
    return v1

    .line 174
    :cond_b
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v0

    .line 175
    .local v0, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v0, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->removeData(ILjava/lang/String;)V

    .line 177
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public refreshData(ILjava/lang/String;)Z
    .registers 8
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 197
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 199
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v2

    .line 200
    .local v2, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v2, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v1

    .line 201
    .local v1, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v1, :cond_16

    .line 211
    :goto_15
    return v3

    .line 205
    :cond_16
    :try_start_16
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->refreshEntryTree()V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_19} :catch_1b
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_16 .. :try_end_19} :catch_1d

    .line 211
    const/4 v3, 0x1

    goto :goto_15

    .line 206
    :catch_1b
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_15

    .line 208
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1d
    move-exception v0

    .line 209
    .local v0, e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    goto :goto_15
.end method

.method public removeFile(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeEntry(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeFolder(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeEntry(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public rename(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 394
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v16

    .line 395
    .local v16, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    move-object/from16 v0, v16

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v15

    .line 396
    .local v15, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v15, :cond_13

    .line 397
    const/16 v17, 0x0

    .line 469
    :goto_12
    return v17

    .line 399
    :cond_13
    const/4 v10, 0x0

    .line 400
    .local v10, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    const/4 v14, 0x0

    .line 402
    .local v14, tmpPath:Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 403
    if-eqz v10, :cond_2a

    .line 404
    const/16 v17, 0x0

    goto :goto_12

    .line 406
    :cond_2a
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 407
    if-nez v10, :cond_3f

    .line 408
    const/16 v17, 0x0

    goto :goto_12

    .line 410
    :cond_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getParentFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 411
    .local v13, srcParent:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getParentFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 413
    .local v7, dstParent:Ljava/lang/String;
    invoke-virtual {v13, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_7b

    .line 416
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_70

    const/4 v9, 0x1

    .line 418
    .local v9, index:I
    :goto_62
    :try_start_62
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v10, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->renameEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    :try_end_6d
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_62 .. :try_end_6d} :catch_77

    .line 469
    .end local v9           #index:I
    :cond_6d
    :goto_6d
    const/16 v17, 0x1

    goto :goto_12

    .line 416
    :cond_70
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v9, v17, 0x1

    goto :goto_62

    .line 419
    .restart local v9       #index:I
    :catch_77
    move-exception v8

    .line 420
    .local v8, e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    const/16 v17, 0x0

    goto :goto_12

    .line 426
    .end local v8           #e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    .end local v9           #index:I
    :cond_7b
    const/4 v14, 0x0

    .line 427
    const/4 v12, 0x0

    .local v12, srcNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    const/4 v6, 0x0

    .line 429
    .local v6, dstNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_dd

    const/4 v11, 0x1

    .line 430
    .local v11, srcIndex:I
    :goto_8b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e4

    const/4 v5, 0x1

    .line 432
    .local v5, dstIndex:I
    :goto_98
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_eb

    const-string v17, ""

    :goto_b3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 433
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 434
    if-eqz v10, :cond_ee

    .line 435
    const/16 v17, 0x0

    goto/16 :goto_12

    .line 429
    .end local v5           #dstIndex:I
    .end local v11           #srcIndex:I
    :cond_dd
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v11, v17, 0x1

    goto :goto_8b

    .line 430
    .restart local v11       #srcIndex:I
    :cond_e4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v5, v17, 0x1

    goto :goto_98

    .line 432
    .restart local v5       #dstIndex:I
    :cond_eb
    const-string v17, "/"

    goto :goto_b3

    .line 437
    :cond_ee
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v12

    .line 438
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v6

    .line 440
    if-eqz v12, :cond_110

    if-nez v6, :cond_114

    .line 441
    :cond_110
    const/16 v17, 0x0

    goto/16 :goto_12

    .line 444
    :cond_114
    :try_start_114
    invoke-virtual {v15, v12, v6}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->moveEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    :try_end_117
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_114 .. :try_end_117} :catch_14c

    .line 449
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_6d

    .line 453
    :try_start_129
    invoke-virtual {v15}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->refreshEntryTree()V
    :try_end_12c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_129 .. :try_end_12c} :catch_151
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_129 .. :try_end_12c} :catch_156

    .line 460
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 463
    :try_start_13a
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v10, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->renameEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    :try_end_145
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_13a .. :try_end_145} :catch_147

    goto/16 :goto_6d

    .line 464
    :catch_147
    move-exception v8

    .line 465
    .restart local v8       #e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    const/16 v17, 0x0

    goto/16 :goto_12

    .line 445
    .end local v8           #e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    :catch_14c
    move-exception v8

    .line 446
    .restart local v8       #e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    const/16 v17, 0x0

    goto/16 :goto_12

    .line 454
    .end local v8           #e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    :catch_151
    move-exception v8

    .line 455
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const/16 v17, 0x0

    goto/16 :goto_12

    .line 456
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catch_156
    move-exception v8

    .line 457
    .local v8, e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    const/16 v17, 0x0

    goto/16 :goto_12
.end method

.method public upload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 22
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 610
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v14

    .line 611
    .local v14, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v13

    .line 612
    .local v13, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v13, :cond_10

    .line 613
    const/4 v4, 0x0

    .line 680
    :cond_f
    :goto_f
    return v4

    .line 615
    :cond_10
    const/4 v10, 0x0

    .line 617
    .local v10, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 618
    if-eqz v10, :cond_22

    .line 619
    const/4 v4, 0x0

    goto :goto_f

    .line 621
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getParentFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, dstParent:Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v15}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 623
    if-nez v10, :cond_39

    .line 624
    const/4 v4, 0x0

    goto :goto_f

    .line 626
    :cond_39
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 627
    .local v8, newFileName:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v12, uploadFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 630
    .local v7, index:I
    const/4 v11, 0x0

    .line 631
    .local v11, tmpFileName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 634
    .local v9, newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    :goto_50
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "["

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "TempUpload"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 635
    const-string v15, "/"

    if-ne v5, v15, :cond_d6

    .line 636
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v9

    .line 640
    :goto_8e
    if-nez v9, :cond_fc

    .line 642
    invoke-virtual {v13, v11}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->setTmpFile(Ljava/lang/String;)V

    .line 650
    :try_start_93
    invoke-virtual {v13, v10, v12}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->uploadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/io/File;)Z
    :try_end_96
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_93 .. :try_end_96} :catch_100

    move-result v4

    .line 655
    .local v4, bResult:Z
    if-eqz v4, :cond_f

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v15}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 660
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 661
    if-nez v10, :cond_ce

    .line 663
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_ce

    .line 665
    invoke-static/range {p4 .. p4}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->cutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 666
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 670
    :cond_ce
    if-eqz v10, :cond_d3

    .line 673
    :try_start_d0
    invoke-virtual {v13, v10}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->removeEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    :try_end_d3
    .catch Lcom/infraware/filemanager/webstorage/objects/WebStorageException; {:try_start_d0 .. :try_end_d3} :catch_104

    .line 677
    :cond_d3
    :goto_d3
    const/4 v4, 0x0

    goto/16 :goto_f

    .line 638
    .end local v4           #bResult:Z
    :cond_d6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v9

    goto :goto_8e

    .line 645
    :cond_fc
    add-int/lit8 v7, v7, 0x1

    .line 632
    goto/16 :goto_50

    .line 651
    :catch_100
    move-exception v6

    .line 652
    .local v6, e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    const/4 v4, 0x0

    goto/16 :goto_f

    .line 674
    .end local v6           #e:Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
    .restart local v4       #bResult:Z
    :catch_104
    move-exception v15

    goto :goto_d3
.end method

.method public upload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z
    .registers 8
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"
    .parameter "thread"

    .prologue
    .line 601
    iput-object p5, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 602
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->upload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 603
    .local v0, result:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 605
    return v0
.end method
