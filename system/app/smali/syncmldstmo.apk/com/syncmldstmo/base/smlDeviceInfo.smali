.class public Lcom/syncmldstmo/base/smlDeviceInfo;
.super Ljava/lang/Object;
.source "smlDeviceInfo.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;,
        Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;,
        Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;
    }
.end annotation


# instance fields
.field public ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

.field public datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

.field public devid:Ljava/lang/String;

.field public devtyp:Ljava/lang/String;

.field public fwv:Ljava/lang/String;

.field public hwv:Ljava/lang/String;

.field public man:Ljava/lang/String;

.field public mod:Ljava/lang/String;

.field public oem:Ljava/lang/String;

.field public supportlargeobj:Z

.field public supportnumberofchange:Z

.field public swv:Ljava/lang/String;

.field public utc:I

.field public verDTD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->utc:I

    .line 69
    new-array v0, v1, [Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    .line 70
    new-array v0, v1, [Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    .line 8
    return-void
.end method

.method public static smlRequestDeviceInfo(Ljava/lang/Object;)Z
    .registers 2
    .parameter "userInfo"

    .prologue
    .line 1148
    const/4 v0, 0x0

    return v0
.end method

.method public static smlSendDeviceInfo(Ljava/lang/Object;)Z
    .registers 4
    .parameter "userInfo"

    .prologue
    const/4 v1, 0x1

    .line 1135
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 1137
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    if-eq v2, v1, :cond_1c

    .line 1138
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    if-eq v2, v1, :cond_1c

    .line 1139
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    if-eq v2, v1, :cond_1c

    .line 1140
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    if-ne v2, v1, :cond_1d

    .line 1143
    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public smlGetSyncMLDeviceInfo_V11(Ljava/lang/Object;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 805
    .line 808
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->verDTD:Ljava/lang/String;

    .line 810
    const-string v0, "phone"

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->devtyp:Ljava/lang/String;

    .line 812
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->man:Ljava/lang/String;

    .line 813
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->mod:Ljava/lang/String;

    .line 814
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smlGetOEMName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->oem:Ljava/lang/String;

    .line 815
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->fwv:Ljava/lang/String;

    .line 816
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetHardwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->hwv:Ljava/lang/String;

    .line 817
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->swv:Ljava/lang/String;

    .line 820
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->devid:Ljava/lang/String;

    .line 821
    iput-boolean v7, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->supportnumberofchange:Z

    .line 823
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 825
    iput-boolean v7, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->supportlargeobj:Z

    .line 830
    :cond_41
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    new-instance v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    invoke-direct {v1}, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;-><init>()V

    aput-object v1, v0, v4

    .line 831
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    const-string v1, "./Address"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->sourceRef:Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    const-string v1, "Address Book"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->displayName:Ljava/lang/String;

    .line 833
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v1, "text/x-vcard"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    .line 834
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v1, "2.1"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    .line 835
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v1, "text/x-vcard"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    .line 836
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v1, "2.1"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    .line 837
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    const/16 v1, 0x1f4

    iput v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->maxGuidSize:I

    .line 838
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v7, v0, v4

    .line 839
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v8, v0, v7

    .line 840
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v5, v0, v8

    .line 841
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v6, v0, v5

    .line 842
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v1, 0x5

    aput v1, v0, v6

    .line 843
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v1, 0x5

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 844
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v1, 0x6

    const/4 v2, 0x7

    aput v2, v0, v1

    .line 845
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v4

    iput v7, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->numberOfctcap:I

    .line 850
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    new-instance v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    invoke-direct {v1}, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;-><init>()V

    aput-object v1, v0, v7

    .line 851
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    const-string v1, "./Event"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->sourceRef:Ljava/lang/String;

    .line 852
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    const-string v1, "Schedules"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->displayName:Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v1, "text/x-vcalendar"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v1, "1.0"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    .line 855
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v1, "text/x-vcalendar"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v1, "1.0"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    .line 857
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    const/16 v1, 0x1f4

    iput v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->maxGuidSize:I

    .line 858
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v7, v0, v4

    .line 859
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v8, v0, v7

    .line 860
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v5, v0, v8

    .line 861
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v6, v0, v5

    .line 862
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v1, 0x5

    aput v1, v0, v6

    .line 863
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v1, 0x5

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 864
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v1, 0x6

    const/4 v2, 0x7

    aput v2, v0, v1

    .line 865
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v0, v0, v7

    iput v7, v0, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->numberOfctcap:I

    .line 913
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    new-instance v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    invoke-direct {v1}, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;-><init>()V

    aput-object v1, v0, v4

    .line 915
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    const-string v1, "text/x-vcard"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctType:Ljava/lang/String;

    .line 916
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    const/16 v1, 0x64

    iput v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctValueSize:I

    .line 918
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v4

    .line 919
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "BEGIN"

    aput-object v1, v0, v4

    .line 920
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v7

    .line 921
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "VCARD"

    aput-object v1, v0, v7

    .line 922
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v8

    .line 923
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "END"

    aput-object v1, v0, v8

    .line 924
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v5

    .line 925
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "VCARD"

    aput-object v1, v0, v5

    .line 926
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v6

    .line 927
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "VERSION"

    aput-object v2, v0, v6

    .line 928
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v1

    .line 929
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "2.1"

    aput-object v3, v0, v1

    .line 930
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v2

    .line 931
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v3, "N"

    aput-object v3, v0, v2

    .line 932
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v1

    .line 933
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "chr"

    aput-object v3, v0, v1

    .line 934
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v2

    .line 935
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v3, "20"

    aput-object v3, v0, v2

    .line 936
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v1

    .line 937
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v3, "FN"

    aput-object v3, v0, v1

    .line 938
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 939
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 940
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 941
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string v3, "20"

    aput-object v3, v0, v1

    .line 942
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v2

    .line 943
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v3, "TEL"

    aput-object v3, v0, v2

    .line 944
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v1

    .line 945
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0xe

    const-string v3, "HOME"

    aput-object v3, v0, v1

    .line 946
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 947
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 948
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 949
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x10

    const-string v3, "40"

    aput-object v3, v0, v1

    .line 950
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v2

    .line 951
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v3, "WORK"

    aput-object v3, v0, v2

    .line 952
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v1

    .line 953
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x12

    const-string v3, "chr"

    aput-object v3, v0, v1

    .line 954
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v2

    .line 955
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v3, "40"

    aput-object v3, v0, v2

    .line 956
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 957
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x14

    const-string v3, "CELL"

    aput-object v3, v0, v1

    .line 958
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 959
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 960
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 961
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x16

    const-string v3, "40"

    aput-object v3, v0, v1

    .line 962
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v2

    .line 963
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v3, "FAX"

    aput-object v3, v0, v2

    .line 964
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v1

    .line 965
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x18

    const-string v3, "chr"

    aput-object v3, v0, v1

    .line 966
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v2

    .line 967
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x19

    const-string v3, "40"

    aput-object v3, v0, v2

    .line 968
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 969
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x1a

    const-string v3, "PREF"

    aput-object v3, v0, v1

    .line 970
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 971
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x1b

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 972
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 973
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x1c

    const-string v3, "40"

    aput-object v3, v0, v1

    .line 974
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v2

    .line 976
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x1d

    const-string v3, "VOICE"

    aput-object v3, v0, v2

    .line 977
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v1

    .line 978
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x1e

    const-string v3, "chr"

    aput-object v3, v0, v1

    .line 979
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v2

    .line 980
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v3, "40"

    aput-object v3, v0, v2

    .line 981
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 983
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x20

    const-string v3, "EMAIL"

    aput-object v3, v0, v1

    .line 984
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 985
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 986
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 987
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x22

    const-string v3, "50"

    aput-object v3, v0, v1

    .line 988
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v2

    .line 990
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x23

    const-string v3, "NOTE"

    aput-object v3, v0, v2

    .line 991
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v1

    .line 992
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x24

    const-string v3, "chr"

    aput-object v3, v0, v1

    .line 993
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v2

    .line 994
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "50"

    aput-object v1, v0, v2

    .line 998
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    new-instance v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    invoke-direct {v1}, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;-><init>()V

    aput-object v1, v0, v7

    .line 1000
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    const-string v1, "text/x-vcalendar"

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctType:Ljava/lang/String;

    .line 1001
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    const/16 v1, 0x21

    iput v1, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctValueSize:I

    .line 1003
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v4

    .line 1004
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "BEGIN"

    aput-object v1, v0, v4

    .line 1005
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v7

    .line 1006
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "VCALENDAR"

    aput-object v1, v0, v7

    .line 1007
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v8

    .line 1008
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "VEVENT"

    aput-object v1, v0, v8

    .line 1009
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v5

    .line 1010
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "VTODO"

    aput-object v1, v0, v5

    .line 1011
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v6

    .line 1012
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "END"

    aput-object v2, v0, v6

    .line 1014
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v1

    .line 1015
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "VERSION"

    aput-object v3, v0, v1

    .line 1016
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v2

    .line 1017
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v3, "1.0"

    aput-object v3, v0, v2

    .line 1018
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v1

    .line 1019
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "SUMMARY"

    aput-object v3, v0, v1

    .line 1020
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 1021
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 1022
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 1023
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v3, "15"

    aput-object v3, v0, v1

    .line 1024
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v2

    .line 1025
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v3, "DTSTART"

    aput-object v3, v0, v2

    .line 1026
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v1

    .line 1027
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string v3, "chr"

    aput-object v3, v0, v1

    .line 1028
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v2

    .line 1029
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v3, "20"

    aput-object v3, v0, v2

    .line 1030
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v1

    .line 1031
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0xe

    const-string v3, "DTEND"

    aput-object v3, v0, v1

    .line 1032
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 1033
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 1034
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v1

    .line 1035
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x10

    const-string v3, "RRULE"

    aput-object v3, v0, v1

    .line 1036
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 1037
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 1038
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v1

    .line 1039
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x12

    const-string v3, "AALARM"

    aput-object v3, v0, v1

    .line 1040
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 1041
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 1042
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v1

    .line 1043
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x14

    const-string v3, "CATEGORIES"

    aput-object v3, v0, v1

    .line 1044
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 1045
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 1046
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v1

    .line 1047
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x16

    const-string v3, "DESCRIPTION"

    aput-object v3, v0, v1

    .line 1048
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v2

    .line 1049
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v3, "chr"

    aput-object v3, v0, v2

    .line 1050
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 1051
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x18

    const-string v3, "100"

    aput-object v3, v0, v1

    .line 1052
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v2

    .line 1053
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x19

    const-string v3, "PRIORITY"

    aput-object v3, v0, v2

    .line 1054
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v1

    .line 1055
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x1a

    const-string v3, "chr"

    aput-object v3, v0, v1

    .line 1056
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v2

    .line 1057
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x1b

    const-string v3, "STATUS"

    aput-object v3, v0, v2

    .line 1058
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v1

    .line 1059
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x1c

    const-string v3, "chr"

    aput-object v3, v0, v1

    .line 1060
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v2

    .line 1061
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x1d

    const-string v3, "DUE"

    aput-object v3, v0, v2

    .line 1062
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v1

    .line 1063
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x1e

    const-string v3, "chr"

    aput-object v3, v0, v1

    .line 1064
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v4, v0, v2

    .line 1065
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v3, "LOCATION"

    aput-object v3, v0, v2

    .line 1066
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v5, v0, v1

    .line 1067
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v2, 0x20

    const-string v3, "chr"

    aput-object v3, v0, v1

    .line 1068
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v2

    .line 1069
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "15"

    aput-object v1, v0, v2

    .line 1070
    return-void
.end method

.method public smlGetSyncMLDeviceInfo_V12(Ljava/lang/Object;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 74
    .line 75
    const-string v0, ""

    .line 76
    const-string v0, ""

    .line 78
    const-string v0, "1.2"

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->verDTD:Ljava/lang/String;

    .line 79
    const-string v0, "phone"

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->devtyp:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->man:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->mod:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smlGetOEMName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->oem:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->fwv:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetHardwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->hwv:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->swv:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->devid:Ljava/lang/String;

    .line 87
    iput-boolean v6, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->supportnumberofchange:Z

    .line 88
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->supportlargeobj:Z

    .line 97
    const-string v0, "2.1"

    .line 98
    const-string v1, "text/x-vcard"

    .line 103
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    new-instance v3, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    invoke-direct {v3}, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;-><init>()V

    aput-object v3, v2, v9

    .line 104
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    const-string v3, "./Address"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->sourceRef:Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    const-string v3, "Address Book"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->displayName:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    iput-object v1, v2, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    iput-object v0, v2, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    iput-object v1, v2, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    iput-object v0, v2, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    const/16 v3, 0x1f4

    iput v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->maxGuidSize:I

    .line 111
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v6, v2, v9

    .line 112
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x2

    aput v3, v2, v6

    .line 113
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x2

    aput v10, v2, v3

    .line 114
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x4

    aput v3, v2, v10

    .line 115
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x4

    aput v7, v2, v3

    .line 116
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v8, v2, v7

    .line 117
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x7

    aput v3, v2, v8

    .line 118
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v9

    iput v6, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->numberOfctcap:I

    .line 122
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    new-instance v3, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    invoke-direct {v3}, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;-><init>()V

    aput-object v3, v2, v9

    .line 124
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    const-string v3, "text/x-vcard"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctType:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iput-object v0, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->verCT:Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    const/16 v3, 0x96

    iput v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctValueSize:I

    .line 128
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v9

    .line 129
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v9

    .line 130
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v6

    .line 131
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "BEGIN"

    aput-object v4, v2, v6

    .line 132
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 133
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v4, "VCARD"

    aput-object v4, v2, v3

    .line 134
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v10

    .line 135
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "0"

    aput-object v4, v2, v10

    .line 137
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v3

    .line 138
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v2, v3

    .line 139
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v7

    .line 140
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v3, "END"

    aput-object v3, v2, v7

    .line 141
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v8

    .line 142
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "VCARD"

    aput-object v4, v2, v8

    .line 143
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 144
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x8

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 146
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 147
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x9

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 148
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 149
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0xa

    const-string v5, "VERSION"

    aput-object v5, v2, v3

    .line 150
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 151
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0xb

    aput-object v0, v2, v4

    .line 152
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 153
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0xc

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 155
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 156
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0xd

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 157
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 158
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0xe

    const-string v5, "N"

    aput-object v5, v2, v3

    .line 159
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 160
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0xf

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 163
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 164
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x10

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 166
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 167
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x11

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 168
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 169
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x12

    const-string v5, "FN"

    aput-object v5, v2, v3

    .line 170
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 171
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x13

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 174
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 175
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x14

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 177
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 178
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x15

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 179
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 180
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x16

    const-string v5, "TEL"

    aput-object v5, v2, v3

    .line 181
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 182
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x17

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 185
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v4, 0x7

    aput v4, v2, v3

    .line 186
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x18

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 187
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v3, 0x2

    aput v3, v2, v4

    .line 188
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x19

    const-string v5, "TYPE"

    aput-object v5, v2, v4

    .line 189
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 190
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x1a

    const-string v5, "WORK"

    aput-object v5, v2, v3

    .line 191
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 192
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x1b

    const-string v5, "HOME"

    aput-object v5, v2, v4

    .line 193
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 194
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x1c

    const-string v5, "HOMEFAX"

    aput-object v5, v2, v3

    .line 195
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 196
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x1d

    const-string v5, "WORKFAX"

    aput-object v5, v2, v4

    .line 197
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 198
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x1e

    const-string v5, "VIDEO"

    aput-object v5, v2, v3

    .line 199
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 200
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x1f

    const-string v5, "CELL"

    aput-object v5, v2, v4

    .line 201
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 202
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x20

    const-string v5, "VOICE"

    aput-object v5, v2, v3

    .line 203
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/16 v3, 0x8

    aput v3, v2, v4

    .line 204
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x21

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 205
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 206
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x22

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 208
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 209
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x23

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 210
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 211
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x24

    const-string v5, "EMAIL"

    aput-object v5, v2, v3

    .line 212
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 213
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x25

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 216
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v4, 0x7

    aput v4, v2, v3

    .line 217
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x26

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 218
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v3, 0x2

    aput v3, v2, v4

    .line 219
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x27

    const-string v5, "TYPE"

    aput-object v5, v2, v4

    .line 220
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 221
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x28

    const-string v5, "INTERNET"

    aput-object v5, v2, v3

    .line 222
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 223
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x29

    const-string v5, "WORK"

    aput-object v5, v2, v4

    .line 224
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 225
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x2a

    const-string v5, "HOME"

    aput-object v5, v2, v3

    .line 226
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/16 v3, 0x8

    aput v3, v2, v4

    .line 227
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x2b

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 228
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 229
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x2c

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 231
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 232
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x2d

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 233
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 234
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x2e

    const-string v5, "URL"

    aput-object v5, v2, v3

    .line 235
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 236
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x2f

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 249
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 250
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x30

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 252
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 253
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x31

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 254
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 255
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x32

    const-string v5, "TITLE"

    aput-object v5, v2, v3

    .line 256
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 257
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x33

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 260
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 261
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x34

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 263
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 264
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x35

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 265
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 266
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x36

    const-string v5, "ORG"

    aput-object v5, v2, v3

    .line 267
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 268
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x37

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 271
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 272
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x38

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 274
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 275
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x39

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 276
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 277
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x3a

    const-string v5, "NICKNAME"

    aput-object v5, v2, v3

    .line 278
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 279
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x3b

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 282
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 283
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x3c

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 285
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 286
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x3d

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 287
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 288
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x3e

    const-string v5, "NOTE"

    aput-object v5, v2, v3

    .line 289
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 290
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x3f

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 293
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 294
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x40

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 296
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 297
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x41

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 298
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 299
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x42

    const-string v5, "BDAY"

    aput-object v5, v2, v3

    .line 300
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 301
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x43

    const-string v5, "datetime"

    aput-object v5, v2, v4

    .line 302
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 303
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x44

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 305
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 306
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x45

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 307
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 308
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x46

    const-string v5, "ADR"

    aput-object v5, v2, v3

    .line 309
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 310
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x47

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 313
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v4, 0x7

    aput v4, v2, v3

    .line 314
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x48

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 315
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v3, 0x2

    aput v3, v2, v4

    .line 316
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x49

    const-string v5, "TYPE"

    aput-object v5, v2, v4

    .line 317
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 318
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x4a

    const-string v5, "WORK"

    aput-object v5, v2, v3

    .line 319
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 320
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x4b

    const-string v5, "HOME"

    aput-object v5, v2, v4

    .line 321
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/16 v4, 0x8

    aput v4, v2, v3

    .line 322
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x4c

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 323
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v4

    .line 324
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x4d

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 337
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v3

    .line 338
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x4e

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 339
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v4

    .line 340
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x4f

    const-string v5, "PHOTO"

    aput-object v5, v2, v4

    .line 343
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v3

    .line 344
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x50

    const-string v5, "bin"

    aput-object v5, v2, v3

    .line 345
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v3, 0x7

    aput v3, v2, v4

    .line 346
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x51

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 347
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v4, 0x2

    aput v4, v2, v3

    .line 348
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x52

    const-string v5, "TYPE"

    aput-object v5, v2, v3

    .line 349
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 350
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x53

    const-string v5, "JPEG"

    aput-object v5, v2, v4

    .line 351
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 352
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x54

    const-string v5, "GIF"

    aput-object v5, v2, v3

    .line 353
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 354
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x55

    const-string v5, "BMP"

    aput-object v5, v2, v4

    .line 355
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 356
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x56

    const-string v5, "PNG"

    aput-object v5, v2, v3

    .line 357
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 358
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x57

    const-string v5, "WBMP"

    aput-object v5, v2, v4

    .line 359
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 360
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x58

    const-string v5, "TIFF"

    aput-object v5, v2, v3

    .line 361
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 362
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x59

    const-string v5, "AGIF"

    aput-object v5, v2, v4

    .line 363
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/16 v4, 0x8

    aput v4, v2, v3

    .line 364
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x5a

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 365
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v4

    .line 366
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    .line 390
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    new-instance v3, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    invoke-direct {v3}, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;-><init>()V

    aput-object v3, v2, v6

    .line 391
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    const-string v3, "./Event"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->sourceRef:Ljava/lang/String;

    .line 392
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    const-string v3, "Schedules"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->displayName:Ljava/lang/String;

    .line 393
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v3, "text/x-vcalendar"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    .line 394
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v3, "1.0"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    .line 395
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v3, "text/x-vcalendar"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    .line 396
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    const-string v3, "1.0"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    .line 397
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    const/16 v3, 0x1f4

    iput v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->maxGuidSize:I

    .line 398
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v6, v2, v9

    .line 399
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x2

    aput v3, v2, v6

    .line 400
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x2

    aput v10, v2, v3

    .line 401
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x4

    aput v3, v2, v10

    .line 402
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x4

    aput v7, v2, v3

    .line 403
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v8, v2, v7

    .line 404
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x7

    aput v3, v2, v8

    .line 405
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v2, v2, v6

    iput v6, v2, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->numberOfctcap:I

    .line 409
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    new-instance v3, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    invoke-direct {v3}, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;-><init>()V

    aput-object v3, v2, v6

    .line 411
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    const-string v3, "text/x-vcalendar"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctType:Ljava/lang/String;

    .line 412
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    const-string v3, "1.0"

    iput-object v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->verCT:Ljava/lang/String;

    .line 413
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    const/16 v3, 0x46

    iput v3, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctValueSize:I

    .line 415
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v9

    .line 416
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v9

    .line 417
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v6

    .line 418
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "BEGIN"

    aput-object v4, v2, v6

    .line 419
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 420
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v4, "VCALENDAR"

    aput-object v4, v2, v3

    .line 421
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v10

    .line 422
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "VEVENT"

    aput-object v4, v2, v10

    .line 423
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 424
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v4, "VTODO"

    aput-object v4, v2, v3

    .line 425
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v7

    .line 426
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    .line 428
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v8

    .line 429
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "0"

    aput-object v4, v2, v8

    .line 430
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 431
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x8

    const-string v5, "END"

    aput-object v5, v2, v3

    .line 433
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 434
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x9

    const-string v5, "VCALENDAR"

    aput-object v5, v2, v4

    .line 435
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 436
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0xa

    const-string v5, "VEVENT"

    aput-object v5, v2, v3

    .line 437
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 438
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0xb

    const-string v5, "VTODO"

    aput-object v5, v2, v4

    .line 439
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 440
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0xc

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 442
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 443
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0xd

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 444
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 445
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0xe

    const-string v5, "VERSION"

    aput-object v5, v2, v3

    .line 446
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 447
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0xf

    const-string v5, "1.0"

    aput-object v5, v2, v4

    .line 448
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 449
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x10

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 451
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 452
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x11

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 453
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 454
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x12

    const-string v5, "SUMMARY"

    aput-object v5, v2, v3

    .line 455
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 456
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x13

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 459
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 460
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x14

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 462
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 463
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x15

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 464
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 465
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x16

    const-string v5, "DESCRIPTION"

    aput-object v5, v2, v3

    .line 466
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 467
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x17

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 470
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 471
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x18

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 473
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 474
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x19

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 475
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 476
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x1a

    const-string v5, "LOCATION"

    aput-object v5, v2, v3

    .line 477
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 478
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x1b

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 481
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 482
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x1c

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 484
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 485
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x1d

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 486
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 487
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x1e

    const-string v5, "DTSTART"

    aput-object v5, v2, v3

    .line 488
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 489
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x1f

    const-string v5, "datetime"

    aput-object v5, v2, v4

    .line 490
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 491
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x20

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 493
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 494
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x21

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 495
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 496
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x22

    const-string v5, "DTEND"

    aput-object v5, v2, v3

    .line 497
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 498
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x23

    const-string v5, "datetime"

    aput-object v5, v2, v4

    .line 499
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 500
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x24

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 502
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 503
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x25

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 504
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 505
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x26

    const-string v5, "AALARM"

    aput-object v5, v2, v3

    .line 506
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 507
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x27

    const-string v5, "datetime"

    aput-object v5, v2, v4

    .line 508
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 509
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x28

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 511
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 512
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x29

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 513
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 514
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x2a

    const-string v5, "RRULE"

    aput-object v5, v2, v3

    .line 515
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 516
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x2b

    const-string v5, "datetime"

    aput-object v5, v2, v4

    .line 517
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v3

    .line 518
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x2c

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 520
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v4

    .line 521
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x2d

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 522
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v3

    .line 523
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x2e

    const-string v5, "CLASS"

    aput-object v5, v2, v3

    .line 524
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v4

    .line 525
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x2f

    const-string v5, "chr"

    aput-object v5, v2, v4

    .line 526
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 527
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x30

    const-string v5, "PUBLIC"

    aput-object v5, v2, v3

    .line 528
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v4

    .line 529
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x31

    const-string v5, "PRIVATE"

    aput-object v5, v2, v4

    .line 530
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v2, v3

    .line 531
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x32

    const-string v5, "CONFIDENTIAL"

    aput-object v5, v2, v3

    .line 532
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v4

    .line 533
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x33

    const-string v5, "0"

    aput-object v5, v2, v4

    .line 535
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v2, v3

    .line 536
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x34

    const-string v5, "0"

    aput-object v5, v2, v3

    .line 537
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v2, v4

    .line 538
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x35

    const-string v5, "X-ALLDAY"

    aput-object v5, v2, v4

    .line 539
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v2, v3

    .line 540
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x36

    const-string v5, "chr"

    aput-object v5, v2, v3

    .line 541
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v2, v4

    .line 542
    iget-object v2, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    .line 548
    const/4 v2, 0x2

    .line 549
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    new-instance v4, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    invoke-direct {v4}, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;-><init>()V

    aput-object v4, v3, v2

    .line 550
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v3, v3, v2

    const-string v4, "./Profile"

    iput-object v4, v3, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->sourceRef:Ljava/lang/String;

    .line 551
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v3, v3, v2

    const-string v4, "Profile"

    iput-object v4, v3, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->displayName:Ljava/lang/String;

    .line 552
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    iput-object v1, v3, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    .line 553
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->txPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    iput-object v0, v3, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    .line 554
    iget-object v3, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    iput-object v1, v3, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->ctType:Ljava/lang/String;

    .line 555
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->rxPref:Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;

    iput-object v0, v1, Lcom/syncmldstmo/base/smlDeviceInfo$MimeType;->verCT:Ljava/lang/String;

    .line 556
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v1, v1, v2

    const/16 v3, 0x1f4

    iput v3, v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->maxGuidSize:I

    .line 557
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v6, v1, v9

    .line 558
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x2

    aput v3, v1, v6

    .line 559
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x2

    aput v10, v1, v3

    .line 560
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x4

    aput v3, v1, v10

    .line 561
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x4

    aput v7, v1, v3

    .line 562
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    aput v8, v1, v7

    .line 563
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->syncType:[I

    const/4 v3, 0x7

    aput v3, v1, v8

    .line 564
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->datastore:[Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;

    aget-object v1, v1, v2

    iput v6, v1, Lcom/syncmldstmo/base/smlDeviceInfo$DataStore;->numberOfctcap:I

    .line 568
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    new-instance v3, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    invoke-direct {v3}, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;-><init>()V

    aput-object v3, v1, v2

    .line 570
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    const-string v3, "text/x-vcard"

    iput-object v3, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctType:Ljava/lang/String;

    .line 571
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iput-object v0, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->verCT:Ljava/lang/String;

    .line 572
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    const/16 v3, 0x96

    iput v3, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->ctValueSize:I

    .line 574
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v1, v9

    .line 575
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v1, v9

    .line 576
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v1, v6

    .line 577
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "BEGIN"

    aput-object v4, v1, v6

    .line 578
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v1, v3

    .line 579
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v4, "VCARD"

    aput-object v4, v1, v3

    .line 580
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v1, v10

    .line 581
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "0"

    aput-object v4, v1, v10

    .line 583
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v1, v3

    .line 584
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v1, v3

    .line 585
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v1, v7

    .line 586
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v3, "END"

    aput-object v3, v1, v7

    .line 587
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v1, v8

    .line 588
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "VCARD"

    aput-object v4, v1, v8

    .line 589
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v1, v3

    .line 590
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0x8

    const-string v5, "0"

    aput-object v5, v1, v3

    .line 592
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v1, v4

    .line 593
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x9

    const-string v5, "0"

    aput-object v5, v1, v4

    .line 594
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v1, v3

    .line 595
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v4, 0xa

    const-string v5, "VERSION"

    aput-object v5, v1, v3

    .line 596
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v1, v4

    .line 597
    iget-object v1, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0xb

    aput-object v0, v1, v4

    .line 598
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v3

    .line 599
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 601
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v1

    .line 602
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0xd

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 603
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v3

    .line 604
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v4, "N"

    aput-object v4, v0, v3

    .line 605
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v1

    .line 606
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0xf

    const-string v4, "chr"

    aput-object v4, v0, v1

    .line 609
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v3

    .line 610
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 612
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v1

    .line 613
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x11

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 614
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v3

    .line 615
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v4, "FN"

    aput-object v4, v0, v3

    .line 616
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v1

    .line 617
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x13

    const-string v4, "chr"

    aput-object v4, v0, v1

    .line 620
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v3

    .line 621
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 623
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v1

    .line 624
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x15

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 625
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v3

    .line 626
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v4, "TEL"

    aput-object v4, v0, v3

    .line 627
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v1

    .line 628
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x17

    const-string v4, "chr"

    aput-object v4, v0, v1

    .line 631
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v1, 0x7

    aput v1, v0, v3

    .line 632
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x18

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 633
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v3, 0x2

    aput v3, v0, v1

    .line 634
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x19

    const-string v4, "TYPE"

    aput-object v4, v0, v1

    .line 635
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v3

    .line 636
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x1a

    const-string v4, "WORK"

    aput-object v4, v0, v3

    .line 637
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 638
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x1b

    const-string v4, "HOME"

    aput-object v4, v0, v1

    .line 639
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v3

    .line 640
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x1c

    const-string v4, "FAX"

    aput-object v4, v0, v3

    .line 641
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 642
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x1d

    const-string v4, "VIDEO"

    aput-object v4, v0, v1

    .line 643
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v3

    .line 644
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x1e

    const-string v4, "CELL"

    aput-object v4, v0, v3

    .line 645
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 646
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x1f

    const-string v4, "VOICE"

    aput-object v4, v0, v1

    .line 647
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/16 v1, 0x8

    aput v1, v0, v3

    .line 648
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 649
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 650
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x21

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 652
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v3

    .line 653
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 654
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v1

    .line 655
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x23

    const-string v4, "EMAIL"

    aput-object v4, v0, v1

    .line 656
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v3

    .line 657
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x24

    const-string v4, "chr"

    aput-object v4, v0, v3

    .line 660
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v3, 0x7

    aput v3, v0, v1

    .line 661
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x25

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 662
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v1, 0x2

    aput v1, v0, v3

    .line 663
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v4, "TYPE"

    aput-object v4, v0, v3

    .line 664
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 665
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x27

    const-string v4, "INTERNET"

    aput-object v4, v0, v1

    .line 666
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v3

    .line 667
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x28

    const-string v4, "WORK"

    aput-object v4, v0, v3

    .line 668
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 669
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x29

    const-string v4, "HOME"

    aput-object v4, v0, v1

    .line 670
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/16 v1, 0x8

    aput v1, v0, v3

    .line 671
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x2a

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 672
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 673
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x2b

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 675
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v3

    .line 676
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x2c

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 677
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v1

    .line 678
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x2d

    const-string v4, "URL"

    aput-object v4, v0, v1

    .line 679
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v3

    .line 680
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x2e

    const-string v4, "chr"

    aput-object v4, v0, v3

    .line 693
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 694
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x2f

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 696
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v3

    .line 697
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x30

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 698
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v1

    .line 699
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x31

    const-string v4, "TITLE"

    aput-object v4, v0, v1

    .line 700
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v3

    .line 701
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x32

    const-string v4, "chr"

    aput-object v4, v0, v3

    .line 704
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 705
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x33

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 707
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v3

    .line 708
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x34

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 709
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v1

    .line 710
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x35

    const-string v4, "ORG"

    aput-object v4, v0, v1

    .line 711
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v3

    .line 712
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x36

    const-string v4, "chr"

    aput-object v4, v0, v3

    .line 715
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 716
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x37

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 718
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v3

    .line 719
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x38

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 720
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v1

    .line 721
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x39

    const-string v4, "NICKNAME"

    aput-object v4, v0, v1

    .line 722
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v3

    .line 723
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x3a

    const-string v4, "chr"

    aput-object v4, v0, v3

    .line 726
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 727
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x3b

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 729
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v3

    .line 730
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 731
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v1

    .line 732
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x3d

    const-string v4, "NOTE"

    aput-object v4, v0, v1

    .line 733
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v3

    .line 734
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v4, "chr"

    aput-object v4, v0, v3

    .line 737
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 738
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x3f

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 740
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v3

    .line 741
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x40

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 742
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v1

    .line 743
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x41

    const-string v4, "BDAY"

    aput-object v4, v0, v1

    .line 744
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v3

    .line 745
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x42

    const-string v4, "datetime"

    aput-object v4, v0, v3

    .line 746
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v1

    .line 747
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x43

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 749
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v3

    .line 750
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x44

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 751
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v1

    .line 752
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x45

    const-string v4, "ADR"

    aput-object v4, v0, v1

    .line 753
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v3

    .line 754
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x46

    const-string v4, "chr"

    aput-object v4, v0, v3

    .line 757
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v3, 0x7

    aput v3, v0, v1

    .line 758
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x47

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 759
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v1, 0x2

    aput v1, v0, v3

    .line 760
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x48

    const-string v4, "TYPE"

    aput-object v4, v0, v3

    .line 761
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 762
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x49

    const-string v4, "WORK"

    aput-object v4, v0, v1

    .line 763
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v3

    .line 764
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x4a

    const-string v4, "HOME"

    aput-object v4, v0, v3

    .line 765
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/16 v3, 0x8

    aput v3, v0, v1

    .line 766
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x4b

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 767
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v3

    .line 768
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x4c

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 770
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v7, v0, v1

    .line 771
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x4d

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 772
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v9, v0, v3

    .line 773
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x4e

    const-string v4, "PHOTO"

    aput-object v4, v0, v3

    .line 776
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v10, v0, v1

    .line 777
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x4f

    const-string v4, "bin"

    aput-object v4, v0, v1

    .line 778
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v1, 0x7

    aput v1, v0, v3

    .line 779
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x50

    const-string v4, "0"

    aput-object v4, v0, v3

    .line 780
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/4 v3, 0x2

    aput v3, v0, v1

    .line 781
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x51

    const-string v4, "TYPE"

    aput-object v4, v0, v1

    .line 782
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v3

    .line 783
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x52

    const-string v4, "JPEG"

    aput-object v4, v0, v3

    .line 784
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 785
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x53

    const-string v4, "GIF"

    aput-object v4, v0, v1

    .line 786
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v3

    .line 787
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x54

    const-string v4, "BMP"

    aput-object v4, v0, v3

    .line 788
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 789
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x55

    const-string v4, "PNG"

    aput-object v4, v0, v1

    .line 790
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v3

    .line 791
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x56

    const-string v4, "WBMP"

    aput-object v4, v0, v3

    .line 792
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v1

    .line 793
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x57

    const-string v4, "TIFF"

    aput-object v4, v0, v1

    .line 794
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v6, v0, v3

    .line 795
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v1, 0x58

    const-string v4, "AGIF"

    aput-object v4, v0, v3

    .line 796
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    const/16 v3, 0x8

    aput v3, v0, v1

    .line 797
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const/16 v3, 0x59

    const-string v4, "0"

    aput-object v4, v0, v1

    .line 798
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->type:[I

    aput v8, v0, v3

    .line 799
    iget-object v0, p0, Lcom/syncmldstmo/base/smlDeviceInfo;->ctcap:[Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDeviceInfo$CtCap;->value:[Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    .line 801
    return-void
.end method
