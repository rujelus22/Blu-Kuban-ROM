.class public Lcom/sec/android/app/dlna/DLNAAddinManager;
.super Ljava/lang/Object;
.source "DLNAAddinManager.java"

# interfaces
.implements Lcom/samsung/sample/networkstate/INetworstateEventListener;
.implements Lcom/sec/android/app/dlna/view/IControlPointInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;
    }
.end annotation


# static fields
.field private static final mThumbnail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private contentInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public contentItem:Lcom/samsung/api/ContentItem;

.field private context:Landroid/content/Context;

.field private cp:Lcom/samsung/upnp/ControlPoint;

.field private currentPosition:I

.field private fileDuration:I

.field private guiHandlers:Lcom/samsung/util/ListenerList;

.field private mContentItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDms:Lcom/samsung/api/DeviceItem;

.field private mIsLastFileInUrilist:Z

.field private multiThread:Ljava/lang/Thread;

.field private networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

.field private playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

.field private player:Lcom/samsung/upnp/Device;

.field private positionThread:Ljava/lang/Thread;

.field private simpleDevice:Lcom/samsung/upnp/media/server/SimpleDevice;

.field private simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

.field private totalDuration:I

.field public trackDuration:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/dlna/DLNAAddinManager;->mThumbnail:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "DLNA_Addin"

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->TAG:Ljava/lang/String;

    .line 59
    const-string v0, "DLNAAddinManager."

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->CLASS_NAME:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    .line 83
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 84
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    .line 85
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->guiHandlers:Lcom/samsung/util/ListenerList;

    .line 86
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleDevice:Lcom/samsung/upnp/media/server/SimpleDevice;

    .line 87
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->contentInfo:Ljava/util/HashMap;

    .line 88
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->context:Landroid/content/Context;

    .line 89
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 90
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->positionThread:Ljava/lang/Thread;

    .line 91
    iput v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->currentPosition:I

    .line 92
    iput v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->totalDuration:I

    .line 93
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->mDms:Lcom/samsung/api/DeviceItem;

    .line 94
    iput v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->fileDuration:I

    .line 95
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->multiThread:Ljava/lang/Thread;

    .line 96
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->contentItem:Lcom/samsung/api/ContentItem;

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->trackDuration:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->mContentItemList:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    .line 112
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->context:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/samsung/upnp/ControlPoint;

    invoke-direct {v0}, Lcom/samsung/upnp/ControlPoint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    .line 115
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->guiHandlers:Lcom/samsung/util/ListenerList;

    .line 116
    new-instance v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-direct {v0, p1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0, p0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->addEventListener(Lcom/samsung/sample/networkstate/INetworstateEventListener;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->startWorker()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/ControlPoint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/DLNAAddinManager;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getTransportState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/Device;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/api/ContentPositionInfo;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPosition()Lcom/samsung/api/ContentPositionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/dlna/DLNAAddinManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->totalDuration:I

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dlna/DLNAAddinManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->currentPosition:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/dlna/DLNAAddinManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->currentPosition:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dlna/DLNAAddinManager;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->positionThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dlna/DLNAAddinManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->fileDuration:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/DLNAAddinManager;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->parsePlayerState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/DLNAAddinManager;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->resumeItem()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/DLNAAddinManager;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->pauseItem()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/DLNAAddinManager;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/dlna/DLNAAddinManager;Lcom/samsung/api/DMCAPIException;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->handleDMCAPIException(Lcom/samsung/api/DMCAPIException;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/dlna/DLNAAddinManager;)I
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dlna/DLNAAddinManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->setVolume(I)V

    return-void
.end method

.method public static getIpFromInt(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    return-object v0
.end method

.method private getItemNode(Ljava/util/HashMap;)Lcom/samsung/upnp/media/server/object/item/ItemNode;
    .registers 27
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/upnp/media/server/object/item/ItemNode;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, contentInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-direct {v10}, Lcom/samsung/upnp/media/server/object/item/ItemNode;-><init>()V

    .line 189
    .local v10, itemNode:Lcom/samsung/upnp/media/server/object/item/ItemNode;
    const-string v21, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 190
    .local v19, title:Ljava/lang/String;
    const-string v21, "mime_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 191
    .local v11, mimeType:Ljava/lang/String;
    const-string v21, "_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 192
    .local v17, size:Ljava/lang/String;
    const-string v21, "_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 193
    .local v4, data:Ljava/lang/String;
    const-string v21, "date_modified"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 194
    .local v6, date_modified:Ljava/lang/String;
    const-string v21, "date_added"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 195
    .local v5, date_added:Ljava/lang/String;
    const/4 v14, 0x0

    .line 197
    .local v14, recordingDate:Ljava/lang/String;
    if-eqz v11, :cond_56

    const-string v21, " "

    move-object/from16 v0, v21

    if-ne v11, v0, :cond_58

    .line 198
    :cond_56
    const/4 v10, 0x0

    .line 284
    .end local v10           #itemNode:Lcom/samsung/upnp/media/server/object/item/ItemNode;
    :cond_57
    :goto_57
    return-object v10

    .line 200
    .restart local v10       #itemNode:Lcom/samsung/upnp/media/server/object/item/ItemNode;
    :cond_58
    const-string v21, "image"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_17b

    .line 201
    const-string v21, "object.item.imageItem.photo"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setUPnPClass(Ljava/lang/String;)V

    .line 205
    if-eqz v4, :cond_ab

    .line 206
    :try_start_6b
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 207
    .local v8, fis:Ljava/io/FileInputStream;
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 208
    .local v12, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v8, v0, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 210
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 211
    const-string v21, "width"

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v21, "height"

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_ab} :catch_161
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_ab} :catch_16e

    .line 233
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_ab
    :goto_ab
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setTitle(Ljava/lang/String;)V

    .line 235
    const-string v21, "audio"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_29d

    .line 236
    const/4 v9, 0x0

    .line 238
    .local v9, formattedDate:Ljava/lang/String;
    :try_start_bb
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    .line 241
    .local v20, yearLength:I
    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1fb

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1fb

    .line 242
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-01-01"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e3
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_e3} :catch_28e

    move-result-object v9

    .line 258
    .end local v20           #yearLength:I
    :goto_e4
    const-string v21, "DLNA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "formattedDate = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v10, v9}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setDate(Ljava/lang/String;)V

    .line 268
    .end local v9           #formattedDate:Ljava/lang/String;
    :goto_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/upnp/media/server/SimpleMediaServer;->getServerAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;->createSimpleResourceProperty(Ljava/lang/String;Ljava/util/HashMap;)Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;

    move-result-object v16

    .line 269
    .local v16, resProperty:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    .line 272
    if-eqz v4, :cond_57

    .line 273
    invoke-static {v4}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getSubTitleFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 275
    .local v18, subtitle:Ljava/lang/String;
    if-eqz v18, :cond_57

    .line 276
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    sget v24, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_SMALL:I

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v13

    .line 279
    .local v13, protocol:Ljava/lang/String;
    new-instance v15, Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/upnp/media/server/SimpleMediaServer;->getSubtitleAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".smi"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v13, v1}, Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v15, resProp:Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;
    invoke-virtual {v10, v15}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    goto/16 :goto_57

    .line 214
    .end local v13           #protocol:Ljava/lang/String;
    .end local v15           #resProp:Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;
    .end local v16           #resProperty:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    .end local v18           #subtitle:Ljava/lang/String;
    :catch_161
    move-exception v7

    .line 215
    .local v7, e:Ljava/io/FileNotFoundException;
    const-string v21, "DLNA_Addin"

    const-string v22, "DLNAAddinManager.getItemNode() - FileNotFoundException"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_ab

    .line 217
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_16e
    move-exception v7

    .line 218
    .local v7, e:Ljava/io/IOException;
    const-string v21, "DLNA_Addin"

    const-string v22, "DLNAAddinManager.getItemNode() - IOException"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_ab

    .line 221
    .end local v7           #e:Ljava/io/IOException;
    :cond_17b
    const-string v21, "video"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1a8

    .line 222
    const-string v21, "object.item.videoItem.movie"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setUPnPClass(Ljava/lang/String;)V

    .line 223
    const-string v21, "width"

    const-string v22, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v21, "height"

    const-string v22, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ab

    .line 225
    :cond_1a8
    const-string v21, "audio"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_ab

    .line 226
    const-string v21, "object.item.audioItem.musicTrack"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setUPnPClass(Ljava/lang/String;)V

    .line 227
    const-string v21, "width"

    const-string v22, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v21, "height"

    const-string v22, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v21, "year"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #recordingDate:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 230
    .restart local v14       #recordingDate:Ljava/lang/String;
    const-string v21, "DLNA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "recordingDate = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ab

    .line 243
    .restart local v9       #formattedDate:Ljava/lang/String;
    .restart local v20       #yearLength:I
    :cond_1fb
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_22c

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_22c

    .line 244
    :try_start_20b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-01-01"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_e4

    .line 245
    :cond_22c
    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_283

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_283

    .line 246
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x4

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x6

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_e4

    .line 250
    :cond_283
    const-string v21, "DLNA"

    const-string v22, "unexpected range..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v9, ""
    :try_end_28c
    .catch Ljava/lang/NullPointerException; {:try_start_20b .. :try_end_28c} :catch_28e

    goto/16 :goto_e4

    .line 253
    .end local v20           #yearLength:I
    :catch_28e
    move-exception v7

    .line 254
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v21, "DLNA"

    const-string v22, "NullPointerException in formattedDate !"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 256
    const-string v9, ""

    goto/16 :goto_e4

    .line 261
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v9           #formattedDate:Ljava/lang/String;
    :cond_29d
    if-eqz v6, :cond_2ac

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/dlna/DLNAAddinManager;->dateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setDate(Ljava/lang/String;)V

    goto/16 :goto_101

    .line 264
    :cond_2ac
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dlna/DLNAAddinManager;->dateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setDate(Ljava/lang/String;)V

    goto/16 :goto_101
.end method

.method private getPosition()Lcom/samsung/api/ContentPositionInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    const/4 v0, 0x0

    .line 931
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-nez v1, :cond_11

    .line 932
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 934
    :cond_11
    new-instance v4, Lcom/samsung/api/ContentPositionInfo;

    invoke-direct {v4}, Lcom/samsung/api/ContentPositionInfo;-><init>()V

    .line 936
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 938
    if-nez v1, :cond_28

    .line 939
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 942
    :cond_28
    const-string v2, "GetPositionInfo"

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v5

    .line 943
    if-nez v5, :cond_36

    .line 944
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 946
    :cond_36
    const-string v1, "InstanceID"

    invoke-virtual {v5, v1, v0}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 947
    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 948
    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v0

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_5b

    .line 949
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v0

    .line 951
    :cond_5b
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x1f5

    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v0

    .line 955
    :cond_6b
    const-string v1, "TrackDuration"

    invoke-virtual {v5, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 960
    if-eqz v6, :cond_bf

    .line 961
    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 962
    if-eqz v3, :cond_bf

    .line 964
    const/4 v1, 0x0

    :try_start_80
    aget-object v1, v3, v1

    if-eqz v1, :cond_113

    .line 965
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8a} :catch_f7

    move-result v2

    .line 966
    :goto_8b
    const/4 v1, 0x1

    :try_start_8c
    aget-object v1, v3, v1

    if-eqz v1, :cond_111

    .line 967
    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_96} :catch_10b

    move-result v1

    .line 968
    :goto_97
    const/4 v7, 0x2

    :try_start_98
    aget-object v7, v3, v7

    if-eqz v7, :cond_a3

    .line 969
    const/4 v7, 0x2

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a2} :catch_10f

    move-result v0

    .line 974
    :cond_a3
    :goto_a3
    iget v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->fileDuration:I

    if-nez v3, :cond_bf

    .line 975
    if-eqz v2, :cond_af

    .line 976
    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    iput v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->fileDuration:I

    .line 977
    :cond_af
    if-eqz v1, :cond_b8

    .line 978
    iget v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->fileDuration:I

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->fileDuration:I

    .line 979
    :cond_b8
    if-eqz v0, :cond_bf

    .line 980
    iget v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->fileDuration:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->fileDuration:I

    .line 986
    :cond_bf
    :try_start_bf
    const-string v0, "RelTime"

    invoke-virtual {v5, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 987
    const-string v1, "AbsTime"

    invoke-virtual {v5, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 988
    const-string v2, "RelCount"

    invoke-virtual {v5, v2}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 989
    const-string v3, "AbsCount"

    invoke-virtual {v5, v3}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 991
    invoke-virtual {v4, v6}, Lcom/samsung/api/ContentPositionInfo;->setTrackDuration(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v4, v0}, Lcom/samsung/api/ContentPositionInfo;->setRelTime(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v4, v1}, Lcom/samsung/api/ContentPositionInfo;->setAbsTime(Ljava/lang/String;)V

    .line 994
    invoke-virtual {v4, v2}, Lcom/samsung/api/ContentPositionInfo;->setRelCount(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v4, v3}, Lcom/samsung/api/ContentPositionInfo;->setAbsCount(Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/lang/NullPointerException; {:try_start_bf .. :try_end_f6} :catch_ff

    .line 1001
    :goto_f6
    return-object v4

    .line 970
    :catch_f7
    move-exception v1

    move-object v3, v1

    move v2, v0

    move v1, v0

    .line 971
    :goto_fb
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a3

    .line 996
    :catch_ff
    move-exception v0

    .line 997
    const-string v1, "DLNA_Addin"

    const-string v2, "DLNAAddinManager.getPosition() - NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f6

    .line 970
    :catch_10b
    move-exception v1

    move-object v3, v1

    move v1, v0

    goto :goto_fb

    :catch_10f
    move-exception v3

    goto :goto_fb

    :cond_111
    move v1, v0

    goto :goto_97

    :cond_113
    move v2, v0

    goto/16 :goto_8b
.end method

.method private getTransportState()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    .line 608
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    .line 610
    .local v1, curPlayer:Lcom/samsung/api/DeviceItem;
    if-nez v1, :cond_10

    .line 611
    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v3

    .line 613
    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    const-string v4, "GetTransportInfo"

    invoke-virtual {v3, v4}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 614
    .local v0, action:Lcom/samsung/upnp/Action;
    if-nez v0, :cond_20

    .line 615
    new-instance v3, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v3, v6}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v3

    .line 617
    :cond_20
    const-string v3, "InstanceID"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 619
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v3

    if-nez v3, :cond_72

    .line 620
    const-string v3, "DLNA_Addin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "action fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v3

    const/16 v4, 0x19a

    if-ne v3, v4, :cond_62

    .line 622
    new-instance v3, Lcom/samsung/api/DMCAPIException;

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v3

    .line 624
    :cond_62
    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/16 v4, 0x1f5

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v3

    .line 628
    :cond_72
    const/4 v2, 0x0

    .line 629
    .local v2, result:Ljava/lang/String;
    const-string v3, "CurrentTransportState"

    invoke-virtual {v0, v3}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v3

    if-eqz v3, :cond_86

    .line 630
    const-string v3, "CurrentTransportState"

    invoke-virtual {v0, v3}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 635
    :goto_85
    return-object v2

    .line 632
    :cond_86
    const-string v3, "DLNA_Addin"

    const-string v4, "action.getArgument(\"CurrentTransportState\") == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85
.end method

.method private getVolume()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1f5

    const/16 v3, 0x9

    .line 895
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_12

    .line 896
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 898
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 899
    if-nez v0, :cond_24

    .line 900
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 903
    :cond_24
    const-string v1, "GetVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 904
    if-nez v0, :cond_32

    .line 905
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 908
    :cond_32
    const-string v1, "InstanceID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 909
    const-string v1, "Channel"

    const-string v2, "Master"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 912
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_5f

    .line 913
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 915
    :cond_5f
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    invoke-direct {v1, v4, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 921
    :cond_6d
    :try_start_6d
    const-string v1, "CurrentVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_76} :catch_90

    move-result v0

    .line 926
    const-string v1, "DLNA_Addin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAAddinManager.getVolume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return v0

    .line 922
    :catch_90
    move-exception v0

    .line 923
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0
.end method

.method private handleDMCAPIException(Lcom/samsung/api/DMCAPIException;)V
    .registers 5
    .parameter

    .prologue
    .line 1053
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNAAddinManager.handleDMCAPIException() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/api/DMCAPIException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-virtual {p1}, Lcom/samsung/api/DMCAPIException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    .line 1069
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 1071
    :goto_28
    :sswitch_28
    return-void

    .line 1063
    :sswitch_29
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    if-eqz v0, :cond_38

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    invoke-virtual {v1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ControlPoint;->removeDeviceItem(Ljava/lang/String;)V

    .line 1065
    :cond_38
    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    goto :goto_28

    .line 1055
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_28
        0x9 -> :sswitch_29
        0xc -> :sswitch_29
    .end sparse-switch
.end method

.method private parsePlayerState(Ljava/lang/String;)I
    .registers 5
    .parameter "state"

    .prologue
    const/16 v1, 0xcf

    const/16 v0, 0xcd

    .line 593
    const-string v2, "STOPPED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 604
    :cond_c
    :goto_c
    return v0

    .line 595
    :cond_d
    const-string v2, "TRANSITIONING"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    .line 596
    goto :goto_c

    .line 597
    :cond_17
    const-string v2, "PLAYING"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    .line 598
    goto :goto_c

    .line 599
    :cond_21
    const-string v1, "PAUSED_PLAYBACK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 600
    const/16 v0, 0xce

    goto :goto_c

    .line 601
    :cond_2c
    const-string v1, "NO_MEDIA_PRESENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_c
.end method

.method private pauseItem()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_e

    .line 774
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 777
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/DLNAAddinManager$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager$7;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 797
    return-void
.end method

.method private playItem()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_e

    .line 686
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 688
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/DLNAAddinManager$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager$6;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 770
    return-void
.end method

.method private resumeItem()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_e

    .line 801
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 803
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/DLNAAddinManager$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager$8;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 824
    return-void
.end method

.method private seekItem(Ljava/lang/String;)V
    .registers 4
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_e

    .line 828
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 830
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/DLNAAddinManager$9;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/dlna/DLNAAddinManager$9;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 855
    return-void
.end method

.method private setVolume(I)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/16 v5, 0x9

    .line 858
    if-le p1, v0, :cond_4c

    .line 859
    const-string v2, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requested volume is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". set it 100"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 865
    :cond_26
    :goto_26
    const-string v0, "DLNA_Addin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAAddinManager.setVolume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_6e

    .line 869
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 861
    :cond_4c
    if-gez p1, :cond_26

    .line 862
    const-string v0, "DLNA_Addin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested volume is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". set it 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 863
    goto :goto_26

    .line 871
    :cond_6e
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 872
    if-nez v0, :cond_80

    .line 873
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v5}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 876
    :cond_80
    const-string v2, "SetVolume"

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 877
    if-nez v0, :cond_8e

    .line 878
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v5}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 881
    :cond_8e
    const-string v2, "InstanceID"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 882
    const-string v1, "Channel"

    const-string v2, "Master"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v1, "DesiredVolume"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 885
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_cf

    .line 886
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_bf

    .line 887
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    invoke-direct {v1, v5, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 889
    :cond_bf
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/16 v2, 0x1f5

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 892
    :cond_cf
    return-void
.end method

.method private startManager()V
    .registers 6

    .prologue
    .line 519
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    const-string v3, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ControlPoint;->addSearchTarget(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v2}, Lcom/samsung/upnp/ControlPoint;->start()Z

    .line 521
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->startSimpleServer()V

    .line 523
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->context:Landroid/content/Context;

    const-string v3, "AllShare Preference"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 524
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "device_name"

    const-string v3, "SPH-D710"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, friendlyName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Mobile]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/http/HTTP;->setDeviceName(Ljava/lang/String;)V

    .line 527
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA Addin - friendlyName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->positionThread:Ljava/lang/Thread;

    if-nez v2, :cond_64

    .line 529
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/dlna/DLNAAddinManager$PositionThread;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;Lcom/sec/android/app/dlna/DLNAAddinManager$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->positionThread:Ljava/lang/Thread;

    .line 530
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->positionThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 533
    :cond_64
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 534
    return-void
.end method

.method private startSimpleServer()V
    .registers 6

    .prologue
    .line 570
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    if-eqz v3, :cond_c

    .line 571
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/SimpleMediaServer;->stopServer()V

    .line 572
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    .line 575
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->context:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 576
    .local v0, WifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 577
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getIpFromInt(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, ipAddress:Ljava/lang/String;
    new-instance v3, Lcom/samsung/upnp/media/server/SimpleMediaServer;

    invoke-direct {v3}, Lcom/samsung/upnp/media/server/SimpleMediaServer;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    .line 580
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    invoke-virtual {v3, v1}, Lcom/samsung/upnp/media/server/SimpleMediaServer;->startServer(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    return-void
.end method

.method private stopItem()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    if-nez v3, :cond_e

    .line 641
    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v3

    .line 643
    :cond_e
    const/4 v2, 0x0

    .line 644
    .local v2, timeOut:I
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/dlna/DLNAAddinManager$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager$5;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 668
    .local v1, stopThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 670
    :goto_1c
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 671
    add-int/lit8 v2, v2, 0x1

    .line 672
    const/4 v3, 0x6

    if-le v2, v3, :cond_2f

    .line 673
    const-string v3, "DLNA_Addin"

    const-string v4, "DLNAAddinManager.stopItem Time OUT!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_2e
    return-void

    .line 677
    :cond_2f
    const-wide/16 v3, 0x1f4

    :try_start_31
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_1c

    .line 678
    :catch_35
    move-exception v0

    .line 679
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1c
.end method

.method private stopSimpleServer()V
    .registers 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    if-eqz v0, :cond_14

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/SimpleMediaServer;->isServerStarted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/SimpleMediaServer;->stopServer()V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    .line 590
    :cond_14
    return-void
.end method


# virtual methods
.method public addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/ControlPoint;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 140
    return-void
.end method

.method public addGuiHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->guiHandlers:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public dateFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "dateInfo"

    .prologue
    .line 288
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 289
    .local v0, addedDate:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 290
    .local v2, printDate:Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 292
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public eventOccured(I)V
    .registers 7
    .parameter "event"

    .prologue
    .line 467
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->context:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 468
    .local v2, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 471
    .local v0, connectionInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1f

    .line 472
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getIpFromInt(I)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, ipAddr:Ljava/lang/String;
    :goto_18
    invoke-static {v1}, Lcom/samsung/net/HostInterface;->setInterface(Ljava/lang/String;)V

    .line 479
    packed-switch p1, :pswitch_data_5e

    .line 507
    :goto_1e
    :pswitch_1e
    return-void

    .line 474
    .end local v1           #ipAddr:Ljava/lang/String;
    :cond_1f
    const-string v3, "DLNA_Addin"

    const-string v4, "connectionInfo is null, this workaround does not guarantee normal operation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v1, "0.0.0.0"

    .restart local v1       #ipAddr:Ljava/lang/String;
    goto :goto_18

    .line 481
    :pswitch_29
    const-string v3, "DLNA_Addin"

    const-string v4, "ADDIN Manager eventOccured  EVENT_NETWORK_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->stopManager()V

    .line 483
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->startManager()V

    goto :goto_1e

    .line 487
    :pswitch_37
    const-string v3, "DLNA_Addin"

    const-string v4, "ADDIN Manager eventOccured  EVENT_NETWORK_CONNECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/16 v3, 0x71

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 490
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->startManager()V

    goto :goto_1e

    .line 494
    :pswitch_47
    const-string v3, "DLNA_Addin"

    const-string v4, "ADDIN Manager eventOccured  EVENT_NETWORK_DISCONNECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->stopManager()V

    goto :goto_1e

    .line 499
    :pswitch_52
    const-string v3, "DLNA_Addin"

    const-string v4, "ADDIN Manager eventOccured EVENT_NETWORK_DISCONNECTED_INIT_TIME"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->stopManager()V

    goto :goto_1e

    .line 479
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_37
        :pswitch_29
        :pswitch_1e
        :pswitch_52
    .end packed-switch
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->currentPosition:I

    return v0
.end method

.method public getPlayItem()Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object v0
.end method

.method public getPlayer()Lcom/samsung/api/DeviceItem;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    if-nez v2, :cond_7

    move-object v0, v1

    .line 176
    :cond_6
    :goto_6
    return-object v0

    .line 171
    :cond_7
    new-instance v0, Lcom/samsung/api/DeviceItem;

    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    invoke-direct {v0, v2}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    .line 173
    .local v0, curPlayer:Lcom/samsung/api/DeviceItem;
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v2, v0}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v0, v1

    .line 176
    goto :goto_6
.end method

.method public getPlayerList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v5, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v5}, Lcom/samsung/upnp/ControlPoint;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v1

    .line 152
    .local v1, devList:Lcom/samsung/upnp/DeviceList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/DeviceItem;>;"
    invoke-virtual {v1}, Lcom/samsung/upnp/DeviceList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Device;

    .line 156
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaRenderer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 157
    new-instance v3, Lcom/samsung/api/DeviceItem;

    invoke-direct {v3, v0}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    .line 158
    .local v3, item:Lcom/samsung/api/DeviceItem;
    invoke-virtual {v3}, Lcom/samsung/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    .line 159
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/samsung/api/DeviceItem;->setDeviceType(I)V

    .line 160
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 164
    .end local v0           #dev:Lcom/samsung/upnp/Device;
    .end local v3           #item:Lcom/samsung/api/DeviceItem;
    :cond_37
    return-object v4
.end method

.method public getStateType()I
    .registers 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    if-nez v0, :cond_6

    .line 1083
    const/4 v0, -0x1

    .line 1085
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->getStateType()I

    move-result v0

    goto :goto_5
.end method

.method public getThumbnailHash()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/sec/android/app/dlna/DLNAAddinManager;->mThumbnail:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTotalDuration()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->totalDuration:I

    return v0
.end method

.method protected notifyGuiEvent(I)V
    .registers 5
    .parameter "what"

    .prologue
    .line 510
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->guiHandlers:Lcom/samsung/util/ListenerList;

    invoke-virtual {v2}, Lcom/samsung/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 511
    .local v1, obj:Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Handler;

    if-eqz v2, :cond_6

    .line 512
    check-cast v1, Landroid/os/Handler;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 515
    :cond_1a
    return-void
.end method

.method public refreshPlayerList()V
    .registers 3

    .prologue
    .line 342
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/DLNAAddinManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager$1;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 348
    return-void
.end method

.method public removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/ControlPoint;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 144
    return-void
.end method

.method public removeGuiHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->guiHandlers:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public requestForcePlay()V
    .registers 4

    .prologue
    .line 352
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem()V
    :try_end_3
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_0 .. :try_end_3} :catch_4

    .line 358
    :goto_3
    return-void

    .line 353
    :catch_4
    move-exception v0

    .line 354
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const-string v1, "DLNA_Addin"

    const-string v2, "DLNAAddinManager.requestForcePlay()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 356
    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->handleDMCAPIException(Lcom/samsung/api/DMCAPIException;)V

    goto :goto_3
.end method

.method public requestPlayorPause()V
    .registers 4

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 363
    .local v0, curPlayer:Lcom/samsung/api/DeviceItem;
    if-nez v0, :cond_c

    .line 364
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 395
    :goto_b
    return-void

    .line 366
    :cond_c
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dlna/DLNAAddinManager$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager$2;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_b
.end method

.method public requestSeek(I)V
    .registers 6
    .parameter "pos"

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 412
    .local v0, curPlayer:Lcom/samsung/api/DeviceItem;
    if-nez v0, :cond_c

    .line 413
    const/16 v2, 0x6b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 423
    :goto_b
    return-void

    .line 416
    :cond_c
    :try_start_c
    invoke-static {p1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->seekItem(Ljava/lang/String;)V
    :try_end_13
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_b

    .line 417
    :catch_14
    move-exception v1

    .line 418
    .local v1, e:Lcom/samsung/api/DMCAPIException;
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddinManager.requestSeek()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v1}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 420
    invoke-direct {p0, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->handleDMCAPIException(Lcom/samsung/api/DMCAPIException;)V

    goto :goto_b
.end method

.method public requestStop()V
    .registers 4

    .prologue
    .line 399
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->stopItem()V

    .line 400
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V
    :try_end_8
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_0 .. :try_end_8} :catch_9

    .line 407
    :goto_8
    return-void

    .line 401
    :catch_9
    move-exception v0

    .line 402
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const-string v1, "DLNA_Addin"

    const-string v2, "DLNAAddinManager.requestStop()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 404
    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->handleDMCAPIException(Lcom/samsung/api/DMCAPIException;)V

    .line 405
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    goto :goto_8
.end method

.method public requestVolumeDown()V
    .registers 4

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 448
    .local v0, curPlayer:Lcom/samsung/api/DeviceItem;
    if-nez v0, :cond_c

    .line 449
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 464
    :goto_b
    return-void

    .line 451
    :cond_c
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dlna/DLNAAddinManager$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager$4;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_b
.end method

.method public requestVolumeUp()V
    .registers 4

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 428
    .local v0, curPlayer:Lcom/samsung/api/DeviceItem;
    if-nez v0, :cond_c

    .line 429
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 444
    :goto_b
    return-void

    .line 431
    :cond_c
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dlna/DLNAAddinManager$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager$3;-><init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_b
.end method

.method public selectPlayer(Lcom/samsung/api/DeviceItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 325
    :try_start_6
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->stopItem()V
    :try_end_9
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_6 .. :try_end_9} :catch_17

    .line 334
    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v1, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    if-nez v1, :cond_26

    .line 336
    const/4 v1, 0x0

    .line 338
    :goto_16
    return v1

    .line 326
    :catch_17
    move-exception v0

    .line 327
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const-string v1, "DLNA_Addin"

    const-string v2, "DLNAAddinManager.selectPlayer()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 329
    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->handleDMCAPIException(Lcom/samsung/api/DMCAPIException;)V

    goto :goto_9

    .line 338
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :cond_26
    const/4 v1, 0x1

    goto :goto_16
.end method

.method public setContents(Ljava/util/HashMap;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, contentInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getItemNode(Ljava/util/HashMap;)Lcom/samsung/upnp/media/server/object/item/ItemNode;

    move-result-object v1

    .line 298
    .local v1, item:Lcom/samsung/upnp/media/server/object/item/ItemNode;
    if-eqz v1, :cond_2f

    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/SimpleMediaServer;->isServerStarted()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 299
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    invoke-virtual {v3, v1}, Lcom/samsung/upnp/media/server/SimpleMediaServer;->registerContent(Lcom/samsung/upnp/media/server/object/item/ItemNode;)V

    .line 300
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->simpleMediaServer:Lcom/samsung/upnp/media/server/SimpleMediaServer;

    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/SimpleMediaServer;->getItemNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 302
    .local v0, info:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_2f

    .line 303
    new-instance v2, Lcom/samsung/api/ContentItem;

    invoke-direct {v2, v0}, Lcom/samsung/api/ContentItem;-><init>(Lcom/samsung/xml/Node;)V

    .line 304
    .local v2, result:Lcom/samsung/api/ContentItem;
    new-instance v3, Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-static {}, Lcom/samsung/api/DeviceItem;->getLodcalDeviceItem()Lcom/samsung/api/DeviceItem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;-><init>(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)V

    iput-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 307
    .end local v0           #info:Lcom/samsung/xml/Node;
    .end local v2           #result:Lcom/samsung/api/ContentItem;
    :cond_2f
    return-void
.end method

.method public setLastFileInUriListFlag(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 1078
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->mIsLastFileInUrilist:Z

    .line 1079
    return-void
.end method

.method public stopManager()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 537
    const-string v0, "DLNA_Addin"

    const-string v1, "DLNAAddinManager, stopManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/samsung/upnp/ControlPoint;->stop()Z

    .line 539
    iput-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    .line 540
    iput-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->positionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_17

    .line 543
    iput-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->positionThread:Ljava/lang/Thread;

    .line 546
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->stopSimpleServer()V

    .line 547
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 548
    return-void
.end method

.method public terminateManager()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/samsung/upnp/ControlPoint;->stop()Z

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    if-eqz v0, :cond_e

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->stopWorker()V

    .line 127
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;

    .line 128
    return-void
.end method
