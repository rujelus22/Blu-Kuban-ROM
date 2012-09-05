.class public Lcom/syncmldstmo/database/smlDb;
.super Ljava/lang/Object;
.source "smlDb.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;
.implements Ljava/io/Serializable;


# static fields
.field private static bProfileLoaded:Z = false

.field public static m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo; = null

.field public static m_NetworkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile; = null

.field public static m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo; = null

.field private static final serialVersionUID:J = 0x1L

.field public static smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syncmldstmo/database/smlDb;->bProfileLoaded:Z

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/syncmldstmo/database/smlDbProfileInfo;

    sput-object v0, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 20
    new-instance v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;-><init>()V

    sput-object v0, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    .line 21
    new-instance v0, Lcom/syncmldstmo/database/smlDbNetworkProfile;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlDbNetworkProfile;-><init>()V

    sput-object v0, Lcom/syncmldstmo/database/smlDb;->m_NetworkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    .line 22
    new-instance v0, Lcom/syncmldstmo/preconfig/smlPreconfig;

    invoke-direct {v0}, Lcom/syncmldstmo/preconfig/smlPreconfig;-><init>()V

    sput-object v0, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlDbInit()V
    .registers 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 29
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_5
    const/4 v1, 0x3

    if-ge v0, v1, :cond_a9

    .line 31
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    new-instance v2, Lcom/syncmldstmo/database/smlDbProfileInfo;

    invoke-direct {v2}, Lcom/syncmldstmo/database/smlDbProfileInfo;-><init>()V

    aput-object v2, v1, v0

    .line 34
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileExistsRow(J)Z

    move-result v1

    if-nez v1, :cond_77

    .line 36
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v1, v0}, Lcom/syncmldstmo/database/smlDb;->smlResetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 37
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileInsertRow(Lcom/syncmldstmo/database/smlDbProfileInfo;)V

    .line 45
    :goto_28
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/syncmldstmo/database/smlDbSqlSyncItemContact;->smlDbSqlSyncItemContactExistsRow(J)Z

    move-result v1

    if-nez v1, :cond_82

    .line 47
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v5, v1, v0}, Lcom/syncmldstmo/database/smlDb;->smlResetSyncInfo(ILcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 48
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-static {v1}, Lcom/syncmldstmo/database/smlDbSqlSyncItemContact;->smlDbSqlSyncItemContactInsertRow(Lcom/syncmldstmo/database/smlDbSyncItemInfo;)V

    .line 57
    :goto_41
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/syncmldstmo/database/smlDbSqlSyncItemCalendar;->smlDbSqlSyncItemCalendarExistsRow(J)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 59
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v4, v1, v0}, Lcom/syncmldstmo/database/smlDb;->smlResetSyncInfo(ILcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 60
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-static {v1}, Lcom/syncmldstmo/database/smlDbSqlSyncItemCalendar;->smlDbSqlSyncItemCalendarInsertRow(Lcom/syncmldstmo/database/smlDbSyncItemInfo;)V

    .line 96
    :goto_5a
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->smlDbSqlSyncItemProfileExistsRow(J)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 98
    const/4 v1, 0x4

    sget-object v2, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v2, v2, v0

    invoke-static {v1, v2, v0}, Lcom/syncmldstmo/database/smlDb;->smlResetSyncInfo(ILcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 99
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-static {v1}, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->smlDbSqlSyncItemProfileInsertRow(Lcom/syncmldstmo/database/smlDbSyncItemInfo;)V

    .line 29
    :goto_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 41
    :cond_77
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileFetchRow(JLcom/syncmldstmo/database/smlDbProfileInfo;)Ljava/lang/Object;

    goto :goto_28

    .line 52
    :cond_82
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-static {v1, v2, v3}, Lcom/syncmldstmo/database/smlDbSqlSyncItemContact;->smlDbSqlSyncItemContactFetchRow(JLcom/syncmldstmo/database/smlDbSyncItemInfo;)Ljava/lang/Object;

    goto :goto_41

    .line 64
    :cond_8f
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-static {v1, v2, v3}, Lcom/syncmldstmo/database/smlDbSqlSyncItemCalendar;->smlDbSqlSyncItemCalendarFetchRow(JLcom/syncmldstmo/database/smlDbSyncItemInfo;)Ljava/lang/Object;

    goto :goto_5a

    .line 103
    :cond_9c
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-static {v1, v2, v3}, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->smlDbSqlSyncItemProfileFetchRow(JLcom/syncmldstmo/database/smlDbSyncItemInfo;)Ljava/lang/Object;

    goto :goto_74

    .line 109
    :cond_a9
    invoke-static {v6, v7}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileExistsRow(J)Z

    move-result v1

    if-nez v1, :cond_e5

    .line 111
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    invoke-static {v1, v5}, Lcom/syncmldstmo/database/smlDb;->smlResetActivedProfileInfo(Ljava/lang/Object;I)V

    .line 112
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    invoke-static {v1}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileInsertRow(Lcom/syncmldstmo/database/smlDbActivedProfileInfo;)V

    .line 120
    :goto_b9
    const/4 v0, 0x0

    :goto_ba
    if-ge v0, v4, :cond_f8

    .line 122
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_NetworkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    new-instance v2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    invoke-direct {v2}, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;-><init>()V

    aput-object v2, v1, v0

    .line 123
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->smlDbSqlNetworkProfileExistsRow(J)Z

    move-result v1

    if-nez v1, :cond_eb

    .line 125
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_NetworkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v1, v0}, Lcom/syncmldstmo/database/smlDb;->smlResetNetworkProfileInfo(Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;I)V

    .line 126
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_NetworkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->smlDbSqlNetworkProfileInsertRow(Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;)V

    .line 120
    :goto_e2
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 116
    :cond_e5
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    invoke-static {v6, v7, v1}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileFetchRow(JLcom/syncmldstmo/database/smlDbActivedProfileInfo;)Ljava/lang/Object;

    goto :goto_b9

    .line 130
    :cond_eb
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->m_NetworkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->smlDbSqlNetworkProfileFetchRow(JLcom/syncmldstmo/database/smlDbNetworkProfileInfo;)Ljava/lang/Object;

    goto :goto_e2

    .line 133
    :cond_f8
    sput-boolean v4, Lcom/syncmldstmo/database/smlDb;->bProfileLoaded:Z

    .line 134
    return-void
.end method

.method public static smlDeleteAllCachedMap()V
    .registers 0

    .prologue
    .line 560
    invoke-static {}, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->smlDbSqlCachedMapDeleteAllRow()V

    .line 561
    return-void
.end method

.method public static smlGetActivedProfileIndex()I
    .registers 1

    .prologue
    .line 256
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    iget v0, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nProfileIndex:I

    return v0
.end method

.method public static smlGetActivedProfileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileName:[Ljava/lang/String;

    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    iget v1, v1, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nProfileIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static smlGetAutoSyncOffCalendar()Z
    .registers 2

    .prologue
    .line 806
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 807
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffCalendar:Z

    return v1
.end method

.method public static smlGetAutoSyncOffContact()Z
    .registers 2

    .prologue
    .line 793
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 794
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffContact:Z

    return v1
.end method

.method public static smlGetCPCount()I
    .registers 2

    .prologue
    .line 780
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 781
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->CPCount:I

    return v1
.end method

.method public static smlGetCachedMap(I)Lcom/syncmldstmo/database/smlDbCachedMap;
    .registers 4
    .parameter "nIndex"

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, CachedMap:Lcom/syncmldstmo/database/smlDbCachedMap;
    add-int/lit8 v1, p0, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->smlDbSqlCachedMapExistsRow(J)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Exist CachedMap["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Db !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 555
    :goto_2b
    return-object v0

    .line 552
    :cond_2c
    new-instance v0, Lcom/syncmldstmo/database/smlDbCachedMap;

    .end local v0           #CachedMap:Lcom/syncmldstmo/database/smlDbCachedMap;
    invoke-direct {v0}, Lcom/syncmldstmo/database/smlDbCachedMap;-><init>()V

    .line 553
    .restart local v0       #CachedMap:Lcom/syncmldstmo/database/smlDbCachedMap;
    add-int/lit8 v1, p0, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->smlDbSqlCachedMapFetchRow(JLcom/syncmldstmo/database/smlDbCachedMap;)Lcom/syncmldstmo/database/smlDbCachedMap;

    goto :goto_2b
.end method

.method public static smlGetCachedMapCount()I
    .registers 1

    .prologue
    .line 565
    invoke-static {}, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->smlDbSqlCachedMapCount()I

    move-result v0

    return v0
.end method

.method public static smlGetCurrentProfileInfo()Lcom/syncmldstmo/database/smlDbProfileInfo;
    .registers 5

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, ProfileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    const/4 v1, 0x0

    .line 199
    .local v1, nProfileIndex:I
    sget-boolean v2, Lcom/syncmldstmo/database/smlDb;->bProfileLoaded:Z

    if-nez v2, :cond_9

    .line 200
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlDbInit()V

    .line 202
    :cond_9
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    .line 203
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nProfileIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 205
    sget-object v2, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v0, v2, v1

    .line 207
    return-object v0
.end method

.method public static smlGetCurrentSyncDBInfo(I)Lcom/syncmldstmo/database/smlDbSyncItemInfo;
    .registers 5
    .parameter "dbid"

    .prologue
    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, SyncItemInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;
    const/4 v0, 0x0

    .line 501
    .local v0, ProfileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    const/4 v2, 0x0

    .line 503
    .local v2, nProfileIndex:I
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v2

    .line 506
    sget-object v3, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v0, v3, v2

    .line 508
    if-nez p0, :cond_10

    .line 510
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 533
    :cond_f
    :goto_f
    return-object v1

    .line 512
    :cond_10
    const/4 v3, 0x1

    if-ne p0, v3, :cond_16

    .line 515
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    goto :goto_f

    .line 517
    :cond_16
    const/4 v3, 0x2

    if-eq p0, v3, :cond_f

    .line 522
    const/4 v3, 0x3

    if-eq p0, v3, :cond_f

    .line 527
    const/4 v3, 0x4

    if-ne p0, v3, :cond_f

    .line 530
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    goto :goto_f
.end method

.method public static smlGetFirstSyncComplete()I
    .registers 2

    .prologue
    .line 819
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 820
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->nFirstSyncComplete:I

    return v1
.end method

.method public static smlGetIsMember()Z
    .registers 2

    .prologue
    .line 767
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 768
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    return v1
.end method

.method public static smlGetNetworkConnIndex()I
    .registers 2

    .prologue
    .line 227
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    iget v1, v1, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nProfileIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    return v0
.end method

.method public static smlGetNetworkProfile()Lcom/syncmldstmo/database/smlDbNetworkProfile;
    .registers 1

    .prologue
    .line 315
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_NetworkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    return-object v0
.end method

.method public static smlGetPhoneIMSI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 744
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    .line 745
    .local v1, nIndex:I
    const-string v0, ""

    .line 746
    .local v0, imsi:Ljava/lang/String;
    sget-object v2, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->OldIMSI:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 747
    sget-object v2, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->OldIMSI:Ljava/lang/String;

    .line 748
    :cond_18
    return-object v0
.end method

.method public static smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;
    .registers 2
    .parameter "index"

    .prologue
    .line 175
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static smlGetProfileName(I)Ljava/lang/String;
    .registers 2
    .parameter "index"

    .prologue
    .line 266
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileName:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static smlGetProfileSessionId()I
    .registers 2

    .prologue
    .line 719
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 720
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->SessionId:I

    return v1
.end method

.method public static smlGetProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "szUrl"

    .prologue
    .line 613
    const/4 v0, -0x1

    .line 614
    .local v0, nTempPos:I
    const-string v1, "http"

    .line 616
    .local v1, szProtocol:Ljava/lang/String;
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 618
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 620
    const/4 v2, -0x1

    if-eq v0, v2, :cond_17

    .line 622
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 626
    :cond_17
    return-object v1
.end method

.method public static smlInitSyncResultValues()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 575
    invoke-static {}, Lcom/syncmldstmo/base/smlLib;->smlGetCurrentLocalTime()Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, time:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    const/4 v3, 0x5

    if-ge v1, v3, :cond_37

    .line 579
    invoke-static {v1}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentSyncDBInfo(I)Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    move-result-object v0

    .line 581
    .local v0, DBInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;
    if-eqz v0, :cond_34

    iget-boolean v3, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_34

    .line 583
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    .line 584
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 585
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    .line 586
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    .line 587
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    .line 588
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    .line 589
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    .line 590
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    .line 592
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    .line 593
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    .line 594
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    .line 595
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    .line 596
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    .line 597
    iput v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    .line 602
    const/4 v3, 0x1

    iput v3, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncDBResult:I

    .line 604
    iput-object v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    .line 577
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 608
    .end local v0           #DBInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;
    :cond_37
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlSetCurrentProfileInfo()V

    .line 609
    return-void
.end method

.method public static smlInsertCachedMap(Lcom/syncmldstmo/database/smlDbCachedMap;)V
    .registers 1
    .parameter "cachedMap"

    .prologue
    .line 539
    invoke-static {p0}, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->smlDbSqlCachedMapInsertRow(Lcom/syncmldstmo/database/smlDbCachedMap;)V

    .line 540
    return-void
.end method

.method public static smlResetActivedProfileInfo(Ljava/lang/Object;I)V
    .registers 6
    .parameter "data"
    .parameter "nMagicNumber"

    .prologue
    .line 338
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    .line 340
    .local v0, ActivedProfile:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;
    const/4 v2, 0x0

    iput v2, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nProfileIndex:I

    .line 342
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_7
    const/4 v2, 0x3

    if-ge v1, v2, :cond_53

    .line 344
    if-nez v1, :cond_23

    .line 346
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileName:[Ljava/lang/String;

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerName:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 347
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileID:[Ljava/lang/String;

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerId:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 342
    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 349
    :cond_23
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 351
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileName:[Ljava/lang/String;

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerName:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 352
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileID:[Ljava/lang/String;

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerId:Ljava/lang/String;

    aput-object v3, v2, v1

    goto :goto_20

    .line 354
    :cond_3b
    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 356
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileName:[Ljava/lang/String;

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerName:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 357
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileID:[Ljava/lang/String;

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iget-object v3, v3, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerId:Ljava/lang/String;

    aput-object v3, v2, v1

    goto :goto_20

    .line 360
    :cond_53
    return-void
.end method

.method public static smlResetNetworkProfileInfo(Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;I)V
    .registers 3
    .parameter "NetworkProfileInfo"
    .parameter "nIndex"

    .prologue
    .line 380
    packed-switch p1, :pswitch_data_1c

    .line 394
    :goto_3
    return-void

    .line 383
    :pswitch_4
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v0, v0, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    invoke-static {p0, v0}, Lcom/syncmldstmo/database/smlDb;->smlResetNetworkProfileInfoFromPreconfig(Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;Lcom/syncmldstmo/preconfig/smlPreconfigInfo;)V

    goto :goto_3

    .line 387
    :pswitch_c
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v0, v0, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    invoke-static {p0, v0}, Lcom/syncmldstmo/database/smlDb;->smlResetNetworkProfileInfoFromPreconfig(Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;Lcom/syncmldstmo/preconfig/smlPreconfigInfo;)V

    goto :goto_3

    .line 391
    :pswitch_14
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v0, v0, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    invoke-static {p0, v0}, Lcom/syncmldstmo/database/smlDb;->smlResetNetworkProfileInfoFromPreconfig(Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;Lcom/syncmldstmo/preconfig/smlPreconfigInfo;)V

    goto :goto_3

    .line 380
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_c
        :pswitch_14
    .end packed-switch
.end method

.method private static smlResetNetworkProfileInfoFromPreconfig(Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;Lcom/syncmldstmo/preconfig/smlPreconfigInfo;)V
    .registers 3
    .parameter "NetworkProfileInfo"
    .parameter "PreconfigInfo"

    .prologue
    .line 364
    iget-object v0, p1, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetProfileName:Ljava/lang/String;

    .line 365
    iget-object v0, p1, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileHomeUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetHomeURL:Ljava/lang/String;

    .line 366
    iget-boolean v0, p1, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_bNetworkProfileBearerUse:Z

    iput-boolean v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->BearerUse:Z

    .line 367
    iget-boolean v0, p1, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_bNetworkProfileProxyUse:Z

    iput-boolean v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    .line 368
    iget-object v0, p1, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileProxyAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    .line 369
    iget-object v0, p1, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileProxyPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;

    .line 370
    iget-object v0, p1, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileApn:Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->APN:Ljava/lang/String;

    .line 371
    iget v0, p1, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_nNetworkProfileApnType:I

    iput v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnType:I

    .line 372
    iget-object v0, p1, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileId:Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnLoginID:Ljava/lang/String;

    .line 373
    iget-object v0, p1, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfilePassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnPassword:Ljava/lang/String;

    .line 374
    const-string v0, "4"

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->GprsDns1:Ljava/lang/String;

    .line 375
    const-string v0, "4"

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->GprsDns2:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public static smlResetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V
    .registers 5
    .parameter "ProfileInfo"
    .parameter "nIndex"

    .prologue
    const/4 v2, 0x0

    .line 398
    const/4 v0, 0x0

    .line 400
    .local v0, PreconfigInfo:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;
    packed-switch p1, :pswitch_data_2a

    .line 415
    :goto_5
    iput v2, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->CredType:I

    .line 416
    const/4 v1, 0x1

    iput v1, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    .line 417
    iput v2, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    .line 419
    if-eqz v0, :cond_1a

    .line 421
    iget-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerId:Ljava/lang/String;

    iput-object v1, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerID:Ljava/lang/String;

    .line 422
    iget-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerPS:Ljava/lang/String;

    .line 423
    iget-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 425
    :cond_1a
    return-void

    .line 403
    :pswitch_1b
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v0, v1, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 404
    goto :goto_5

    .line 407
    :pswitch_20
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v0, v1, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 408
    goto :goto_5

    .line 411
    :pswitch_25
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v0, v1, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    goto :goto_5

    .line 400
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_20
        :pswitch_25
    .end packed-switch
.end method

.method public static smlResetSyncInfo(ILcom/syncmldstmo/database/smlDbProfileInfo;I)V
    .registers 6
    .parameter "dbId"
    .parameter "ProfileInfo"
    .parameter "nIndex"

    .prologue
    const/4 v2, 0x1

    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, PreconfigInfo:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;
    packed-switch p2, :pswitch_data_54

    .line 446
    :goto_5
    if-nez p0, :cond_27

    .line 448
    iget-object v1, p1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 449
    iget-object v1, p1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 451
    if-eqz v0, :cond_17

    .line 452
    iget-object v1, p1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szContactDbName:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 494
    :cond_17
    :goto_17
    return-void

    .line 434
    :pswitch_18
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v0, v1, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 435
    goto :goto_5

    .line 438
    :pswitch_1d
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v0, v1, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 439
    goto :goto_5

    .line 442
    :pswitch_22
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->smlPreconfig:Lcom/syncmldstmo/preconfig/smlPreconfig;

    iget-object v0, v1, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    goto :goto_5

    .line 454
    :cond_27
    if-ne p0, v2, :cond_3a

    .line 458
    iget-object v1, p1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 459
    iget-object v1, p1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 461
    if-eqz v0, :cond_17

    .line 462
    iget-object v1, p1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szCalendarDbName:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    goto :goto_17

    .line 465
    :cond_3a
    const/4 v1, 0x2

    if-eq p0, v1, :cond_17

    .line 474
    const/4 v1, 0x3

    if-eq p0, v1, :cond_17

    .line 483
    const/4 v1, 0x4

    if-ne p0, v1, :cond_17

    .line 487
    iget-object v1, p1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 488
    iget-object v1, p1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 490
    if-eqz v0, :cond_17

    .line 491
    iget-object v1, p1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szProfileDbName:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    goto :goto_17

    .line 431
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1d
        :pswitch_22
    .end packed-switch
.end method

.method public static smlSetActivedProfileIndex(I)V
    .registers 2
    .parameter "nIndex"

    .prologue
    .line 250
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    iput p0, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nProfileIndex:I

    .line 251
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlSetActivedProfileInfo(Lcom/syncmldstmo/database/smlDbActivedProfileInfo;)V

    .line 252
    return-void
.end method

.method public static smlSetActivedProfileInfo(Lcom/syncmldstmo/database/smlDbActivedProfileInfo;)V
    .registers 3
    .parameter "ActivedProfileInfo"

    .prologue
    .line 232
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileExistsRow(J)Z

    move-result v0

    if-nez v0, :cond_e

    .line 234
    const-string v0, "Not Exist Profile Db !!!"

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 241
    :goto_d
    return-void

    .line 238
    :cond_e
    sput-object p0, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    .line 239
    const/4 v0, 0x1

    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileUpdateRow(ILcom/syncmldstmo/database/smlDbActivedProfileInfo;)V

    goto :goto_d
.end method

.method public static smlSetAutoSyncOffCalendar(Z)V
    .registers 3
    .parameter "bFalg"

    .prologue
    .line 812
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 813
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iput-boolean p0, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffCalendar:Z

    .line 814
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v1, v0}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 815
    return-void
.end method

.method public static smlSetAutoSyncOffContact(Z)V
    .registers 3
    .parameter "bFalg"

    .prologue
    .line 799
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 800
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iput-boolean p0, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffContact:Z

    .line 801
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v1, v0}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 802
    return-void
.end method

.method public static smlSetCurrentProfileInfo()V
    .registers 4

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, nIndex:I
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 184
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileExistsRow(J)Z

    move-result v1

    if-nez v1, :cond_30

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Exist Profile["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Db !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 192
    :goto_2f
    return-void

    .line 190
    :cond_30
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileUpdateRow(JLcom/syncmldstmo/database/smlDbProfileInfo;)V

    goto :goto_2f
.end method

.method public static smlSetCurrentProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;)V
    .registers 5
    .parameter "ProfileInfo"

    .prologue
    .line 212
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 214
    .local v0, nIndex:I
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileExistsRow(J)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Exist Profile["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Db !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 223
    :goto_2e
    return-void

    .line 220
    :cond_2f
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aput-object p0, v1, v0

    .line 221
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileUpdateRow(JLcom/syncmldstmo/database/smlDbProfileInfo;)V

    goto :goto_2e
.end method

.method public static smlSetFirstSyncComplete(I)V
    .registers 3
    .parameter "nFalg"

    .prologue
    .line 825
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 826
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iput p0, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->nFirstSyncComplete:I

    .line 827
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v1, v0}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 828
    return-void
.end method

.method public static smlSetIsSyncFlag(Z)V
    .registers 3
    .parameter "bSync"

    .prologue
    .line 753
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 754
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iput-boolean p0, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsSyncFlag:Z

    .line 755
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v1, v0}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 756
    return-void
.end method

.method public static smlSetNetworkProfile(Lcom/syncmldstmo/database/smlDbNetworkProfile;)V
    .registers 6
    .parameter "NetworkProfile"

    .prologue
    const/4 v4, 0x1

    .line 299
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_2
    if-ge v0, v4, :cond_47

    .line 301
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->smlDbSqlNetworkProfileExistsRow(J)Z

    move-result v1

    if-nez v1, :cond_30

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Exist NetworkProfile["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Db !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 299
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 307
    :cond_30
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_NetworkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget-object v2, p0, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 308
    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    sget-object v3, Lcom/syncmldstmo/database/smlDb;->m_NetworkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->smlDbSqlNetworkProfileUpdateRow(JLcom/syncmldstmo/database/smlDbNetworkProfileInfo;)V

    goto :goto_2d

    .line 311
    :cond_47
    return-void
.end method

.method public static smlSetPhoneIMSI(Ljava/lang/String;)V
    .registers 3
    .parameter "imsi"

    .prologue
    .line 737
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    .line 738
    .local v0, nIndex:I
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    iput-object p0, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->OldIMSI:Ljava/lang/String;

    .line 739
    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aget-object v1, v1, v0

    invoke-static {v1, v0}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 740
    return-void
.end method

.method public static smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V
    .registers 5
    .parameter "ProfileInfo"
    .parameter "nIndex"

    .prologue
    .line 138
    add-int/lit8 v0, p1, 0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileExistsRow(J)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 140
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Exist Profile["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Db !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 147
    :goto_2b
    return-void

    .line 144
    :cond_2c
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_ProfileInfo:[Lcom/syncmldstmo/database/smlDbProfileInfo;

    aput-object p0, v0, p1

    .line 145
    add-int/lit8 v0, p1, 0x1

    int-to-long v0, v0

    invoke-static {v0, v1, p0}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileUpdateRow(JLcom/syncmldstmo/database/smlDbProfileInfo;)V

    goto :goto_2b
.end method

.method public static smlSetProfileName(ILjava/lang/String;)V
    .registers 4
    .parameter "nIndex"
    .parameter "szName"

    .prologue
    .line 271
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileName:[Ljava/lang/String;

    aput-object p1, v0, p0

    .line 273
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileExistsRow(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 275
    const-string v0, "Not Exist ActivedProfile Db !!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 281
    :goto_1a
    return-void

    .line 279
    :cond_1b
    const/4 v0, 0x1

    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileUpdateRow(ILcom/syncmldstmo/database/smlDbActivedProfileInfo;)V

    goto :goto_1a
.end method

.method public static smlSetProfileServerID(ILjava/lang/String;)V
    .registers 4
    .parameter "nIndex"
    .parameter "szServerID"

    .prologue
    .line 285
    sget-object v0, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileID:[Ljava/lang/String;

    aput-object p1, v0, p0

    .line 287
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileExistsRow(J)Z

    move-result v0

    if-nez v0, :cond_14

    .line 289
    const-string v0, "Not Exist ActivedProfile Db !!!"

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 295
    :goto_13
    return-void

    .line 293
    :cond_14
    const/4 v0, 0x1

    sget-object v1, Lcom/syncmldstmo/database/smlDb;->m_ActivedProfileInfo:Lcom/syncmldstmo/database/smlDbActivedProfileInfo;

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileUpdateRow(ILcom/syncmldstmo/database/smlDbActivedProfileInfo;)V

    goto :goto_13
.end method
