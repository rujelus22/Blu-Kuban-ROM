.class public Lcom/samsung/wimax/napid/MruActivity;
.super Landroid/app/ListActivity;
.source "MruActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/napid/MruActivity$dataAdapter;,
        Lcom/samsung/wimax/napid/MruActivity$ChannelClass;
    }
.end annotation


# static fields
.field private static final MRU_ADD_RESULT:I = 0x1

.field private static final MRU_EDIT_RESULT:I = 0x7

.field private static final OPTION_MENU_ADD_MRU:I = 0x4

.field private static final OPTION_MENU_DELETE_MRU:I = 0x0

.field private static final OPTION_MENU_EDIT_MRU:I = 0x6

.field private static final OPTION_MENU_RESET_MRU:I = 0x5

.field private static final READ_MRU:I = 0x2

.field private static final SHOW_STATUS_MSG:I = 0x8

.field private static final UPDATE_MRU:I = 0x3

.field static mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/wimax/napid/MruActivity$ChannelClass;",
            ">;"
        }
    .end annotation
.end field

.field static mListChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/wimax/napid/MruActivity$ChannelClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field TAG:Ljava/lang/String;

.field private channelString:Ljava/lang/String;

.field editableItem:Ljava/lang/Integer;

.field private frequencyarray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listItemPos:I

.field mContext:Landroid/content/Context;

.field mGetMruUpdate:Z

.field private mHandler:Landroid/os/Handler;

.field mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field mWimaxMruList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/MruList;",
            ">;"
        }
    .end annotation
.end field

.field private mWimaxMruReceiver:Landroid/content/BroadcastReceiver;

.field mWimaxMruRespFilter:Landroid/content/IntentFilter;

.field private m_nCurrentStateDetail:I

.field mruAdapter:Landroid/widget/ListAdapter;

.field mruUpdtState:Z

.field private readintent:Landroid/content/Intent;

.field private updateVar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    iput v1, p0, Lcom/samsung/wimax/napid/MruActivity;->m_nCurrentStateDetail:I

    .line 55
    iput-boolean v1, p0, Lcom/samsung/wimax/napid/MruActivity;->mGetMruUpdate:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    .line 60
    const-string v0, "WIMAX_CFG"

    iput-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/samsung/wimax/napid/MruActivity;->mruUpdtState:Z

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->channelString:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    .line 73
    iput-boolean v1, p0, Lcom/samsung/wimax/napid/MruActivity;->updateVar:Z

    .line 75
    new-instance v0, Lcom/samsung/wimax/napid/MruActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/MruActivity$1;-><init>(Lcom/samsung/wimax/napid/MruActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Lcom/samsung/wimax/napid/MruActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/MruActivity$2;-><init>(Lcom/samsung/wimax/napid/MruActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruReceiver:Landroid/content/BroadcastReceiver;

    .line 595
    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 520
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 523
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_17
    return v0

    .line 527
    :cond_18
    const-string v1, "WiMAX modem is OFF , Please turn on WiMAX in Settings!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 528
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v1, "WiMAX modem is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic access$000(Lcom/samsung/wimax/napid/MruActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/samsung/wimax/napid/MruActivity;->updateVar:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/wimax/napid/MruActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/samsung/wimax/napid/MruActivity;->updateVar:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/wimax/napid/MruActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/MruActivity;->handleMruUpdate(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wimax/napid/MruActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkWimaxStateAndUpdate()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 567
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    .line 568
    .local v1, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_1b

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_1b

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_1b

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_1b

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_29

    .line 571
    :cond_1b
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 572
    invoke-direct {p0, v3}, Lcom/samsung/wimax/napid/MruActivity;->setMruUpdateStatus(Z)V

    .line 573
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 581
    :goto_28
    return-void

    .line 576
    :cond_29
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/wimax/napid/MruActivity;->setMruUpdateStatus(Z)V

    .line 577
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rahul : final size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getMruUpdate(Ljava/util/List;I)Z

    move-result v0

    .line 579
    .local v0, b:Z
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rahul : getMruUpdate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private getMruUpdateStatus()Z
    .registers 2

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mruUpdtState:Z

    return v0
.end method

.method private handleMruUpdate(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 243
    const-string v2, "subType"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 244
    .local v1, resultCode:I
    const-string v2, "ErrorValue"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 245
    .local v0, errorCode:I
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 246
    invoke-direct {p0, v4}, Lcom/samsung/wimax/napid/MruActivity;->setMruUpdateStatus(Z)V

    .line 247
    const/16 v2, 0x11

    if-ne v1, v2, :cond_34

    .line 249
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v3, "******************handleMruUpdate update success *************** "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 251
    sget-object v2, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 252
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getMruList()V

    .line 253
    iput-boolean v5, p0, Lcom/samsung/wimax/napid/MruActivity;->updateVar:Z

    .line 271
    :cond_33
    :goto_33
    return-void

    .line 255
    :cond_34
    const/16 v2, 0x12

    if-ne v1, v2, :cond_33

    .line 257
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v3, "rahul : handleMruUpdate NAK FAIL  !!!!!!!!!!!!!!!!!!!!! "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-ne v0, v5, :cond_49

    .line 261
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v3, "Error code 1 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 263
    :cond_49
    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    .line 264
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v3, "Error code 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 266
    :cond_54
    const/4 v2, 0x3

    if-ne v0, v2, :cond_33

    .line 267
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v3, "Error code 3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method private setMruUpdateStatus(Z)V
    .registers 2
    .parameter "mruStateVal"

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/samsung/wimax/napid/MruActivity;->mruUpdtState:Z

    .line 594
    return-void
.end method


# virtual methods
.method handleMruReadResp(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    .line 275
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->channelString:Ljava/lang/String;

    .line 276
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    .line 277
    const-string v6, "MruList"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 278
    .local v4, size:I
    if-lez v4, :cond_21b

    .line 280
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--------------handleMruReadResp size > 0 --------------- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 282
    sget-object v6, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 283
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/Wimax4GManager;->getMruListRsp()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    .line 284
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 287
    .local v2, len:I
    rem-int/lit8 v6, v2, 0x3

    if-nez v6, :cond_cf

    move v3, v2

    .line 288
    .local v3, len_loop:I
    :goto_49
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--------------len_loop size --------------- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v1, 0x0

    .local v1, k:I
    :goto_62
    if-ge v1, v3, :cond_d7

    .line 291
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ^^^^^ after reading ^^^^^CF1 = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " BW ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "FFT"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 287
    .end local v1           #k:I
    .end local v3           #len_loop:I
    :cond_cf
    rem-int/lit8 v6, v2, 0x3

    rsub-int/lit8 v6, v6, 0x3

    add-int v3, v2, v6

    goto/16 :goto_49

    .line 295
    .restart local v1       #k:I
    .restart local v3       #len_loop:I
    :cond_d7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d8
    if-ge v0, v3, :cond_22c

    .line 297
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " i ---------->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    invoke-direct {v5, p0}, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;-><init>(Lcom/samsung/wimax/napid/MruActivity;)V

    .line 299
    .local v5, tempchannel:Lcom/samsung/wimax/napid/MruActivity$ChannelClass;
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v6

    iput-byte v6, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    .line 300
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v6

    iput-byte v6, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    .line 301
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v6

    iput v6, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    .line 302
    add-int/lit8 v0, v0, 0x1

    .line 303
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " i ---------->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v6

    iput v6, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 306
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " i ---------->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v6

    iput v6, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    .line 308
    sget-object v6, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TFT = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " BW ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    invoke-static {v8}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CF1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CF2 ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CF3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    iget v7, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    iget v7, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    iget v7, v5, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d8

    .line 323
    .end local v0           #i:I
    .end local v1           #k:I
    .end local v2           #len:I
    .end local v3           #len_loop:I
    .end local v5           #tempchannel:Lcom/samsung/wimax/napid/MruActivity$ChannelClass;
    :cond_21b
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 324
    sget-object v6, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 325
    iget-object v6, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v7, "**********handleMruReadResp size is zero *******"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_22c
    return-void
.end method

.method public handleWimaxStateChange(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 543
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v3, "handleWimaxStateChanged  is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v2, "WimaxState"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 546
    .local v0, ordinal:I
    invoke-static {}, Landroid/net/fourG/wimax/WimaxState;->values()[Landroid/net/fourG/wimax/WimaxState;

    move-result-object v2

    aget-object v1, v2, v0

    .line 547
    .local v1, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    const-string v2, "WimaxStateDetail"

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/wimax/napid/MruActivity;->m_nCurrentStateDetail:I

    .line 548
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] Received wimaxstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extraStateDetail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/wimax/napid/MruActivity;->m_nCurrentStateDetail:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_56

    .line 554
    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v3, "***DisConnected********"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/samsung/wimax/napid/MruActivity;->getMruUpdateStatus()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 558
    invoke-direct {p0}, Lcom/samsung/wimax/napid/MruActivity;->checkWimaxStateAndUpdate()V

    .line 563
    :cond_56
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 443
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v13, "onActivityResult is called **********************"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v12, v0, :cond_115

    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_115

    .line 446
    const-string v12, "MRU_ADD_STRING"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 447
    .local v10, returnArray:[Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v13, "inside if MRU_ADD_RESULT"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v6, 0x0

    .local v6, i:I
    :goto_21
    const/4 v12, 0x3

    if-ge v6, v12, :cond_93

    .line 450
    new-instance v11, Landroid/net/fourG/wimax/MruList;

    invoke-direct {v11}, Landroid/net/fourG/wimax/MruList;-><init>()V

    .line 451
    .local v11, returnedMru:Landroid/net/fourG/wimax/MruList;
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    aget-object v13, v10, v6

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    aget-object v12, v10, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 453
    .local v3, chvalue:I
    const/4 v12, 0x3

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 454
    .local v1, bw:B
    const/4 v12, 0x4

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 455
    .local v5, fft:B
    invoke-virtual {v11, v3, v1, v5}, Landroid/net/fourG/wimax/MruList;->setValue(IBB)V

    .line 456
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "chvalue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "bw = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " fft"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 462
    .end local v1           #bw:B
    .end local v3           #chvalue:I
    .end local v5           #fft:B
    .end local v11           #returnedMru:Landroid/net/fourG/wimax/MruList;
    :cond_93
    const/4 v6, 0x0

    :goto_94
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_107

    .line 463
    iget-object v13, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "%%%% before update %%%BW = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v12}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "  "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " CF2 ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v12}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v12

    invoke-static {v12}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "CF3"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v12}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v12

    invoke-static {v12}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    add-int/lit8 v6, v6, 0x1

    goto :goto_94

    .line 467
    :cond_107
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v13, "onActivityResult calling getmruUpdate "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/wimax/napid/MruActivity;->mGetMruUpdate:Z

    .line 469
    invoke-direct {p0}, Lcom/samsung/wimax/napid/MruActivity;->checkWimaxStateAndUpdate()V

    .line 494
    .end local v6           #i:I
    .end local v10           #returnArray:[Ljava/lang/String;
    :cond_114
    :goto_114
    return-void

    .line 473
    :cond_115
    const/4 v12, 0x7

    move/from16 v0, p1

    if-ne v12, v0, :cond_114

    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_114

    .line 475
    const-string v12, "MRU_ADD_STRING"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 476
    .restart local v10       #returnArray:[Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->editableItem:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 477
    .local v4, eItemPos:I
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pos for edit = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget-object v12, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    .line 479
    .local v2, chObj:Lcom/samsung/wimax/napid/MruActivity$ChannelClass;
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " EDITABLE OBJECT IS cf1 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "cf2"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " cf3 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v12, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BW = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "FFT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v7, Landroid/net/fourG/wimax/MruList;

    invoke-direct {v7}, Landroid/net/fourG/wimax/MruList;-><init>()V

    .line 482
    .local v7, insertingNode1:Landroid/net/fourG/wimax/MruList;
    new-instance v8, Landroid/net/fourG/wimax/MruList;

    invoke-direct {v8}, Landroid/net/fourG/wimax/MruList;-><init>()V

    .line 483
    .local v8, insertingNode2:Landroid/net/fourG/wimax/MruList;
    new-instance v9, Landroid/net/fourG/wimax/MruList;

    invoke-direct {v9}, Landroid/net/fourG/wimax/MruList;-><init>()V

    .line 484
    .local v9, insertingNode3:Landroid/net/fourG/wimax/MruList;
    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x3

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    const/4 v14, 0x4

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    invoke-virtual {v7, v12, v13, v14}, Landroid/net/fourG/wimax/MruList;->setValue(IBB)V

    .line 485
    iget v12, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    iget-byte v13, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    iget-byte v14, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {p0, v12, v13, v14, v7}, Lcom/samsung/wimax/napid/MruActivity;->searchAndEditMru(IBBLandroid/net/fourG/wimax/MruList;)V

    .line 486
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x3

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    const/4 v14, 0x4

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    invoke-virtual {v8, v12, v13, v14}, Landroid/net/fourG/wimax/MruList;->setValue(IBB)V

    .line 487
    iget v12, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    iget-byte v13, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    iget-byte v14, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {p0, v12, v13, v14, v8}, Lcom/samsung/wimax/napid/MruActivity;->searchAndEditMru(IBBLandroid/net/fourG/wimax/MruList;)V

    .line 488
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x3

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    const/4 v14, 0x4

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    invoke-virtual {v9, v12, v13, v14}, Landroid/net/fourG/wimax/MruList;->setValue(IBB)V

    .line 489
    iget v12, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    iget-byte v13, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    iget-byte v14, v2, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {p0, v12, v13, v14, v9}, Lcom/samsung/wimax/napid/MruActivity;->searchAndEditMru(IBBLandroid/net/fourG/wimax/MruList;)V

    .line 490
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/wimax/napid/MruActivity;->mGetMruUpdate:Z

    .line 491
    invoke-direct {p0}, Lcom/samsung/wimax/napid/MruActivity;->checkWimaxStateAndUpdate()V

    goto/16 :goto_114
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v1, "onconfig change called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 538
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 14
    .parameter "item"

    .prologue
    const/4 v11, 0x7

    .line 348
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 350
    .local v4, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v7, p0, Lcom/samsung/wimax/napid/MruActivity;->listItemPos:I

    .line 352
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_22e

    .line 403
    :goto_15
    const/4 v7, 0x0

    return v7

    .line 357
    :sswitch_17
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/MruActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget v8, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 358
    .local v6, removableItem:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 359
    .local v5, rem:I
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OPTION_MENU_DELETE_MRU pos for delete = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v7, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    .line 361
    .local v1, chObj:Lcom/samsung/wimax/napid/MruActivity$ChannelClass;
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cf1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cf2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cf3 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BW = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "FFT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v7, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    iget-byte v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    iget-byte v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/wimax/napid/MruActivity;->searchAndDeleteMru(IBB)V

    .line 364
    iget v7, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    iget-byte v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    iget-byte v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/wimax/napid/MruActivity;->searchAndDeleteMru(IBB)V

    .line 365
    iget v7, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    iget-byte v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    iget-byte v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/wimax/napid/MruActivity;->searchAndDeleteMru(IBB)V

    .line 366
    invoke-direct {p0}, Lcom/samsung/wimax/napid/MruActivity;->checkWimaxStateAndUpdate()V

    .line 368
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    iget v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 369
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    iget v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 370
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    iget v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 376
    .end local v1           #chObj:Lcom/samsung/wimax/napid/MruActivity$ChannelClass;
    .end local v5           #rem:I
    .end local v6           #removableItem:Ljava/lang/Integer;
    :sswitch_f0
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/MruActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget v8, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->editableItem:Ljava/lang/Integer;

    .line 377
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->editableItem:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 378
    .local v2, editPos:I
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OPTION_MENU_EDIT_MRU pos for edit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v7, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    .line 380
    .restart local v1       #chObj:Lcom/samsung/wimax/napid/MruActivity$ChannelClass;
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cf1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cf2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cf3 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BW = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "FFT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 383
    .local v3, intent:Landroid/content/Intent;
    const-class v7, Lcom/samsung/wimax/napid/WriteMRU;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 384
    const-string v7, "RCODE"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v7, "CH1"

    iget v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const-string v7, "CH2"

    iget v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v7, "CH3"

    iget v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v7, "BW"

    iget-byte v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 389
    const-string v7, "FFT"

    iget-byte v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 392
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rahul : length of frequency array is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "freq1 is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    iget v10, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    iget v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    iget v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 395
    iget-object v7, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    iget v8, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "channellist"

    iget-object v8, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 398
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v3, v11}, Lcom/samsung/wimax/napid/MruActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_15

    .line 352
    nop

    :sswitch_data_22e
    .sparse-switch
        0x0 -> :sswitch_17
        0x6 -> :sswitch_f0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/MruActivity;->setContentView(I)V

    .line 120
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 123
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 338
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 339
    const-string v0, "MRU Actions"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 340
    const-string v0, "Delete Mru"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 341
    const/4 v0, 0x6

    const-string v1, "Edit Mru"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 343
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 180
    const/4 v0, 0x4

    const-string v1, "Add Mru"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 181
    const/4 v0, 0x5

    const-string v1, "Reset Mru"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 206
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 195
    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/MruActivity;->write()V

    .line 196
    const/4 v0, 0x1

    goto :goto_b

    .line 200
    :pswitch_11
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    sget-object v0, Lcom/samsung/wimax/napid/MruActivity;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    invoke-direct {p0}, Lcom/samsung/wimax/napid/MruActivity;->checkWimaxStateAndUpdate()V

    goto :goto_a

    .line 191
    nop

    :pswitch_data_20
    .packed-switch 0x4
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 167
    invoke-direct {p0, v2}, Lcom/samsung/wimax/napid/MruActivity;->setMruUpdateStatus(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/MruActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruRespFilter:Landroid/content/IntentFilter;

    .line 132
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruRespFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruRespFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/MruActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruRespFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    new-instance v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/MruActivity$dataAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mruAdapter:Landroid/widget/ListAdapter;

    .line 136
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mruAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/MruActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/MruActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/MruActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 140
    invoke-direct {p0}, Lcom/samsung/wimax/napid/MruActivity;->CheckWimaxOn()Z

    move-result v0

    if-nez v0, :cond_51

    .line 141
    sget-object v0, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mruAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 159
    :goto_50
    return-void

    .line 146
    :cond_51
    iget-boolean v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mGetMruUpdate:Z

    if-nez v0, :cond_62

    .line 148
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v1, "onresume getmrulist called :) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->getMruList()V

    goto :goto_50

    .line 153
    :cond_62
    iget-object v0, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    const-string v1, "!!!!!!mGetMruUpdate not callled!!!!!!!!! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wimax/napid/MruActivity;->mGetMruUpdate:Z

    goto :goto_50
.end method

.method searchAndDeleteMru(IBB)V
    .registers 10
    .parameter "centerFreq"
    .parameter "bandWidth"
    .parameter "fftSize"

    .prologue
    .line 409
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 410
    .local v2, objArray:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arraylength= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MRU LIST SIZE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    array-length v3, v2

    if-ge v0, v3, :cond_d5

    .line 413
    iget-object v4, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cf="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "bw="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "fftsize="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v3

    if-ne v3, p1, :cond_d6

    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v3

    if-ne v3, p2, :cond_d6

    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v3

    if-ne v3, p3, :cond_d6

    .line 418
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/MruList;

    .line 419
    .local v1, mm:Landroid/net/fourG/wimax/MruList;
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fftsize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v1           #mm:Landroid/net/fourG/wimax/MruList;
    :cond_d5
    return-void

    .line 411
    :cond_d6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_30
.end method

.method searchAndEditMru(IBBLandroid/net/fourG/wimax/MruList;)V
    .registers 11
    .parameter "centerFreq"
    .parameter "bandWidth"
    .parameter "fftSize"
    .parameter "insertingItem"

    .prologue
    .line 499
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 500
    .local v2, objArray:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchAndEditMru arraylength= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MRU LIST SIZE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    array-length v3, v2

    if-ge v0, v3, :cond_da

    .line 503
    iget-object v4, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " searchAndEditMru cf="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "bw="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "fftsize="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v3

    if-ne v3, p1, :cond_db

    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v3

    if-ne v3, p2, :cond_db

    aget-object v3, v2, v0

    check-cast v3, Landroid/net/fourG/wimax/MruList;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v3

    if-ne v3, p3, :cond_db

    .line 508
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/MruList;

    .line 509
    .local v1, mm:Landroid/net/fourG/wimax/MruList;
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fftsize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->mWimaxMruList:Ljava/util/List;

    invoke-interface {v3, v0, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 516
    .end local v1           #mm:Landroid/net/fourG/wimax/MruList;
    :cond_da
    return-void

    .line 501
    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_30
.end method

.method write()V
    .registers 5

    .prologue
    .line 430
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 431
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/samsung/wimax/napid/WriteMRU;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 433
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "channellist"

    iget-object v3, p0, Lcom/samsung/wimax/napid/MruActivity;->frequencyarray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 435
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 436
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/wimax/napid/MruActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 437
    return-void
.end method
