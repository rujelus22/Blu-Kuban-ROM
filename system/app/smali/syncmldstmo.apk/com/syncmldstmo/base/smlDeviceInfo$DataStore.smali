.class public Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;
.super Ljava/lang/Object;
.source "smlDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStore"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public maxGuidSize:I

.field public numberOfctcap:I

.field public rx:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

.field public rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

.field public sourceRef:Ljava/lang/String;

.field public syncType:[I

.field public tx:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

.field public txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    .line 29
    new-instance v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    .line 30
    new-instance v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->tx:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    .line 31
    new-instance v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rx:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->numberOfctcap:I

    .line 23
    return-void
.end method
