.class public Lcom/samsung/upnp/media/server/ContentDirectory;
.super Ljava/lang/Object;
.source "ContentDirectory.java"

# interfaces
.implements Lcom/samsung/upnp/control/ActionListener;
.implements Lcom/samsung/upnp/control/QueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/upnp/media/server/ContentDirectory$ICreateObjectReceived;,
        Lcom/samsung/upnp/media/server/ContentDirectory$IUploadFinished;,
        Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;
    }
.end annotation


# instance fields
.field private cdsEventHandler:Landroid/os/Handler;

.field private cdsEventThread:Landroid/os/HandlerThread;

.field private contentUpdateInterval:J

.field private createObjectListener:Ljava/lang/Object;

.field private dirList:Lcom/samsung/upnp/media/server/DirectoryList;

.field dlnaParser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

.field private filter:Lcom/samsung/upnp/media/server/object/Filter;

.field private formatList:Lcom/samsung/upnp/media/server/object/FormatList;

.field importItemNodeList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/upnp/media/server/object/item/ImportItemNode;",
            ">;"
        }
    .end annotation
.end field

.field private isDirectory:Z

.field private lastSystemUpdateID:I

.field private lastSystemUpdateTime:J

.field private mImageThumbnailTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private maxContentID:I

.field private mediaServer:Lcom/samsung/upnp/media/server/MediaServer;

.field private mutex:Lcom/samsung/util/Mutex;

.field parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

.field private rootNode:Lcom/samsung/upnp/media/server/object/container/RootNode;

.field private searchCapList:Lcom/samsung/upnp/media/server/object/SearchCapList;

.field private sortCapList:Lcom/samsung/upnp/media/server/object/SortCapList;

.field private systemUpdateID:I

.field private systemUpdateIDInterval:J

.field private uploadFinishedListener:Ljava/lang/Object;

.field private varSystemUpdateID:Lcom/samsung/upnp/StateVariable;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/media/server/MediaServer;)V
    .registers 6
    .parameter "mserver"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lcom/samsung/util/Mutex;

    invoke-direct {v0}, Lcom/samsung/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->mutex:Lcom/samsung/util/Mutex;

    .line 323
    new-instance v0, Lcom/samsung/upnp/media/server/object/FormatList;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/FormatList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->formatList:Lcom/samsung/upnp/media/server/object/FormatList;

    .line 360
    new-instance v0, Lcom/samsung/upnp/media/server/object/SortCapList;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/SortCapList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->sortCapList:Lcom/samsung/upnp/media/server/object/SortCapList;

    .line 413
    new-instance v0, Lcom/samsung/upnp/media/server/object/SearchCapList;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/SearchCapList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->searchCapList:Lcom/samsung/upnp/media/server/object/SearchCapList;

    .line 473
    iput-object v2, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->filter:Lcom/samsung/upnp/media/server/object/Filter;

    .line 485
    new-instance v0, Lcom/samsung/upnp/media/server/DirectoryList;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/DirectoryList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->dirList:Lcom/samsung/upnp/media/server/DirectoryList;

    .line 751
    iput-object v2, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->createObjectListener:Ljava/lang/Object;

    .line 784
    iput-object v2, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->uploadFinishedListener:Ljava/lang/Object;

    .line 805
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->importItemNodeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 976
    iput-boolean v3, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->isDirectory:Z

    .line 977
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 1286
    iput-object v2, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->mImageThumbnailTable:Ljava/util/HashMap;

    .line 1716
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->dlnaParser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 1851
    iput-object v2, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventThread:Landroid/os/HandlerThread;

    .line 1852
    iput-object v2, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventHandler:Landroid/os/Handler;

    .line 1856
    iput v3, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateID:I

    .line 1857
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateTime:J

    .line 1858
    iput-object v2, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->varSystemUpdateID:Lcom/samsung/upnp/StateVariable;

    .line 189
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->setMediaServer(Lcom/samsung/upnp/media/server/MediaServer;)V

    .line 191
    iput v3, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->systemUpdateID:I

    .line 192
    iput v3, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->maxContentID:I

    .line 194
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->setSystemUpdateInterval(J)V

    .line 195
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->setContentUpdateInterval(J)V

    .line 197
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->initRootNode()V

    .line 198
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->initSortCaps()V

    .line 199
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->initSearchCaps()V

    .line 200
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->initFilter()V

    .line 201
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/upnp/media/server/ContentDirectory;)J
    .registers 3
    .parameter

    .prologue
    .line 1857
    iget-wide v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/samsung/upnp/media/server/ContentDirectory;)I
    .registers 2
    .parameter

    .prologue
    .line 1856
    iget v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateID:I

    return v0
.end method

.method static synthetic access$2(Lcom/samsung/upnp/media/server/ContentDirectory;)Lcom/samsung/upnp/StateVariable;
    .registers 2
    .parameter

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->varSystemUpdateID:Lcom/samsung/upnp/StateVariable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/upnp/media/server/ContentDirectory;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1856
    iput p1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateID:I

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/upnp/media/server/ContentDirectory;J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1857
    iput-wide p1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateTime:J

    return-void
.end method

.method private browseActionReceived(Lcom/samsung/upnp/media/server/action/BrowseAction;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 849
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->isMetadata()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 850
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->browseMetadataActionReceived(Lcom/samsung/upnp/media/server/action/BrowseAction;)Z

    move-result v0

    .line 854
    :goto_a
    return v0

    .line 851
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->isDirectChildren()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 852
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->browseDirectChildrenActionReceived(Lcom/samsung/upnp/media/server/action/BrowseAction;)Z

    move-result v0

    goto :goto_a

    .line 853
    :cond_16
    const/16 v0, 0x192

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setStatus(I)V

    .line 854
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private browseDirectChildrenActionReceived(Lcom/samsung/upnp/media/server/action/BrowseAction;)Z
    .registers 14
    .parameter

    .prologue
    .line 980
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getObjectID()Ljava/lang/String;

    move-result-object v0

    .line 981
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v1

    .line 982
    if-nez v1, :cond_11

    .line 983
    const/16 v0, 0x2bd

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setStatus(I)V

    .line 984
    const/4 v0, 0x0

    .line 1073
    :goto_10
    return v0

    .line 987
    :cond_11
    new-instance v2, Lcom/samsung/upnp/media/server/object/ContentNodeList;

    invoke-direct {v2}, Lcom/samsung/upnp/media/server/object/ContentNodeList;-><init>()V

    .line 988
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getNContentNodes()I

    move-result v5

    .line 989
    const/4 v0, 0x0

    :goto_1b
    if-lt v0, v5, :cond_2e

    .line 995
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getSortCriteria()Ljava/lang/String;

    move-result-object v0

    .line 996
    invoke-direct {p0, v2, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->sortContentNodeList(Lcom/samsung/upnp/media/server/object/ContentNodeList;Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNodeList;

    move-result-object v6

    .line 998
    if-nez v6, :cond_38

    .line 1000
    const/16 v0, 0x2c5

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setStatus(I)V

    .line 1001
    const/4 v0, 0x0

    goto :goto_10

    .line 990
    :cond_2e
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v3

    .line 991
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->add(Ljava/lang/Object;)Z

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1008
    :cond_38
    :try_start_38
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getStartingIndex()J

    move-result-wide v7

    .line 1011
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getRequestedCount()J

    move-result-wide v0

    .line 1012
    const-wide v2, 0x100000000L

    cmp-long v2, v7, v2

    if-gtz v2, :cond_5e

    .line 1013
    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-ltz v2, :cond_5e

    .line 1014
    const-wide v2, 0x100000000L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5e

    .line 1015
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_6d

    .line 1016
    :cond_5e
    const/16 v0, 0x192

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setStatus(I)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_63} :catch_65

    .line 1017
    const/4 v0, 0x0

    goto :goto_10

    .line 1019
    :catch_65
    move-exception v0

    .line 1020
    const/16 v0, 0x192

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setStatus(I)V

    .line 1021
    const/4 v0, 0x0

    goto :goto_10

    .line 1024
    :cond_6d
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_74

    .line 1025
    int-to-long v0, v5

    .line 1027
    :cond_74
    new-instance v9, Lcom/samsung/upnp/media/server/object/DIDLLite;

    invoke-direct {v9}, Lcom/samsung/upnp/media/server/object/DIDLLite;-><init>()V

    .line 1028
    const/4 v3, 0x0

    .line 1031
    int-to-long v10, v5

    cmp-long v2, v7, v10

    if-lez v2, :cond_ae

    move v2, v5

    .line 1036
    :goto_80
    int-to-long v7, v5

    cmp-long v4, v0, v7

    if-lez v4, :cond_86

    .line 1037
    int-to-long v0, v5

    .line 1038
    :cond_86
    const-wide/16 v7, 0x64

    cmp-long v4, v0, v7

    if-lez v4, :cond_8e

    .line 1039
    const-wide/16 v0, 0x64

    :cond_8e
    move v4, v2

    move v2, v3

    .line 1041
    :goto_90
    if-ge v4, v5, :cond_97

    int-to-long v7, v2

    cmp-long v3, v7, v0

    if-ltz v3, :cond_b0

    .line 1067
    :cond_97
    :goto_97
    invoke-virtual {v9}, Lcom/samsung/upnp/media/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1068
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setResult(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p1, v2}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setNumberReturned(I)V

    .line 1070
    invoke-virtual {p1, v5}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setTotalMaches(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSystemUpdateID()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setUpdateID(I)V

    .line 1073
    const/4 v0, 0x1

    goto/16 :goto_10

    .line 1034
    :cond_ae
    long-to-int v2, v7

    goto :goto_80

    .line 1044
    :cond_b0
    :try_start_b0
    invoke-virtual {v6, v4}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_e0

    move-result-object v3

    .line 1048
    if-nez v3, :cond_ba

    .line 1041
    :cond_b6
    :goto_b6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_90

    .line 1053
    :cond_ba
    invoke-direct {p0, v3}, Lcom/samsung/upnp/media/server/ContentDirectory;->updateResourceURL(Lcom/samsung/upnp/media/server/object/ContentNode;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v3

    .line 1056
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getFilter()Ljava/lang/String;

    move-result-object v7

    .line 1057
    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d8

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d8

    .line 1059
    iget-object v8, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->filter:Lcom/samsung/upnp/media/server/object/Filter;

    invoke-virtual {v8, v3, v7}, Lcom/samsung/upnp/media/server/object/Filter;->getContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v3

    .line 1061
    :cond_d8
    if-eqz v3, :cond_b6

    .line 1063
    invoke-virtual {v9, v3}, Lcom/samsung/upnp/media/server/object/DIDLLite;->addContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V

    .line 1064
    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    .line 1045
    :catch_e0
    move-exception v0

    goto :goto_97
.end method

.method private browseMetadataActionReceived(Lcom/samsung/upnp/media/server/action/BrowseAction;)Z
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x2bd

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 863
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getObjectID()Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/media/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v2

    .line 865
    if-nez v2, :cond_12

    .line 866
    invoke-virtual {p1, v5}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setStatus(I)V

    .line 896
    :goto_11
    return v0

    .line 870
    :cond_12
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getFilter()Ljava/lang/String;

    move-result-object v3

    .line 871
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 873
    iget-object v4, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->filter:Lcom/samsung/upnp/media/server/object/Filter;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/upnp/media/server/object/Filter;->getContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v2

    .line 875
    :cond_2c
    if-nez v2, :cond_32

    .line 876
    invoke-virtual {p1, v5}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setStatus(I)V

    goto :goto_11

    .line 880
    :cond_32
    const-string v0, "Filter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "browseMetadata "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/util/Debugs;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    new-instance v0, Lcom/samsung/upnp/media/server/object/DIDLLite;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/DIDLLite;-><init>()V

    .line 885
    invoke-virtual {v0, v2}, Lcom/samsung/upnp/media/server/object/DIDLLite;->setContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V

    .line 886
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    const-string v2, "Result"

    invoke-virtual {p1, v2, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v0, "NumberReturned"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 890
    const-string v0, "TotalMatches"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 891
    const-string v0, "UpdateID"

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSystemUpdateID()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 893
    invoke-static {}, Lcom/samsung/util/Debugs;->isOn()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 894
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->print()V

    :cond_73
    move v0, v1

    .line 896
    goto :goto_11
.end method

.method private declared-synchronized buildImageThumbnailTable()V
    .registers 14

    .prologue
    .line 1289
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->mImageThumbnailTable:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4e

    if-eqz v0, :cond_7

    .line 1321
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 1291
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->mImageThumbnailTable:Ljava/util/HashMap;

    .line 1292
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1293
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getMediaServer()Lcom/samsung/upnp/media/server/MediaServer;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/upnp/media/server/MediaServer;->androidContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1294
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1293
    invoke-static {v1, v0, v2, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnails(Landroid/content/ContentResolver;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1296
    if-eqz v0, :cond_5

    .line 1299
    const-string v1, "image_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1300
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1301
    const-string v3, "width"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1302
    const-string v4, "height"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1303
    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1305
    :goto_44
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_51

    .line 1320
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4e

    goto :goto_5

    .line 1289
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1306
    :cond_51
    :try_start_51
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1307
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1308
    sget-object v8, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v9, v7

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1309
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1310
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1311
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1313
    new-instance v11, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;-><init>(Lcom/samsung/upnp/media/server/ContentDirectory;Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;)V

    .line 1314
    iput-object v7, v11, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;->thumbUri:Landroid/net/Uri;

    .line 1315
    iput v8, v11, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;->width:I

    .line 1316
    iput v9, v11, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;->height:I

    .line 1317
    iput-object v10, v11, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;->filepath:Ljava/lang/String;

    .line 1318
    iget-object v7, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->mImageThumbnailTable:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catchall {:try_start_51 .. :try_end_83} :catchall_4e

    goto :goto_44
.end method

.method private createActionReceived(Lcom/samsung/upnp/media/server/action/CreateObjectAction;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 807
    if-nez p1, :cond_4

    .line 840
    :goto_3
    return v0

    .line 809
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->isAnyContainer()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 810
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v1

    .line 812
    :try_start_e
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->getElements()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Parser;->parse(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 813
    const-string v2, "item"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 814
    invoke-static {v1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->createImportItemNode(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/media/server/object/item/ImportItemNode;

    move-result-object v1

    .line 815
    if-nez v1, :cond_2f

    .line 816
    const/16 v1, 0x2c8

    const-string v2, "Bad Metadata"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->setStatus(ILjava/lang/String;)V
    :try_end_29
    .catch Lcom/samsung/xml/ParserException; {:try_start_e .. :try_end_29} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_29} :catch_5c

    goto :goto_3

    .line 832
    :catch_2a
    move-exception v1

    .line 833
    invoke-virtual {v1}, Lcom/samsung/xml/ParserException;->printStackTrace()V

    goto :goto_3

    .line 820
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/upnp/media/server/ContentDirectory;->findContainerNodeByUPnPClass(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v2

    .line 821
    iget-object v3, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->importItemNodeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    if-eqz v2, :cond_41

    .line 823
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->addContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V

    .line 825
    :cond_41
    new-instance v2, Lcom/samsung/upnp/media/server/object/DIDLLite;

    invoke-direct {v2}, Lcom/samsung/upnp/media/server/object/DIDLLite;-><init>()V

    .line 826
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/object/DIDLLite;->addContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V

    .line 827
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->setObjectID(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p1, v2}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->setResult(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->updateSystemUpdateID()V
    :try_end_5a
    .catch Lcom/samsung/xml/ParserException; {:try_start_2f .. :try_end_5a} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_5a} :catch_5c

    .line 831
    const/4 v0, 0x1

    goto :goto_3

    .line 834
    :catch_5c
    move-exception v1

    .line 835
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 838
    :cond_61
    const/16 v1, 0x2c9

    const-string v2, "Restricted Parent Object"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->setStatus(ILjava/lang/String;)V

    goto :goto_3
.end method

.method private declared-synchronized destroyThumbnailTable()V
    .registers 2

    .prologue
    .line 1324
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->mImageThumbnailTable:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1325
    monitor-exit p0

    return-void

    .line 1324
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFeatureList(Lcom/samsung/upnp/Action;)Z
    .registers 5
    .parameter

    .prologue
    .line 705
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 707
    const-string v1, "object.item.imageItem"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->findContainerNodeByUPnPClass(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v1

    .line 708
    if-eqz v1, :cond_16

    .line 709
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object.item.imageItem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_16
    const-string v1, "object.item.audioItem"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->findContainerNodeByUPnPClass(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v1

    .line 711
    if-eqz v1, :cond_27

    .line 712
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object.item.audioItem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_27
    const-string v1, "object.item.videoItem"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->findContainerNodeByUPnPClass(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v1

    .line 714
    if-eqz v1, :cond_38

    .line 715
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object.item.videoItem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_38
    const-string v1, "FeatureList"

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v1

    .line 718
    if-eqz v1, :cond_47

    .line 719
    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->makeFeatureList(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 722
    :cond_47
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized getNextContentID()I
    .registers 2

    .prologue
    .line 266
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->maxContentID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->maxContentID:I

    .line 267
    iget v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->maxContentID:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 266
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSearchCapabilities()Ljava/lang/String;
    .registers 7

    .prologue
    .line 457
    const-string v1, ""

    .line 458
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getNSearchCaps()I

    move-result v3

    .line 459
    iget-object v4, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->searchCapList:Lcom/samsung/upnp/media/server/object/SearchCapList;

    .line 460
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_c
    if-lt v1, v3, :cond_f

    .line 466
    return-object v0

    .line 461
    :cond_f
    if-lez v1, :cond_24

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/samsung/upnp/media/server/object/SearchCapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/SearchCap;

    invoke-interface {v0}, Lcom/samsung/upnp/media/server/object/SearchCap;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_c
.end method

.method private getSearchContentList(Lcom/samsung/upnp/media/server/object/ContentNode;Lcom/samsung/upnp/media/server/object/SearchCriteriaList;Lcom/samsung/upnp/media/server/object/SearchCapList;Lcom/samsung/upnp/media/server/object/ContentNodeList;)I
    .registers 9
    .parameter "node"
    .parameter "searchCriList"
    .parameter "searchCapList"
    .parameter "contentNodeList"

    .prologue
    .line 1375
    if-nez p1, :cond_4

    .line 1376
    const/4 v3, 0x0

    .line 1385
    :goto_3
    return v3

    .line 1378
    :cond_4
    invoke-virtual {p2, p1, p3}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->compare(Lcom/samsung/upnp/media/server/object/ContentNode;Lcom/samsung/upnp/media/server/object/SearchCapList;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1379
    invoke-virtual {p4, p1}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getNContentNodes()I

    move-result v2

    .line 1381
    .local v2, nChildNodes:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_12
    if-lt v1, v2, :cond_19

    .line 1385
    invoke-virtual {p4}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->size()I

    move-result v3

    goto :goto_3

    .line 1382
    :cond_19
    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v0

    .line 1383
    .local v0, cnode:Lcom/samsung/upnp/media/server/object/ContentNode;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSearchContentList(Lcom/samsung/upnp/media/server/object/ContentNode;Lcom/samsung/upnp/media/server/object/SearchCriteriaList;Lcom/samsung/upnp/media/server/object/SearchCapList;Lcom/samsung/upnp/media/server/object/ContentNodeList;)I

    .line 1381
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method private getSearchCriteriaList(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/SearchCriteriaList;
    .registers 9
    .parameter

    .prologue
    .line 1334
    new-instance v1, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;

    invoke-direct {v1}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;-><init>()V

    .line 1336
    if-nez p1, :cond_9

    move-object v0, v1

    .line 1370
    :goto_8
    return-object v0

    .line 1338
    :cond_9
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_35

    .line 1340
    :cond_17
    new-instance v0, Lcom/samsung/upnp/media/server/object/SearchCriteria;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;-><init>()V

    .line 1341
    const-string v2, "*"

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setProperty(Ljava/lang/String;)V

    .line 1342
    const-string v2, "exists"

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setOperation(Ljava/lang/String;)V

    .line 1343
    const-string v2, "true"

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setValue(Ljava/lang/String;)V

    .line 1344
    const-string v2, "or"

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setLogic(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 1346
    goto :goto_8

    .line 1350
    :cond_35
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, " \t\n\u000c\r()"

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :goto_3c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_42
    move-object v0, v1

    .line 1370
    goto :goto_8

    .line 1352
    :cond_44
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1353
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1355
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1356
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1358
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1359
    const-string v5, "\""

    invoke-static {v0, v5}, Lcom/samsung/util/StringUtil;->trim(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1360
    const-string v0, ""

    .line 1361
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 1362
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1363
    :cond_6e
    new-instance v6, Lcom/samsung/upnp/media/server/object/SearchCriteria;

    invoke-direct {v6}, Lcom/samsung/upnp/media/server/object/SearchCriteria;-><init>()V

    .line 1364
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setProperty(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v6, v4}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setOperation(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v6, v5}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setValue(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v6, v0}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setLogic(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v1, v6}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->add(Ljava/lang/Object;)Z

    goto :goto_3c
.end method

.method private getSortCapabilities()Ljava/lang/String;
    .registers 7

    .prologue
    .line 396
    const-string v1, ""

    .line 397
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getNSortCaps()I

    move-result v3

    .line 398
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_a
    if-lt v1, v3, :cond_d

    .line 405
    return-object v0

    .line 399
    :cond_d
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSortCap(I)Lcom/samsung/upnp/media/server/object/SortCap;

    move-result-object v2

    .line 400
    invoke-interface {v2}, Lcom/samsung/upnp/media/server/object/SortCap;->getType()Ljava/lang/String;

    move-result-object v2

    .line 401
    if-lez v1, :cond_2a

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_a
.end method

.method private getSortCriteriaArray(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/SortCriterionList;
    .registers 5
    .parameter

    .prologue
    .line 924
    new-instance v0, Lcom/samsung/upnp/media/server/object/SortCriterionList;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/SortCriterionList;-><init>()V

    .line 925
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ", "

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_13

    .line 930
    return-object v0

    .line 927
    :cond_13
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 928
    invoke-virtual {v0, v2}, Lcom/samsung/upnp/media/server/object/SortCriterionList;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method private initFilter()V
    .registers 2

    .prologue
    .line 477
    new-instance v0, Lcom/samsung/upnp/media/server/object/Filter;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/Filter;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->filter:Lcom/samsung/upnp/media/server/object/Filter;

    .line 478
    return-void
.end method

.method private initRootNode()V
    .registers 2

    .prologue
    .line 296
    new-instance v0, Lcom/samsung/upnp/media/server/object/container/RootNode;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/container/RootNode;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->rootNode:Lcom/samsung/upnp/media/server/object/container/RootNode;

    .line 297
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->rootNode:Lcom/samsung/upnp/media/server/object/container/RootNode;

    invoke-virtual {v0, p0}, Lcom/samsung/upnp/media/server/object/container/RootNode;->setContentDirectory(Lcom/samsung/upnp/media/server/ContentDirectory;)V

    .line 298
    return-void
.end method

.method private initSearchCaps()V
    .registers 2

    .prologue
    .line 443
    new-instance v0, Lcom/samsung/upnp/media/server/object/search/AllSearchCap;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/search/AllSearchCap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->addSearchCap(Lcom/samsung/upnp/media/server/object/SearchCap;)Z

    .line 444
    new-instance v0, Lcom/samsung/upnp/media/server/object/search/IdSearchCap;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/search/IdSearchCap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->addSearchCap(Lcom/samsung/upnp/media/server/object/SearchCap;)Z

    .line 445
    new-instance v0, Lcom/samsung/upnp/media/server/object/search/TitleSearchCap;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/search/TitleSearchCap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->addSearchCap(Lcom/samsung/upnp/media/server/object/SearchCap;)Z

    .line 447
    new-instance v0, Lcom/samsung/upnp/media/server/object/search/UPnPClassSearchCap;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/search/UPnPClassSearchCap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->addSearchCap(Lcom/samsung/upnp/media/server/object/SearchCap;)Z

    .line 448
    return-void
.end method

.method private initSortCaps()V
    .registers 2

    .prologue
    .line 385
    new-instance v0, Lcom/samsung/upnp/media/server/object/sort/UPnPClassSortCap;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/sort/UPnPClassSortCap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->addSortCap(Lcom/samsung/upnp/media/server/object/SortCap;)Z

    .line 386
    new-instance v0, Lcom/samsung/upnp/media/server/object/sort/DCTitleSortCap;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/sort/DCTitleSortCap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->addSortCap(Lcom/samsung/upnp/media/server/object/SortCap;)Z

    .line 387
    new-instance v0, Lcom/samsung/upnp/media/server/object/sort/DCDateSortCap;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/sort/DCDateSortCap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->addSortCap(Lcom/samsung/upnp/media/server/object/SortCap;)Z

    .line 388
    return-void
.end method

.method private makeFeatureList(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 730
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    const-string v0, "<Feature name=\"samsung.com_BASICVIEW\" version=\"1\">"

    .line 732
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 734
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_32

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Features xmlns=\"urn:schemas-upnp-org:av:avs\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"xsi:schemaLocation=\"urn:schemas-upnp-org:av:avs http://www.upnp.org/schemas/av/avs.xsd\">\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</Feature>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    :goto_31
    return-object v0

    .line 735
    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 736
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "<container id=\""

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\" type=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_12

    .line 741
    :catch_67
    move-exception v0

    .line 742
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 744
    const-string v0, ""

    goto :goto_31
.end method

.method private notifiyUploadContentFinished(Lcom/samsung/upnp/media/server/object/item/ItemNode;Z)V
    .registers 6
    .parameter "node"
    .parameter "bSuccess"

    .prologue
    .line 790
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->uploadFinishedListener:Ljava/lang/Object;

    if-eqz v1, :cond_11

    .line 792
    :try_start_4
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->uploadFinishedListener:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/upnp/media/server/ContentDirectory$IUploadFinished;

    if-eqz v1, :cond_12

    .line 793
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->uploadFinishedListener:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/upnp/media/server/ContentDirectory$IUploadFinished;

    invoke-interface {v1, p1, p2}, Lcom/samsung/upnp/media/server/ContentDirectory$IUploadFinished;->onUploadFinished(Lcom/samsung/upnp/media/server/object/item/ItemNode;Z)V

    .line 802
    :cond_11
    :goto_11
    return-void

    .line 794
    :cond_12
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->uploadFinishedListener:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/api/UploadFinished;

    if-eqz v1, :cond_11

    .line 795
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->uploadFinishedListener:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/api/UploadFinished;

    new-instance v2, Lcom/samsung/api/ContentItem;

    invoke-direct {v2, p1}, Lcom/samsung/api/ContentItem;-><init>(Lcom/samsung/xml/Node;)V

    invoke-interface {v1, v2, p2}, Lcom/samsung/api/UploadFinished;->onUploadFinished(Lcom/samsung/api/ContentItem;Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_24} :catch_2a

    goto :goto_11

    .line 796
    :catch_25
    move-exception v0

    .line 797
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 798
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2a
    move-exception v0

    .line 799
    .local v0, e:Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_11
.end method

.method private notifyCreateObjectReceived(Lcom/samsung/upnp/control/ActionRequest;)Z
    .registers 5
    .parameter "actionRequest"

    .prologue
    const/4 v2, 0x0

    .line 762
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->createObjectListener:Ljava/lang/Object;

    if-eqz v1, :cond_2f

    .line 764
    :try_start_5
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->createObjectListener:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/upnp/media/server/ContentDirectory$ICreateObjectReceived;

    if-eqz v1, :cond_14

    .line 765
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->createObjectListener:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/upnp/media/server/ContentDirectory$ICreateObjectReceived;

    invoke-interface {v1, p1}, Lcom/samsung/upnp/media/server/ContentDirectory$ICreateObjectReceived;->onCreateObjectReceived(Lcom/samsung/upnp/control/ActionRequest;)Z

    move-result v1

    .line 776
    :goto_13
    return v1

    .line 766
    :cond_14
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->createObjectListener:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/api/CreateObjectReceived;

    if-eqz v1, :cond_2f

    .line 767
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->createObjectListener:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/api/CreateObjectReceived;

    invoke-interface {v1}, Lcom/samsung/api/CreateObjectReceived;->onCreateObjectReceived()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_23
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_21} :catch_29

    move-result v1

    goto :goto_13

    .line 768
    :catch_23
    move-exception v0

    .line 769
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 770
    goto :goto_13

    .line 771
    .end local v0           #e:Ljava/lang/Exception;
    :catch_29
    move-exception v0

    .line 772
    .local v0, e:Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    move v1, v2

    .line 773
    goto :goto_13

    .end local v0           #e:Ljava/lang/Error;
    :cond_2f
    move v1, v2

    .line 776
    goto :goto_13
.end method

.method private searchActionReceived(Lcom/samsung/upnp/media/server/action/SearchAction;)Z
    .registers 18
    .parameter

    .prologue
    .line 1391
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/upnp/media/server/action/SearchAction;->getContainerID()Ljava/lang/String;

    move-result-object v1

    .line 1392
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v3

    .line 1393
    if-nez v3, :cond_17

    .line 1394
    const/16 v1, 0x192

    const-string v2, "No such container"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/media/server/action/SearchAction;->setStatus(ILjava/lang/String;)V

    .line 1395
    const/4 v1, 0x0

    .line 1599
    :goto_16
    return v1

    .line 1398
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/upnp/media/server/action/SearchAction;->getSearchCriteria()Ljava/lang/String;

    move-result-object v1

    .line 1399
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSearchCriteriaList(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/SearchCriteriaList;

    move-result-object v4

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSearchCapList()Lcom/samsung/upnp/media/server/object/SearchCapList;

    move-result-object v5

    .line 1402
    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->size()I

    move-result v1

    if-nez v1, :cond_36

    .line 1405
    const/16 v1, 0x2c4

    const-string v2, "invalid search criteria"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/media/server/action/SearchAction;->setStatus(ILjava/lang/String;)V

    .line 1406
    const/4 v1, 0x0

    goto :goto_16

    .line 1410
    :cond_36
    const/4 v1, 0x0

    move v2, v1

    :goto_38
    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->size()I

    move-result v1

    if-lt v2, v1, :cond_65

    .line 1419
    new-instance v2, Lcom/samsung/upnp/media/server/object/ContentNodeList;

    invoke-direct {v2}, Lcom/samsung/upnp/media/server/object/ContentNodeList;-><init>()V

    .line 1420
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/object/ContentNode;->getNContentNodes()I

    move-result v6

    .line 1421
    const/4 v1, 0x0

    :goto_48
    if-lt v1, v6, :cond_84

    .line 1426
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->size()I

    move-result v9

    .line 1429
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/upnp/media/server/action/SearchAction;->getSortCriteria()Ljava/lang/String;

    move-result-object v1

    .line 1430
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->sortContentNodeList(Lcom/samsung/upnp/media/server/object/ContentNodeList;Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNodeList;

    move-result-object v12

    .line 1431
    if-nez v12, :cond_92

    .line 1433
    const/16 v1, 0x2c5

    const-string v2, "invalid sort criteria"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/media/server/action/SearchAction;->setStatus(ILjava/lang/String;)V

    .line 1434
    const/4 v1, 0x0

    goto :goto_16

    .line 1411
    :cond_65
    invoke-virtual {v4, v2}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/media/server/object/SearchCriteria;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getProperty()Ljava/lang/String;

    move-result-object v1

    .line 1412
    invoke-virtual {v5, v1}, Lcom/samsung/upnp/media/server/object/SearchCapList;->getSearchCap(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/SearchCap;

    move-result-object v1

    if-nez v1, :cond_80

    .line 1414
    const/16 v1, 0x2c4

    const-string v2, "invalid search criteria"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/media/server/action/SearchAction;->setStatus(ILjava/lang/String;)V

    .line 1415
    const/4 v1, 0x0

    goto :goto_16

    .line 1410
    :cond_80
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_38

    .line 1422
    :cond_84
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v7

    .line 1423
    if-eqz v7, :cond_8f

    .line 1424
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v5, v2}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSearchContentList(Lcom/samsung/upnp/media/server/object/ContentNode;Lcom/samsung/upnp/media/server/object/SearchCriteriaList;Lcom/samsung/upnp/media/server/object/SearchCapList;Lcom/samsung/upnp/media/server/object/ContentNodeList;)I

    .line 1421
    :cond_8f
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 1441
    :cond_92
    :try_start_92
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/upnp/media/server/action/SearchAction;->getStartingIndex()I

    move-result v2

    .line 1442
    if-gtz v2, :cond_99

    .line 1443
    const/4 v2, 0x0

    .line 1444
    :cond_99
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/upnp/media/server/action/SearchAction;->getRequestedCount()I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9c} :catch_ca

    move-result v1

    .line 1445
    if-nez v1, :cond_2e4

    move v8, v9

    .line 1452
    :goto_a0
    new-instance v13, Lcom/samsung/upnp/media/server/object/DIDLLite;

    invoke-direct {v13}, Lcom/samsung/upnp/media/server/object/DIDLLite;-><init>()V

    .line 1453
    const/4 v10, 0x0

    move v11, v2

    .line 1454
    :goto_a7
    if-ge v11, v9, :cond_ab

    if-lt v10, v8, :cond_d5

    .line 1593
    :cond_ab
    invoke-virtual {v13}, Lcom/samsung/upnp/media/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1594
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/action/SearchAction;->setResult(Ljava/lang/String;)V

    .line 1595
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/samsung/upnp/media/server/action/SearchAction;->setNumberReturned(I)V

    .line 1596
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/samsung/upnp/media/server/action/SearchAction;->setTotalMaches(I)V

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSystemUpdateID()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/action/SearchAction;->setUpdateID(I)V

    .line 1599
    const/4 v1, 0x1

    goto/16 :goto_16

    .line 1447
    :catch_ca
    move-exception v1

    .line 1448
    const/16 v1, 0x192

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/action/SearchAction;->setStatus(I)V

    .line 1449
    const/4 v1, 0x0

    goto/16 :goto_16

    .line 1455
    :cond_d5
    invoke-virtual {v12, v11}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v7

    .line 1456
    if-nez v7, :cond_e1

    move v1, v10

    .line 1454
    :goto_dc
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v10, v1

    goto :goto_a7

    .line 1461
    :cond_e1
    invoke-virtual {v7}, Lcom/samsung/upnp/media/server/object/ContentNode;->isItemNode()Z

    move-result v1

    if-eqz v1, :cond_1a8

    move-object v1, v7

    .line 1462
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v7}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->updateResourceUri(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v7}, Lcom/samsung/upnp/media/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object.item.imageItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_162

    move-object v1, v7

    .line 1465
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getDefaultResource()Lcom/samsung/upnp/media/server/object/ResourceProperty;

    move-result-object v1

    .line 1466
    if-eqz v1, :cond_162

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->get4thfield()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 1467
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1468
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1469
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 1470
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1471
    if-eqz v4, :cond_162

    .line 1472
    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1475
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v5

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v15, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    invoke-virtual {v5, v3, v6, v14, v15}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    .line 1476
    invoke-virtual {v1, v3}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->updateProtocol(Ljava/lang/String;)V

    .line 1478
    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1479
    const-string v3, "resolution"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    :try_start_15f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_162} :catch_2d5

    .line 1489
    :cond_162
    :goto_162
    invoke-virtual {v7}, Lcom/samsung/upnp/media/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object.item.audioItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    move-object v1, v7

    .line 1493
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getAudioAlbum_id()Ljava/lang/String;

    move-result-object v4

    .line 1495
    if-eqz v4, :cond_1a8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a8

    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getMediaServer()Lcom/samsung/upnp/media/server/MediaServer;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/upnp/media/server/MediaServer;->androidContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1497
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1496
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1498
    :cond_19f
    :goto_19f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_27a

    .line 1510
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1516
    :cond_1a8
    invoke-virtual {v7}, Lcom/samsung/upnp/media/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object.item.videoItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_259

    move-object v1, v7

    .line 1518
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    iget v1, v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;->videoDB_id:I

    .line 1520
    const/4 v2, -0x1

    if-le v1, v2, :cond_259

    .line 1523
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1524
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1526
    const/4 v3, 0x0

    .line 1527
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/upnp/media/server/ContentDirectory;->isDirectory:Z

    if-nez v2, :cond_1da

    .line 1528
    new-instance v2, Ljava/io/File;

    const-string v4, "/sdcard/android/data/com.sec.android.app.dlna/thumbs"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/upnp/media/server/ContentDirectory;->isDirectory:Z

    .line 1530
    :cond_1da
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "/sdcard/android/data/com.sec.android.app.dlna/thumbs/"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".thumb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1539
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1540
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getMediaServer()Lcom/samsung/upnp/media/server/MediaServer;

    move-result-object v1

    iget-object v5, v1, Lcom/samsung/upnp/media/server/MediaServer;->androidContext:Landroid/content/Context;

    move-object v1, v7

    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getDataPath()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1541
    const-wide/32 v5, 0x8f0d180

    invoke-virtual {v2, v5, v6}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1542
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1544
    if-eqz v1, :cond_259

    .line 1546
    :try_start_215
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_21a
    .catch Ljava/io/FileNotFoundException; {:try_start_215 .. :try_end_21a} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_21a} :catch_2da

    .line 1547
    :try_start_21a
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0xa

    invoke-virtual {v1, v3, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1548
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1549
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1551
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1552
    invoke-virtual {v7}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentAlbumArtExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/upnp/media/server/ContentDirectory;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 1554
    const-string v5, "image/jpeg"

    .line 1555
    const/4 v6, 0x0

    .line 1556
    const/4 v14, 0x0

    .line 1557
    sget v15, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    .line 1553
    invoke-virtual {v4, v5, v6, v14, v15}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    .line 1558
    new-instance v5, Lcom/samsung/upnp/media/server/object/item/sat/DOAAlbumartProperty;

    invoke-direct {v5, v3, v4, v1}, Lcom/samsung/upnp/media/server/object/item/sat/DOAAlbumartProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    move-object v0, v7

    check-cast v0, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    .line 1561
    const-string v1, "upnp:albumArtURI"

    invoke-virtual {v7, v1, v3}, Lcom/samsung/upnp/media/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_254
    .catch Ljava/io/FileNotFoundException; {:try_start_21a .. :try_end_254} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_254} :catch_2de

    .line 1566
    :goto_254
    if-eqz v2, :cond_259

    .line 1567
    :try_start_256
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_259
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_259} :catch_2d8

    .line 1575
    :cond_259
    :goto_259
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/upnp/media/server/action/SearchAction;->getFilter()Ljava/lang/String;

    move-result-object v1

    .line 1576
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ba

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ba

    .line 1578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/upnp/media/server/ContentDirectory;->filter:Lcom/samsung/upnp/media/server/object/Filter;

    invoke-virtual {v2, v7, v1}, Lcom/samsung/upnp/media/server/object/Filter;->getContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v7

    .line 1579
    if-nez v7, :cond_2ba

    move v1, v10

    .line 1580
    goto/16 :goto_dc

    .line 1499
    :cond_27a
    const-string v1, "album_art"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1500
    if-eqz v1, :cond_19f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_19f

    .line 1502
    invoke-virtual {v7}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentAlbumArtExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1503
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v4

    const-string v5, "image/jpeg"

    const/4 v6, 0x0

    const/4 v14, 0x0

    sget v15, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    invoke-virtual {v4, v5, v6, v14, v15}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    .line 1504
    new-instance v5, Lcom/samsung/upnp/media/server/object/item/sat/DOAAlbumartProperty;

    invoke-direct {v5, v3, v4, v1}, Lcom/samsung/upnp/media/server/object/item/sat/DOAAlbumartProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1505
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v1, v5}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    .line 1507
    const-string v1, "upnp:albumArtURI"

    invoke-virtual {v7, v1, v3}, Lcom/samsung/upnp/media/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19f

    .line 1562
    :catch_2b6
    move-exception v1

    move-object v1, v3

    :goto_2b8
    move-object v2, v1

    goto :goto_254

    .line 1583
    :cond_2ba
    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "search "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/util/Debugs;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v13, v7}, Lcom/samsung/upnp/media/server/object/DIDLLite;->addContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V

    .line 1585
    add-int/lit8 v1, v10, 0x1

    goto/16 :goto_dc

    .line 1482
    :catch_2d5
    move-exception v1

    goto/16 :goto_162

    .line 1568
    :catch_2d8
    move-exception v1

    goto :goto_259

    .line 1563
    :catch_2da
    move-exception v1

    move-object v2, v3

    goto/16 :goto_254

    :catch_2de
    move-exception v1

    goto/16 :goto_254

    .line 1562
    :catch_2e1
    move-exception v1

    move-object v1, v2

    goto :goto_2b8

    :cond_2e4
    move v8, v1

    goto/16 :goto_a0
.end method

.method private setMediaServer(Lcom/samsung/upnp/media/server/MediaServer;)V
    .registers 2
    .parameter "mserver"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->mediaServer:Lcom/samsung/upnp/media/server/MediaServer;

    .line 212
    return-void
.end method

.method private sortContentNodeList(Lcom/samsung/upnp/media/server/object/ContentNodeList;Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNodeList;
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v12, 0x2d

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 935
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_e

    .line 970
    :cond_d
    :goto_d
    return-object p1

    .line 938
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->size()I

    move-result v5

    .line 939
    new-array v6, v5, [Lcom/samsung/upnp/media/server/object/ContentNode;

    move v2, v1

    .line 940
    :goto_15
    if-lt v2, v5, :cond_32

    .line 943
    invoke-direct {p0, p2}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSortCriteriaArray(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/SortCriterionList;

    move-result-object v7

    .line 944
    invoke-virtual {v7}, Lcom/samsung/upnp/media/server/object/SortCriterionList;->size()I

    move-result v8

    move v4, v1

    .line 945
    :goto_20
    if-lt v4, v8, :cond_3b

    .line 967
    new-instance p1, Lcom/samsung/upnp/media/server/object/ContentNodeList;

    invoke-direct {p1}, Lcom/samsung/upnp/media/server/object/ContentNodeList;-><init>()V

    move v0, v1

    .line 968
    :goto_28
    if-ge v0, v5, :cond_d

    .line 969
    aget-object v1, v6, v0

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->add(Ljava/lang/Object;)Z

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 941
    :cond_32
    invoke-virtual {p1, v2}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v4

    aput-object v4, v6, v2

    .line 940
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 946
    :cond_3b
    invoke-virtual {v7, v4}, Lcom/samsung/upnp/media/server/object/SortCriterionList;->getSortCriterion(I)Ljava/lang/String;

    move-result-object v9

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "] = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/util/Debugs;->info(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 950
    if-ne v10, v12, :cond_a6

    move v2, v1

    .line 952
    :goto_62
    const/16 v11, 0x2b

    if-eq v10, v11, :cond_68

    if-ne v10, v12, :cond_74

    .line 953
    :cond_68
    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 959
    invoke-virtual {p0, v9}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSortCap(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/SortCap;

    move-result-object v9

    .line 960
    if-nez v9, :cond_76

    move-object p1, v0

    .line 961
    goto :goto_d

    :cond_74
    move-object p1, v0

    .line 957
    goto :goto_d

    .line 962
    :cond_76
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  ascSeq = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/util/Debugs;->info(Ljava/lang/String;)V

    .line 963
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  sortCap = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/samsung/upnp/media/server/object/SortCap;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/util/Debugs;->info(Ljava/lang/String;)V

    .line 964
    invoke-direct {p0, v6, v9, v2}, Lcom/samsung/upnp/media/server/ContentDirectory;->sortContentNodeList([Lcom/samsung/upnp/media/server/object/ContentNode;Lcom/samsung/upnp/media/server/object/SortCap;Z)V

    .line 945
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_20

    :cond_a6
    move v2, v3

    goto :goto_62
.end method

.method private sortContentNodeList([Lcom/samsung/upnp/media/server/object/ContentNode;Lcom/samsung/upnp/media/server/object/SortCap;Z)V
    .registers 12
    .parameter "conNode"
    .parameter "sortCap"
    .parameter "ascSeq"

    .prologue
    .line 906
    array-length v4, p1

    .line 907
    .local v4, nConNode:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    add-int/lit8 v6, v4, -0x1

    if-lt v2, v6, :cond_7

    .line 920
    return-void

    .line 908
    :cond_7
    move v5, v2

    .line 909
    .local v5, selIdx:I
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_a
    if-lt v3, v4, :cond_17

    .line 916
    aget-object v1, p1, v2

    .line 917
    .local v1, conTmp:Lcom/samsung/upnp/media/server/object/ContentNode;
    aget-object v6, p1, v5

    aput-object v6, p1, v2

    .line 918
    aput-object v1, p1, v5

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 910
    .end local v1           #conTmp:Lcom/samsung/upnp/media/server/object/ContentNode;
    :cond_17
    aget-object v6, p1, v5

    aget-object v7, p1, v3

    invoke-interface {p2, v6, v7}, Lcom/samsung/upnp/media/server/object/SortCap;->compare(Lcom/samsung/upnp/media/server/object/ContentNode;Lcom/samsung/upnp/media/server/object/ContentNode;)I

    move-result v0

    .line 911
    .local v0, cmpRet:I
    if-eqz p3, :cond_24

    if-gez v0, :cond_24

    .line 912
    move v5, v3

    .line 913
    :cond_24
    if-nez p3, :cond_29

    if-lez v0, :cond_29

    .line 914
    move v5, v3

    .line 909
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_a
.end method

.method private updateResourceURL(Lcom/samsung/upnp/media/server/object/ContentNode;)Lcom/samsung/upnp/media/server/object/ContentNode;
    .registers 15
    .parameter

    .prologue
    .line 1077
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->isItemNode()Z

    move-result v1

    if-eqz v1, :cond_190

    move-object v1, p1

    .line 1078
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->updateResourceUri(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object.item.imageItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14a

    move-object v1, p1

    .line 1082
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getDefaultResource()Lcom/samsung/upnp/media/server/object/ResourceProperty;

    move-result-object v2

    .line 1083
    if-eqz v2, :cond_14a

    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->get4thfield()Ljava/lang/String;

    move-result-object v1

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14a

    move-object v1, p1

    .line 1100
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    iget v1, v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;->imageDB_id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1101
    iget-object v3, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->mImageThumbnailTable:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;

    .line 1102
    if-eqz v1, :cond_bd

    .line 1103
    iget-object v3, v1, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;->thumbUri:Landroid/net/Uri;

    .line 1104
    iget v4, v1, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;->width:I

    .line 1105
    iget v5, v1, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;->height:I

    .line 1106
    iget-object v1, v1, Lcom/samsung/upnp/media/server/ContentDirectory$ImageThumbnailInfo;->filepath:Ljava/lang/String;

    .line 1109
    :try_start_50
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1110
    if-eqz v6, :cond_260

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_260

    .line 1112
    new-instance v1, Lcom/samsung/xml/AttributeList;

    invoke-direct {v1}, Lcom/samsung/xml/AttributeList;-><init>()V

    .line 1113
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentSmallThumbnailExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1114
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v8

    const-string v9, "image/jpeg"

    .line 1115
    sget v10, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_SMALL:I

    .line 1114
    invoke-virtual {v8, v9, v4, v5, v10}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v8

    .line 1116
    new-instance v9, Lcom/samsung/xml/Attribute;

    const-string v10, "size"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v10, v6}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v1, v9}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 1119
    new-instance v6, Lcom/samsung/xml/Attribute;

    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "x"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v9, v4}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v1, v6}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 1122
    new-instance v4, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;

    invoke-direct {v4, v7, v8, v1, v3}, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;Landroid/net/Uri;)V

    .line 1123
    move-object v0, p1

    check-cast v0, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    move-object v1, v0

    invoke-virtual {v1, v4}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_bd} :catch_269

    .line 1147
    :cond_bd
    :goto_bd
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1148
    const/4 v1, 0x1

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1149
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1151
    if-eqz v4, :cond_14a

    .line 1152
    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1155
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v5

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v8, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 1156
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->updateProtocol(Ljava/lang/String;)V

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1159
    const-string v5, "resolution"

    invoke-virtual {v2, v5, v1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v2, 0x78

    if-lt v1, v2, :cond_110

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0x78

    if-ge v1, v2, :cond_147

    :cond_110
    move-object v1, p1

    .line 1162
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getThumbnailResource()Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;

    move-result-object v1

    .line 1163
    if-eqz v1, :cond_147

    .line 1164
    const-string v2, "resolution"

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v2

    .line 1165
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->removeAttribute(Lcom/samsung/xml/Attribute;)Z

    .line 1167
    new-instance v2, Lcom/samsung/xml/Attribute;

    const-string v5, "resolution"

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 1173
    :cond_147
    :try_start_147
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_2c1

    .line 1181
    :cond_14a
    :goto_14a
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object.item.audioItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_190

    move-object v1, p1

    .line 1183
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getAudioAlbum_id()Ljava/lang/String;

    move-result-object v4

    .line 1185
    if-eqz v4, :cond_190

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_190

    .line 1186
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getMediaServer()Lcom/samsung/upnp/media/server/MediaServer;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/upnp/media/server/MediaServer;->androidContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1187
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1186
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1188
    :cond_187
    :goto_187
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_276

    .line 1201
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1206
    :cond_190
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object.item.videoItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25f

    .line 1207
    const-string v1, "upnp:albumArtURI"

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v1

    if-nez v1, :cond_25f

    move-object v1, p1

    .line 1208
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    iget v1, v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;->videoDB_id:I

    .line 1210
    const/4 v2, -0x1

    if-le v1, v2, :cond_25f

    .line 1211
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1212
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1214
    const/4 v3, 0x0

    .line 1215
    iget-boolean v2, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->isDirectory:Z

    if-nez v2, :cond_1c6

    .line 1216
    new-instance v2, Ljava/io/File;

    const-string v4, "/sdcard/android/data/com.sec.android.app.dlna/thumbs"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->isDirectory:Z

    .line 1218
    :cond_1c6
    new-instance v5, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/android/data/com.sec.android.app.dlna/thumbs/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".thumb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1227
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1228
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getMediaServer()Lcom/samsung/upnp/media/server/MediaServer;

    move-result-object v1

    iget-object v4, v1, Lcom/samsung/upnp/media/server/MediaServer;->androidContext:Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getDataPath()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1229
    const-wide/32 v6, 0xe4e1c0

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1230
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1231
    if-eqz v6, :cond_25f

    .line 1234
    :try_start_201
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1235
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1236
    const/16 v4, 0x80

    if-gt v2, v4, :cond_210

    const/4 v4, 0x1

    if-ge v2, v4, :cond_2ce

    .line 1237
    :cond_210
    const/16 v2, 0x80

    move v4, v2

    .line 1239
    :goto_213
    const/16 v2, 0x80

    if-gt v1, v2, :cond_21a

    const/4 v2, 0x1

    if-ge v1, v2, :cond_21c

    .line 1240
    :cond_21a
    const/16 v1, 0x80

    .line 1242
    :cond_21c
    const/4 v2, 0x0

    invoke-static {v6, v4, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1243
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_226
    .catch Ljava/io/FileNotFoundException; {:try_start_201 .. :try_end_226} :catch_2bd
    .catch Ljava/io/IOException; {:try_start_201 .. :try_end_226} :catch_2c6

    .line 1245
    :try_start_226
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0xa

    invoke-virtual {v6, v3, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1246
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1247
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1249
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1250
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentAlbumArtExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1252
    iget-object v6, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 1253
    const-string v7, "image/jpeg"

    .line 1256
    sget v8, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_MICRO:I

    .line 1252
    invoke-virtual {v6, v7, v4, v1, v8}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 1258
    new-instance v4, Lcom/samsung/upnp/media/server/object/item/sat/VideoAlbumartProperty;

    invoke-direct {v4, v5, v1, v3}, Lcom/samsung/upnp/media/server/object/item/sat/VideoAlbumartProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    move-object v0, p1

    check-cast v0, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    move-object v1, v0

    invoke-virtual {v1, v4}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    .line 1262
    const-string v1, "upnp:albumArtURI"

    invoke-virtual {p1, v1, v5}, Lcom/samsung/upnp/media/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25a
    .catch Ljava/io/FileNotFoundException; {:try_start_226 .. :try_end_25a} :catch_2cb
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_25a} :catch_2c9

    .line 1268
    :goto_25a
    if-eqz v2, :cond_25f

    .line 1269
    :try_start_25c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_25c .. :try_end_25f} :catch_2c4

    .line 1275
    :cond_25f
    :goto_25f
    return-object p1

    .line 1127
    :cond_260
    :try_start_260
    const-string v1, "DLNA"

    const-string v3, "No thumb file!!!!"

    invoke-static {v1, v3}, Lcom/samsung/util/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_267
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_267} :catch_269

    goto/16 :goto_bd

    .line 1134
    :catch_269
    move-exception v1

    .line 1135
    const-string v3, "DLNA"

    const-string v4, "No thumb file!!!!"

    invoke-static {v3, v4}, Lcom/samsung/util/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_bd

    .line 1189
    :cond_276
    const-string v1, "album_art"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1190
    if-eqz v1, :cond_187

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_187

    .line 1192
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentAlbumArtExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1193
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v4

    const-string v5, "image/jpeg"

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    .line 1194
    new-instance v5, Lcom/samsung/upnp/media/server/object/item/sat/DOAAlbumartProperty;

    invoke-direct {v5, v3, v4, v1}, Lcom/samsung/upnp/media/server/object/item/sat/DOAAlbumartProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    .line 1195
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v1, v5}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    .line 1197
    const-string v1, "upnp:albumArtURI"

    invoke-virtual {p1, v1, v3}, Lcom/samsung/upnp/media/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v1, "upnp:albumArtURI"

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v1

    const-string v3, "dlna:profileID"

    const-string v4, "JPEG_TN"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_187

    .line 1264
    :catch_2bd
    move-exception v1

    move-object v1, v3

    :goto_2bf
    move-object v2, v1

    goto :goto_25a

    .line 1174
    :catch_2c1
    move-exception v1

    goto/16 :goto_14a

    .line 1270
    :catch_2c4
    move-exception v1

    goto :goto_25f

    .line 1265
    :catch_2c6
    move-exception v1

    move-object v2, v3

    goto :goto_25a

    :catch_2c9
    move-exception v1

    goto :goto_25a

    .line 1264
    :catch_2cb
    move-exception v1

    move-object v1, v2

    goto :goto_2bf

    :cond_2ce
    move v4, v2

    goto/16 :goto_213
.end method


# virtual methods
.method public actionControlReceived(Lcom/samsung/upnp/Action;)Z
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x192

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 590
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 592
    const-string v3, "Browse"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 593
    new-instance v0, Lcom/samsung/upnp/media/server/action/BrowseAction;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;-><init>(Lcom/samsung/upnp/Action;)V

    .line 594
    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->browseActionReceived(Lcom/samsung/upnp/media/server/action/BrowseAction;)Z

    move-result v0

    .line 699
    :goto_19
    return v0

    .line 597
    :cond_1a
    const-string v3, "Search"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 598
    new-instance v0, Lcom/samsung/upnp/media/server/action/SearchAction;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/media/server/action/SearchAction;-><init>(Lcom/samsung/upnp/Action;)V

    .line 599
    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->searchActionReceived(Lcom/samsung/upnp/media/server/action/SearchAction;)Z

    move-result v0

    goto :goto_19

    .line 603
    :cond_2c
    const-string v3, "GetSearchCapabilities"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 605
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getActionRequest()Lcom/samsung/upnp/control/ActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/control/ActionRequest;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v0

    .line 606
    invoke-virtual {v0}, Lcom/samsung/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_57

    .line 616
    const-string v0, "SearchCaps"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 617
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSearchCapabilities()Ljava/lang/String;

    move-result-object v1

    .line 618
    if-eqz v0, :cond_55

    .line 619
    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    :cond_55
    move v0, v2

    .line 620
    goto :goto_19

    .line 606
    :cond_57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Argument;

    .line 609
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 610
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SearchCaps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 611
    :cond_6f
    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Action;->setStatus(I)V

    move v0, v1

    .line 612
    goto :goto_19

    .line 624
    :cond_74
    const-string v3, "GetSortCapabilities"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 626
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getActionRequest()Lcom/samsung/upnp/control/ActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/control/ActionRequest;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Lcom/samsung/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_88
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 637
    const-string v0, "SortCaps"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 638
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSortCapabilities()Ljava/lang/String;

    move-result-object v1

    .line 639
    if-eqz v0, :cond_9d

    .line 640
    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    :cond_9d
    move v0, v2

    .line 641
    goto/16 :goto_19

    .line 627
    :cond_a0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Argument;

    .line 630
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b8

    .line 631
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SortCaps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 632
    :cond_b8
    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Action;->setStatus(I)V

    move v0, v1

    .line 633
    goto/16 :goto_19

    .line 644
    :cond_be
    const-string v3, "GetSystemUpdateID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 646
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getActionRequest()Lcom/samsung/upnp/control/ActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/control/ActionRequest;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcom/samsung/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 656
    const-string v0, "Id"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_e7

    .line 658
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSystemUpdateID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(I)V

    :cond_e7
    move v0, v2

    .line 659
    goto/16 :goto_19

    .line 647
    :cond_ea
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Argument;

    .line 650
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_102

    .line 651
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 652
    :cond_102
    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Action;->setStatus(I)V

    move v0, v1

    .line 653
    goto/16 :goto_19

    .line 662
    :cond_108
    const-string v3, "CreateObject"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 663
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getActionRequest()Lcom/samsung/upnp/control/ActionRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->notifyCreateObjectReceived(Lcom/samsung/upnp/control/ActionRequest;)Z

    move-result v0

    if-nez v0, :cond_11d

    move v0, v1

    .line 664
    goto/16 :goto_19

    .line 666
    :cond_11d
    new-instance v0, Lcom/samsung/upnp/media/server/action/CreateObjectAction;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;-><init>(Lcom/samsung/upnp/Action;)V

    .line 667
    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->createActionReceived(Lcom/samsung/upnp/media/server/action/CreateObjectAction;)Z

    move-result v0

    goto/16 :goto_19

    .line 671
    :cond_128
    const-string v3, "DestroyObject"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    .line 672
    const-string v0, "ObjectID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v0

    .line 674
    if-nez v0, :cond_146

    .line 675
    const/16 v0, 0x2bd

    const-string v2, "No such object"

    invoke-virtual {p1, v0, v2}, Lcom/samsung/upnp/Action;->setStatus(ILjava/lang/String;)V

    move v0, v1

    .line 676
    goto/16 :goto_19

    .line 678
    :cond_146
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getRestricted()I

    move-result v3

    if-eqz v3, :cond_156

    .line 679
    const/16 v0, 0x2c7

    const-string v2, "Restricted object"

    invoke-virtual {p1, v0, v2}, Lcom/samsung/upnp/Action;->setStatus(ILjava/lang/String;)V

    move v0, v1

    .line 680
    goto/16 :goto_19

    .line 683
    :cond_156
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->importItemNodeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 685
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getParentNode()Lcom/samsung/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/xml/Node;->removeNode(Lcom/samsung/xml/Node;)Z

    .line 686
    instance-of v1, v0, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    if-eqz v1, :cond_171

    .line 687
    check-cast v0, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getDefaultResource()Lcom/samsung/upnp/media/server/object/ResourceProperty;

    move-result-object v0

    .line 688
    if-eqz v0, :cond_171

    .line 689
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->deleteContent()V

    :cond_171
    move v0, v2

    .line 691
    goto/16 :goto_19

    .line 694
    :cond_174
    const-string v2, "X_GetFeatureList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 695
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/ContentDirectory;->getFeatureList(Lcom/samsung/upnp/Action;)Z

    move-result v0

    goto/16 :goto_19

    :cond_182
    move v0, v1

    .line 699
    goto/16 :goto_19
.end method

.method public addDirectory(Lcom/samsung/upnp/media/server/Directory;)Z
    .registers 3
    .parameter "dir"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->dirList:Lcom/samsung/upnp/media/server/DirectoryList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/DirectoryList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 495
    const/4 v0, 0x0

    .line 505
    :goto_9
    return v0

    .line 497
    :cond_a
    invoke-virtual {p1, p0}, Lcom/samsung/upnp/media/server/Directory;->setContentDirectory(Lcom/samsung/upnp/media/server/ContentDirectory;)V

    .line 498
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->dirList:Lcom/samsung/upnp/media/server/DirectoryList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/DirectoryList;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->rootNode:Lcom/samsung/upnp/media/server/object/container/RootNode;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/container/RootNode;->addContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V

    .line 500
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/Directory;->update()V

    .line 503
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->updateSystemUpdateID()V

    .line 505
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public addPlugIn(Lcom/samsung/upnp/media/server/object/Format;)Z
    .registers 3
    .parameter "format"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->formatList:Lcom/samsung/upnp/media/server/object/FormatList;

    if-nez v0, :cond_6

    .line 328
    const/4 v0, 0x0

    .line 332
    :goto_5
    return v0

    .line 330
    :cond_6
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->formatList:Lcom/samsung/upnp/media/server/object/FormatList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/FormatList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 331
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->formatList:Lcom/samsung/upnp/media/server/object/FormatList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/FormatList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_13
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public addSearchCap(Lcom/samsung/upnp/media/server/object/SearchCap;)Z
    .registers 3
    .parameter "searchCap"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->searchCapList:Lcom/samsung/upnp/media/server/object/SearchCapList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/SearchCapList;->add(Ljava/lang/Object;)Z

    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public addSortCap(Lcom/samsung/upnp/media/server/object/SortCap;)Z
    .registers 3
    .parameter "sortCap"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->sortCapList:Lcom/samsung/upnp/media/server/object/SortCapList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/SortCapList;->add(Ljava/lang/Object;)Z

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public contentExportRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 7
    .parameter

    .prologue
    .line 1719
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    .line 1721
    const-string v0, "getCaptionInfo.sec"

    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    .line 1722
    if-nez v0, :cond_21

    .line 1724
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v0

    .line 1725
    if-eqz v0, :cond_21

    .line 1726
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1727
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    .line 1778
    :cond_20
    :goto_20
    return-void

    .line 1733
    :cond_21
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getParameterList()Lcom/samsung/http/ParameterList;

    move-result-object v1

    .line 1734
    const/4 v0, 0x0

    :goto_26
    invoke-virtual {v1}, Lcom/samsung/http/ParameterList;->size()I

    move-result v2

    if-lt v0, v2, :cond_4f

    .line 1743
    const-string v0, "id"

    invoke-virtual {v1, v0}, Lcom/samsung/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1744
    if-eqz v0, :cond_45

    .line 1745
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1747
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1754
    :cond_45
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v0

    .line 1755
    if-nez v0, :cond_7a

    .line 1756
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_20

    .line 1735
    :cond_4f
    invoke-virtual {v1, v0}, Lcom/samsung/http/ParameterList;->getParameter(I)Lcom/samsung/http/Parameter;

    move-result-object v2

    .line 1736
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/http/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/http/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/util/Debugs;->info(Ljava/lang/String;)V

    .line 1734
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1759
    :cond_7a
    instance-of v1, v0, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    if-nez v1, :cond_82

    .line 1760
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_20

    .line 1768
    :cond_82
    check-cast v0, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    .line 1769
    invoke-static {p1, v0}, Lcom/samsung/upnp/media/server/CDSResponseBuilder;->buildResponse(Lcom/samsung/http/HTTPRequest;Lcom/samsung/upnp/media/server/object/item/ItemNode;)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    .line 1770
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    move-result v0

    .line 1771
    if-nez v0, :cond_20

    .line 1772
    const-string v0, "HTTPSocket"

    const-string v1, "CDS : Socket close"

    invoke-static {v0, v1}, Lcom/samsung/util/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getSocket()Lcom/samsung/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/http/HTTPSocket;->close()Z

    goto :goto_20
.end method

.method public contentImportProgressRecieved(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 1699
    const-string v0, "id="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1700
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1702
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_32

    .line 1703
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, "&"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    :goto_1b
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1708
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1709
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->importItemNodeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1714
    :cond_31
    return-void

    .line 1705
    :cond_32
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 1709
    :cond_38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;

    .line 1710
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1711
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->rebirth()V

    goto :goto_2b
.end method

.method public contentImportRequestRecieved(Lcom/samsung/http/HTTPRequest;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1642
    if-nez p1, :cond_6

    move v0, v1

    .line 1695
    :goto_5
    return v0

    .line 1645
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getParameterList()Lcom/samsung/http/ParameterList;

    move-result-object v0

    .line 1647
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/samsung/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1650
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->importItemNodeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_36

    move-object v2, v3

    .line 1660
    :goto_1d
    if-nez v2, :cond_4a

    .line 1661
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->hasFileContent()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1662
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getFileContent()Ljava/io/File;

    move-result-object v0

    .line 1663
    if-eqz v0, :cond_2e

    .line 1664
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1667
    :cond_2e
    invoke-direct {p0, v3, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->notifiyUploadContentFinished(Lcom/samsung/upnp/media/server/object/item/ItemNode;Z)V

    .line 1668
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    move-result v0

    goto :goto_5

    .line 1650
    :cond_36
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;

    .line 1651
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getID()Ljava/lang/String;

    move-result-object v5

    .line 1652
    if-eqz v5, :cond_16

    .line 1653
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object v2, v0

    .line 1655
    goto :goto_1d

    .line 1671
    :cond_4a
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->importItemNodeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1672
    const-string v0, "res"

    invoke-virtual {v2, v0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v1

    .line 1685
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->hasFileContent()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1686
    invoke-static {}, Lcom/samsung/http/HTTP;->getCacheDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getFileContent()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->createImportResourceProperty(Ljava/lang/String;Lcom/samsung/upnp/media/server/object/item/ImportItemNode;Lcom/samsung/upnp/media/server/object/ContentProperty;Ljava/io/File;)Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;

    move-result-object v0

    .line 1691
    :goto_67
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->removeProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)Z

    .line 1692
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    .line 1694
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->notifiyUploadContentFinished(Lcom/samsung/upnp/media/server/object/item/ItemNode;Z)V

    .line 1695
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnOK()Z

    move-result v0

    goto :goto_5

    .line 1688
    :cond_76
    invoke-static {}, Lcom/samsung/http/HTTP;->getCacheDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->createImportResourceProperty(Ljava/lang/String;Lcom/samsung/upnp/media/server/object/item/ImportItemNode;Lcom/samsung/upnp/media/server/object/ContentProperty;Ljava/io/InputStream;)Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;

    move-result-object v0

    goto :goto_67
.end method

.method public findContainerNodeByUPnPClass(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 562
    const/4 v0, -0x1

    .line 563
    const-string v2, "object.item.video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 564
    const/4 v0, 0x2

    .line 565
    :cond_b
    const-string v2, "object.item.image"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v0, v1

    .line 567
    :cond_14
    const-string v2, "object.item.audio"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 568
    const/4 v0, 0x1

    move v2, v0

    .line 570
    :goto_1e
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getRootNode()Lcom/samsung/upnp/media/server/object/container/RootNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/container/RootNode;->getNContentNodes()I

    move-result v4

    move v3, v1

    .line 571
    :goto_27
    if-lt v3, v4, :cond_2b

    .line 579
    const/4 v1, 0x0

    :cond_2a
    return-object v1

    .line 572
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getRootNode()Lcom/samsung/upnp/media/server/object/container/RootNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/upnp/media/server/object/container/RootNode;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v1

    .line 573
    instance-of v0, v1, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    if-eqz v0, :cond_40

    move-object v0, v1

    .line 574
    check-cast v0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->getType()I

    move-result v0

    if-eq v0, v2, :cond_2a

    .line 571
    :cond_40
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_27

    :cond_44
    move v2, v0

    goto :goto_1e
.end method

.method public findContentNodeByID(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;
    .registers 3
    .parameter "id"

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getRootNode()Lcom/samsung/upnp/media/server/object/container/RootNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/container/RootNode;->findContentNodeByID(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v0

    return-object v0
.end method

.method public getContentAlbumArtExportURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1818
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MediaStore/AlbumArt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentExportURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MediaStore/Out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentImportURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MediaStore/In"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentMicroThumbnailExportURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MediaStore/Micro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentSmallThumbnailExportURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1801
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MediaStore/Small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentSubtitleExportURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/subtitle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPPort()I
    .registers 2

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getMediaServer()Lcom/samsung/upnp/media/server/MediaServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaServer;->getHTTPPort()I

    move-result v0

    return v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1786
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getMediaServer()Lcom/samsung/upnp/media/server/MediaServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaServer;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaServer()Lcom/samsung/upnp/media/server/MediaServer;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->mediaServer:Lcom/samsung/upnp/media/server/MediaServer;

    return-object v0
.end method

.method public getNSearchCaps()I
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->searchCapList:Lcom/samsung/upnp/media/server/object/SearchCapList;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/SearchCapList;->size()I

    move-result v0

    return v0
.end method

.method public getNSortCaps()I
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->sortCapList:Lcom/samsung/upnp/media/server/object/SortCapList;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/SortCapList;->size()I

    move-result v0

    return v0
.end method

.method public getNextContainerID()I
    .registers 2

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getNextContentID()I

    move-result v0

    return v0
.end method

.method public getNextItemID()I
    .registers 2

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getNextContentID()I

    move-result v0

    return v0
.end method

.method public getRootNode()Lcom/samsung/upnp/media/server/object/container/RootNode;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->rootNode:Lcom/samsung/upnp/media/server/object/container/RootNode;

    return-object v0
.end method

.method public getSearchCapList()Lcom/samsung/upnp/media/server/object/SearchCapList;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->searchCapList:Lcom/samsung/upnp/media/server/object/SearchCapList;

    return-object v0
.end method

.method public getSortCap(I)Lcom/samsung/upnp/media/server/object/SortCap;
    .registers 3
    .parameter "n"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->sortCapList:Lcom/samsung/upnp/media/server/object/SortCapList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/SortCapList;->getSortCap(I)Lcom/samsung/upnp/media/server/object/SortCap;

    move-result-object v0

    return-object v0
.end method

.method public getSortCap(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/SortCap;
    .registers 3
    .parameter "type"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->sortCapList:Lcom/samsung/upnp/media/server/object/SortCapList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/SortCapList;->getSortCap(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/SortCap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSystemUpdateID()I
    .registers 2

    .prologue
    .line 255
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->systemUpdateID:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSystemUpdateIDInterval()J
    .registers 3

    .prologue
    .line 1838
    iget-wide v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->systemUpdateIDInterval:J

    return-wide v0
.end method

.method public isContainedDirectory(Lcom/samsung/upnp/media/server/Directory;)Z
    .registers 3
    .parameter "dir"

    .prologue
    .line 545
    if-nez p1, :cond_4

    .line 546
    const/4 v0, 0x0

    .line 548
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->dirList:Lcom/samsung/upnp/media/server/DirectoryList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/DirectoryList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public queryControlReceived(Lcom/samsung/upnp/StateVariable;)Z
    .registers 3
    .parameter "stateVar"

    .prologue
    .line 1608
    const/4 v0, 0x0

    return v0
.end method

.method public removeDirectory(Lcom/samsung/upnp/media/server/Directory;)Z
    .registers 3
    .parameter "dir"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->dirList:Lcom/samsung/upnp/media/server/DirectoryList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/DirectoryList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 511
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->dirList:Lcom/samsung/upnp/media/server/DirectoryList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/DirectoryList;->remove(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->rootNode:Lcom/samsung/upnp/media/server/object/container/RootNode;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/container/RootNode;->removeNode(Lcom/samsung/xml/Node;)Z

    .line 513
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->updateSystemUpdateID()V

    .line 514
    const/4 v0, 0x1

    .line 517
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public setContentUpdateInterval(J)V
    .registers 3
    .parameter "itime"

    .prologue
    .line 1843
    iput-wide p1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->contentUpdateInterval:J

    .line 1844
    return-void
.end method

.method public setCreateObjectReceivedListener(Ljava/lang/Object;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 758
    iput-object p1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->createObjectListener:Ljava/lang/Object;

    .line 759
    return-void
.end method

.method public setSystemUpdateInterval(J)V
    .registers 3
    .parameter "itime"

    .prologue
    .line 1833
    iput-wide p1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->systemUpdateIDInterval:J

    .line 1834
    return-void
.end method

.method public setUploadFinishedListener(Ljava/lang/Object;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 786
    iput-object p1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->uploadFinishedListener:Ljava/lang/Object;

    .line 787
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1861
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CDS Eventing"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventThread:Landroid/os/HandlerThread;

    .line 1863
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getMediaServer()Lcom/samsung/upnp/media/server/MediaServer;

    move-result-object v0

    .line 1864
    if-eqz v0, :cond_18

    .line 1865
    const-string v1, "SystemUpdateID"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/MediaServer;->getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->varSystemUpdateID:Lcom/samsung/upnp/StateVariable;

    .line 1867
    :cond_18
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->varSystemUpdateID:Lcom/samsung/upnp/StateVariable;

    if-eqz v0, :cond_3c

    .line 1868
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->varSystemUpdateID:Lcom/samsung/upnp/StateVariable;

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/StateVariable;->setValue(I)V

    .line 1874
    iput v2, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateID:I

    .line 1875
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1876
    new-instance v0, Lcom/samsung/upnp/media/server/ContentDirectory$1;

    iget-object v1, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/upnp/media/server/ContentDirectory$1;-><init>(Lcom/samsung/upnp/media/server/ContentDirectory;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventHandler:Landroid/os/Handler;

    .line 1923
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1924
    :cond_3c
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1928
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1929
    :cond_11
    return-void
.end method

.method public declared-synchronized updateSystemUpdateID()V
    .registers 3

    .prologue
    .line 243
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->systemUpdateID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->systemUpdateID:I

    .line 244
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_19

    .line 245
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ContentDirectory;->cdsEventHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    :cond_19
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->destroyThumbnailTable()V

    .line 250
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/ContentDirectory;->buildImageThumbnailTable()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 251
    monitor-exit p0

    return-void

    .line 243
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
