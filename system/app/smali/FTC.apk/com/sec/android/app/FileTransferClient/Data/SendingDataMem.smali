.class public Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;
.super Ljava/lang/Object;
.source "SendingDataMem.java"


# static fields
.field public static mDeviceHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/application/fileshare/api/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/ResultData;",
            ">;"
        }
    .end annotation
.end field

.field public static mSDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/SessionData;",
            ">;"
        }
    .end annotation
.end field

.field public static mSendingDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/application/fileshare/api/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mSendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/application/fileshare/api/SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mSessionHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/application/fileshare/api/SessionInfo;",
            "Lcom/sec/android/app/FileTransferClient/Data/SessionState;",
            ">;"
        }
    .end annotation
.end field

.field public static mSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/application/fileshare/api/SessionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mDeviceHash:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method
