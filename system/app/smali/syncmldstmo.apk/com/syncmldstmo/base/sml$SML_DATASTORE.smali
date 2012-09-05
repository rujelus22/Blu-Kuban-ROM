.class public Lcom/syncmldstmo/base/sml$SML_DATASTORE;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_DATASTORE"
.end annotation


# instance fields
.field public bSupportHierachicalSync:J

.field public nMaxGuidSize:J

.field public pDisplayName:Ljava/lang/String;

.field public pDsMem:Lcom/syncmldstmo/base/sml$SML_DSMEM;

.field public pListCTCap:Lcom/syncmldstmo/base/smlList;

.field public pListFilterCap:Lcom/syncmldstmo/base/smlList;

.field public pListFilterRx:Lcom/syncmldstmo/base/smlList;

.field public pListRx:Lcom/syncmldstmo/base/smlList;

.field public pListTx:Lcom/syncmldstmo/base/smlList;

.field public pRxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

.field public pSourceRef:Ljava/lang/String;

.field public pSyncCap:Lcom/syncmldstmo/base/sml$SML_SYNCCAP;

.field public pTxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2368
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2373
    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pRxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    .line 2375
    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pTxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    .line 2378
    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pDsMem:Lcom/syncmldstmo/base/sml$SML_DSMEM;

    .line 2380
    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pSyncCap:Lcom/syncmldstmo/base/sml$SML_SYNCCAP;

    .line 2368
    return-void
.end method
