.class public Lcom/syncmldstmo/database/smlDbSyncItemInfo;
.super Ljava/lang/Object;
.source "smlDbSyncItemInfo.java"


# instance fields
.field public DBCredType:I

.field public DBId:Ljava/lang/String;

.field public DBName:Ljava/lang/String;

.field public DBNextNonce:Ljava/lang/String;

.field public DBPassWord:Ljava/lang/String;

.field public IsDeviceFull:Z

.field public IsServerFull:Z

.field public LastAnchor:Ljava/lang/String;

.field public LastSyncTime:Ljava/lang/String;

.field public LastSyncType:I

.field public P2SAddItem:I

.field public P2SAddItemFail:I

.field public P2SDeleteItem:I

.field public P2SDeleteItemFail:I

.field public P2SReplaceItem:I

.field public P2SReplaceItemFail:I

.field public P2STotalItem:I

.field public PreSync:Z

.field public RealSyncType:I

.field public S2PAddItem:I

.field public S2PAddItemFail:I

.field public S2PDeleteItem:I

.field public S2PDeleteItemFail:I

.field public S2PReplaceItem:I

.field public S2PReplaceItemFail:I

.field public S2PTotalItem:I

.field public ServerID:I

.field public ServerSupportFieldLevel:I

.field public Sync:Z

.field public SyncDBResult:I

.field public SyncType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
