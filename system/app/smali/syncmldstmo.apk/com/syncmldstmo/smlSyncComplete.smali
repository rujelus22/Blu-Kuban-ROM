.class public Lcom/syncmldstmo/smlSyncComplete;
.super Landroid/app/Activity;
.source "smlSyncComplete.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field private profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

.field private szCompleted:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 21
    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const v6, 0x7f060038

    const v5, 0x7f060037

    const v4, 0x7f060036

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlSyncComplete;->setContentView(I)V

    .line 29
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v0, :cond_12e

    .line 34
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/smlSyncComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/smlSyncComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/smlSyncComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 42
    :cond_12e
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v0, :cond_242

    .line 44
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetCalendarString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/smlSyncComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/smlSyncComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/smlSyncComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 52
    :cond_242
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v0, :cond_356

    .line 54
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/smlSyncComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/smlSyncComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    iget-object v3, p0, Lcom/syncmldstmo/smlSyncComplete;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/smlSyncComplete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    .line 62
    :cond_356
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlSyncComplete;->showDialog(I)V

    .line 63
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 68
    packed-switch p1, :pswitch_data_38

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 71
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smlSyncComplete;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/smlSyncComplete;->szCompleted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003a

    new-instance v2, Lcom/syncmldstmo/smlSyncComplete$2;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smlSyncComplete$2;-><init>(Lcom/syncmldstmo/smlSyncComplete;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smlSyncComplete$1;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlSyncComplete$1;-><init>(Lcom/syncmldstmo/smlSyncComplete;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 68
    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_8
    .end packed-switch
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 96
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 102
    return-void
.end method
