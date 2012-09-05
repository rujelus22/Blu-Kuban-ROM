.class public Lcom/syncmldstmo/smlSyncResultCalendar;
.super Landroid/app/Fragment;
.source "smlSyncResultCalendar.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field private SyncDate:Ljava/util/Date;

.field private profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

.field private strP2SAddCount:Ljava/lang/String;

.field private strP2SDelCount:Ljava/lang/String;

.field private strP2SRepCount:Ljava/lang/String;

.field private strS2PAddCount:Ljava/lang/String;

.field private strS2PDelCount:Ljava/lang/String;

.field private strS2PRepCount:Ljava/lang/String;

.field private strSyncDate:Ljava/lang/String;

.field private strSyncStatus:Ljava/lang/String;

.field private tDetailsDate:Landroid/widget/TextView;

.field private tDetailsStatus:Landroid/widget/TextView;

.field private tP2SAddCount:Landroid/widget/TextView;

.field private tP2SDelCount:Landroid/widget/TextView;

.field private tP2SRepCount:Landroid/widget/TextView;

.field private tS2PAddCount:Landroid/widget/TextView;

.field private tS2PDelCount:Landroid/widget/TextView;

.field private tS2PRepCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xb

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 54
    const v2, 0x7f030006

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, view:Landroid/view/View;
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v2

    invoke-static {v2}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 58
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    if-eqz v2, :cond_1c4

    .line 60
    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tDetailsDate:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tDetailsStatus:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tP2SAddCount:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tP2SRepCount:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tP2SDelCount:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tS2PAddCount:Landroid/widget/TextView;

    .line 68
    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tS2PRepCount:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tS2PDelCount:Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c5

    .line 73
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->SyncDate:Ljava/util/Date;

    .line 75
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->SyncDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit16 v3, v3, -0x76c

    invoke-virtual {v2, v3}, Ljava/util/Date;->setYear(I)V

    .line 76
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->SyncDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Date;->setMonth(I)V

    .line 77
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->SyncDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->setDate(I)V

    .line 78
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->SyncDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->setHours(I)V

    .line 79
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->SyncDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->setMinutes(I)V

    .line 80
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->SyncDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    const/16 v4, 0xf

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->setSeconds(I)V

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM.yyyy HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, synctime:Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->SyncDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strSyncDate:Ljava/lang/String;

    .line 90
    .end local v0           #synctime:Ljava/text/SimpleDateFormat;
    :goto_12a
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncDBResult:I

    if-lez v2, :cond_209

    .line 92
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncDBResult:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1cb

    .line 94
    const v2, 0x7f06003a

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smlSyncResultCalendar;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strSyncStatus:Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SAddCount:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SRepCount:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SDelCount:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PAddCount:Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PRepCount:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PDelCount:Ljava/lang/String;

    .line 137
    :goto_18c
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tDetailsDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strSyncDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tDetailsStatus:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strSyncStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tP2SAddCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SAddCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tP2SRepCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SRepCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tP2SDelCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SDelCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tS2PAddCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PAddCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tS2PRepCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PRepCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->tS2PDelCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PDelCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_1c4
    return-object v1

    .line 87
    :cond_1c5
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strSyncDate:Ljava/lang/String;

    goto/16 :goto_12a

    .line 106
    :cond_1cb
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncDBResult:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f6

    .line 108
    const v2, 0x7f060042

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smlSyncResultCalendar;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strSyncStatus:Ljava/lang/String;

    .line 115
    :cond_1dd
    :goto_1dd
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SAddCount:Ljava/lang/String;

    .line 116
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SRepCount:Ljava/lang/String;

    .line 117
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SDelCount:Ljava/lang/String;

    .line 119
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PAddCount:Ljava/lang/String;

    .line 120
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PRepCount:Ljava/lang/String;

    .line 121
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PDelCount:Ljava/lang/String;

    goto :goto_18c

    .line 110
    :cond_1f6
    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncDBResult:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1dd

    .line 112
    const v2, 0x7f060043

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smlSyncResultCalendar;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strSyncStatus:Ljava/lang/String;

    goto :goto_1dd

    .line 126
    :cond_209
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strSyncStatus:Ljava/lang/String;

    .line 128
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SAddCount:Ljava/lang/String;

    .line 129
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SRepCount:Ljava/lang/String;

    .line 130
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strP2SDelCount:Ljava/lang/String;

    .line 132
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PAddCount:Ljava/lang/String;

    .line 133
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PRepCount:Ljava/lang/String;

    .line 134
    const-string v2, ""

    iput-object v2, p0, Lcom/syncmldstmo/smlSyncResultCalendar;->strS2PDelCount:Ljava/lang/String;

    goto/16 :goto_18c
.end method
