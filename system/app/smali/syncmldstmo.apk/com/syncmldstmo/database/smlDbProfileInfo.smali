.class public Lcom/syncmldstmo/database/smlDbProfileInfo;
.super Ljava/lang/Object;
.source "smlDbProfileInfo.java"


# instance fields
.field public CPCount:I

.field public CachedMap:Lcom/syncmldstmo/database/smlDbCachedMap;

.field public Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

.field public Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

.field public CredType:I

.field public ErrorCode:I

.field public HttpConnectionMode:I

.field public Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

.field public NetworkConnIndex:I

.field public NextNonce:Ljava/lang/String;

.field public ObexType:I

.field public OldIMSI:Ljava/lang/String;

.field public Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

.field public ServerID:Ljava/lang/String;

.field public ServerPS:Ljava/lang/String;

.field public ServerUrl:Ljava/lang/String;

.field public SessionId:I

.field public SyncResult:I

.field public Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

.field public UISyncType:I

.field public bAutoSync:Z

.field public bCachedmapflag:Z

.field public bIsAutoSyncOffCalendar:Z

.field public bIsAutoSyncOffContact:Z

.field public bIsMember:Z

.field public bIsSyncFlag:Z

.field public empty1:I

.field public empty2:I

.field public empty3:Ljava/lang/String;

.field public empty4:Ljava/lang/String;

.field public empty5:Ljava/lang/String;

.field public magicNumber:I

.field public nFirstSyncComplete:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/syncmldstmo/database/smlDbCachedMap;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlDbCachedMap;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->CachedMap:Lcom/syncmldstmo/database/smlDbCachedMap;

    .line 36
    new-instance v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlDbSyncItemInfo;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 37
    new-instance v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlDbSyncItemInfo;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 38
    new-instance v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlDbSyncItemInfo;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 39
    new-instance v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlDbSyncItemInfo;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 40
    new-instance v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlDbSyncItemInfo;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    return-void
.end method
