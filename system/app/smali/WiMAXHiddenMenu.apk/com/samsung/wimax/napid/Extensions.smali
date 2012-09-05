.class public Lcom/samsung/wimax/napid/Extensions;
.super Landroid/app/ListActivity;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/napid/Extensions$6;,
        Lcom/samsung/wimax/napid/Extensions$dataAdapter;,
        Lcom/samsung/wimax/napid/Extensions$Type;
    }
.end annotation


# static fields
.field private static final DIALOG_WRNG_VALUE:I = 0x5

.field private static final DIALOG_WRT_EXT:I = 0x4

.field public static final MSG_READ:I = 0x1

.field public static final MSG_UPDT:I = 0x3

.field public static final MSG_WRT:I = 0x2

.field private static final OPTION_MENU_WRT_EXT:I

.field static mExtArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mListExtArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field CancelBtn:Landroid/widget/Button;

.field TAG:Ljava/lang/String;

.field WRNG_MSG:Ljava/lang/String;

.field alertDlg:Landroid/app/AlertDialog;

.field dialog:Landroid/app/Dialog;

.field dlgText:Landroid/widget/EditText;

.field entryVal:Ljava/lang/String;

.field extAdapter:Landroid/widget/ListAdapter;

.field mCancelListner:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field mOkListner:Landroid/view/View$OnClickListener;

.field mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimaxExtReceiver:Landroid/content/BroadcastReceiver;

.field mWimaxExtRespFilter:Landroid/content/IntentFilter;

.field mruUpdtState:Z

.field okBtn:Landroid/widget/Button;

.field type:Lcom/samsung/wimax/napid/Extensions$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions;->mListExtArray:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions;->mExtArray:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 38
    const-string v0, "WIMAX_CFG"

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->UNKNOW:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wimax/napid/Extensions;->mruUpdtState:Z

    .line 89
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/Extensions$1;-><init>(Lcom/samsung/wimax/napid/Extensions;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/Extensions$2;-><init>(Lcom/samsung/wimax/napid/Extensions;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimaxExtReceiver:Landroid/content/BroadcastReceiver;

    .line 779
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$4;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/Extensions$4;-><init>(Lcom/samsung/wimax/napid/Extensions;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mOkListner:Landroid/view/View$OnClickListener;

    .line 872
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$5;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/Extensions$5;-><init>(Lcom/samsung/wimax/napid/Extensions;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mCancelListner:Landroid/view/View$OnClickListener;

    .line 954
    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 709
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 712
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_17
    return v0

    .line 716
    :cond_18
    const-string v1, "WiMAX modem is OFF , Please turn on WiMAX in Settings!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 717
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "WiMAX modem is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private ReadExtensions()V
    .registers 4

    .prologue
    .line 168
    sget-object v1, Lcom/samsung/wimax/napid/Extensions$6;->$SwitchMap$com$samsung$wimax$napid$Extensions$Type:[I

    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-virtual {v2}, Lcom/samsung/wimax/napid/Extensions$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_b2

    .line 215
    :goto_d
    return-void

    .line 171
    :sswitch_e
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "calling SATIMEOUT_READ"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v1, "ScanAttemptTimeOut"

    const/16 v2, 0x87

    invoke-direct {p0, v1, v2}, Lcom/samsung/wimax/napid/Extensions;->readEntries(Ljava/lang/String;I)V

    goto :goto_d

    .line 175
    :sswitch_1d
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "calling SRETRIES_READ"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v1, "ScanRetries"

    const/16 v2, 0x88

    invoke-direct {p0, v1, v2}, Lcom/samsung/wimax/napid/Extensions;->readEntries(Ljava/lang/String;I)V

    goto :goto_d

    .line 179
    :sswitch_2c
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "calling ISLEEP_READ"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v1, "IdleSleep"

    const/16 v2, 0x89

    invoke-direct {p0, v1, v2}, Lcom/samsung/wimax/napid/Extensions;->readEntries(Ljava/lang/String;I)V

    goto :goto_d

    .line 183
    :sswitch_3b
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "calling ERX_READ"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v1, "EntryRx"

    const/16 v2, 0x8a

    invoke-direct {p0, v1, v2}, Lcom/samsung/wimax/napid/Extensions;->readEntries(Ljava/lang/String;I)V

    goto :goto_d

    .line 187
    :sswitch_4a
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "calling ENTCINR_READ"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v1, "EntryCINR"

    const/16 v2, 0x8b

    invoke-direct {p0, v1, v2}, Lcom/samsung/wimax/napid/Extensions;->readEntries(Ljava/lang/String;I)V

    goto :goto_d

    .line 191
    :sswitch_59
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "calling ENTDELAY_READ"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v1, "EntryDelay"

    const/16 v2, 0x8c

    invoke-direct {p0, v1, v2}, Lcom/samsung/wimax/napid/Extensions;->readEntries(Ljava/lang/String;I)V

    goto :goto_d

    .line 195
    :sswitch_68
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "calling EXTCINR_READ"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v1, "ExitCINR"

    const/16 v2, 0x8d

    invoke-direct {p0, v1, v2}, Lcom/samsung/wimax/napid/Extensions;->readEntries(Ljava/lang/String;I)V

    goto :goto_d

    .line 199
    :sswitch_77
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "calling EXTDEAY_READ"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v1, "ExitDelay"

    const/16 v2, 0x8e

    invoke-direct {p0, v1, v2}, Lcom/samsung/wimax/napid/Extensions;->readEntries(Ljava/lang/String;I)V

    goto :goto_d

    .line 203
    :sswitch_86
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "calling READ_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v1, Lcom/samsung/wimax/napid/Extensions;->mListExtArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_93
    sget-object v1, Lcom/samsung/wimax/napid/Extensions;->mExtArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a9

    .line 207
    sget-object v1, Lcom/samsung/wimax/napid/Extensions;->mListExtArray:Ljava/util/List;

    sget-object v2, Lcom/samsung/wimax/napid/Extensions;->mExtArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 209
    :cond_a9
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->extAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_d

    .line 168
    :sswitch_data_b2
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3b
        0x5 -> :sswitch_4a
        0x6 -> :sswitch_59
        0x7 -> :sswitch_68
        0x8 -> :sswitch_77
        0x19 -> :sswitch_86
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/samsung/wimax/napid/Extensions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Extensions;->ReadExtensions()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wimax/napid/Extensions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Extensions;->checkWimaxStateAndUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wimax/napid/Extensions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Extensions;->updateExtensions()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/wimax/napid/Extensions;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/Extensions;->handleReadResp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/wimax/napid/Extensions;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/Extensions;->setMruWorkingStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/wimax/napid/Extensions;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/Extensions;->handleWriteResp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/wimax/napid/Extensions;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/Extensions;->handleUpdateResp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/wimax/napid/Extensions;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static byteToInt([B)J
    .registers 7
    .parameter "by"

    .prologue
    .line 524
    const-wide/16 v1, 0x0

    .line 525
    .local v1, value:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_12

    .line 527
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 529
    :cond_12
    const-string v3, "EapNodeName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value LSB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-wide v1
.end method

.method private checkWimaxStateAndUpdate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 920
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    .line 921
    .local v0, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1b

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1b

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1b

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1b

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_30

    .line 924
    :cond_1b
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "in checkWimaxStateAndUpdate state is other then disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 926
    invoke-direct {p0, v3}, Lcom/samsung/wimax/napid/Extensions;->setMruWorkingStatus(Z)V

    .line 927
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 952
    :goto_2f
    return-void

    .line 930
    :cond_30
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "ext inside  checkWimaxStateAndUpdate else part"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/Extensions;->setMruWorkingStatus(Z)V

    .line 933
    sget-object v1, Lcom/samsung/wimax/napid/Extensions$6;->$SwitchMap$com$samsung$wimax$napid$Extensions$Type:[I

    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-virtual {v2}, Lcom/samsung/wimax/napid/Extensions$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    goto :goto_2f

    .line 943
    :pswitch_49
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "******write ext called  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->entryVal:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/Extensions;->writeExtensions(Ljava/lang/String;)V

    goto :goto_2f

    .line 933
    :pswitch_data_56
    .packed-switch 0x9
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method private getMruWorkingStatus()Z
    .registers 2

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/samsung/wimax/napid/Extensions;->mruUpdtState:Z

    return v0
.end method

.method private handleReadResp(Landroid/content/Intent;)V
    .registers 16
    .parameter "intent"

    .prologue
    .line 336
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v12, "handleReadResp extentsions is called"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/16 v11, 0xb

    new-array v7, v11, [B

    .line 338
    .local v7, respEapIdArray:[B
    const-string v11, "WimaxOMADMRespData"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 339
    if-nez v7, :cond_14

    .line 419
    :goto_13
    return-void

    .line 343
    :cond_14
    const/4 v11, 0x0

    aget-byte v6, v7, v11

    .line 344
    .local v6, res:I
    const/4 v5, -0x1

    .line 345
    .local v5, pos:I
    sget-object v11, Lcom/samsung/wimax/napid/Extensions$6;->$SwitchMap$com$samsung$wimax$napid$Extensions$Type:[I

    iget-object v12, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-virtual {v12}, Lcom/samsung/wimax/napid/Extensions$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_14c

    .line 389
    :goto_25
    const/4 v11, 0x1

    if-ne v6, v11, :cond_123

    array-length v11, v7

    const/4 v12, 0x1

    if-eq v11, v12, :cond_123

    .line 393
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v12, "handleReadResp ext read callback"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v11, 0x2

    new-array v4, v11, [B

    .line 396
    .local v4, nTagArray:[B
    const/4 v11, 0x2

    new-array v3, v11, [B

    .line 397
    .local v3, nLenArray:[B
    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-byte v12, v7, v12

    aput-byte v12, v4, v11

    .line 398
    const/4 v11, 0x1

    const/4 v12, 0x2

    aget-byte v12, v7, v12

    aput-byte v12, v4, v11

    .line 399
    const/4 v11, 0x0

    const/4 v12, 0x3

    aget-byte v12, v7, v12

    aput-byte v12, v3, v11

    .line 400
    const/4 v11, 0x1

    const/4 v12, 0x4

    aget-byte v12, v7, v12

    aput-byte v12, v3, v11

    .line 401
    invoke-static {v4}, Lcom/samsung/wimax/napid/Extensions;->byteToInt([B)J

    move-result-wide v9

    .line 402
    .local v9, tag:J
    invoke-static {v3}, Lcom/samsung/wimax/napid/Extensions;->byteToInt([B)J

    move-result-wide v0

    .line 403
    .local v0, len:J
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleReadResp ext tag ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "len =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v8, Ljava/lang/String;

    const/4 v11, 0x5

    long-to-int v12, v0

    invoke-direct {v8, v7, v11, v12}, Ljava/lang/String;-><init>([BII)V

    .line 405
    .local v8, sValue:Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleReadResp ext  value  ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object v11, Lcom/samsung/wimax/napid/Extensions;->mExtArray:Ljava/util/List;

    invoke-interface {v11, v5, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 416
    .end local v0           #len:J
    .end local v3           #nLenArray:[B
    .end local v4           #nTagArray:[B
    .end local v8           #sValue:Ljava/lang/String;
    .end local v9           #tag:J
    :goto_a5
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 417
    .local v2, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_13

    .line 348
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_b3
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v12, "handle ReadResponse SATIMEOUT_READ"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v5, 0x0

    .line 350
    sget-object v11, Lcom/samsung/wimax/napid/Extensions$Type;->SRETRIES_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto/16 :goto_25

    .line 353
    :pswitch_c1
    const/4 v5, 0x1

    .line 354
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v12, "handle ReadResponse SRETRIES_READ"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object v11, Lcom/samsung/wimax/napid/Extensions$Type;->ISLEEP_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto/16 :goto_25

    .line 358
    :pswitch_cf
    const/4 v5, 0x2

    .line 359
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v12, "handle ReadResponse ISLEEP_READ"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v11, Lcom/samsung/wimax/napid/Extensions$Type;->ERX_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto/16 :goto_25

    .line 363
    :pswitch_dd
    const/4 v5, 0x3

    .line 364
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v12, "handle ReadResponse ERX_READ"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-object v11, Lcom/samsung/wimax/napid/Extensions$Type;->ENTCINR_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto/16 :goto_25

    .line 368
    :pswitch_eb
    const/4 v5, 0x4

    .line 369
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v12, "handle ReadResponse ENTCINR_READ"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v11, Lcom/samsung/wimax/napid/Extensions$Type;->ENTDELAY_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto/16 :goto_25

    .line 373
    :pswitch_f9
    const/4 v5, 0x5

    .line 374
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v12, "handle ReadResponse ENTCINR_READ"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v11, Lcom/samsung/wimax/napid/Extensions$Type;->EXTCINR_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto/16 :goto_25

    .line 378
    :pswitch_107
    const/4 v5, 0x6

    .line 379
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v12, "handle ReadResponse EXTCINR_READ"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v11, Lcom/samsung/wimax/napid/Extensions$Type;->EXTDEAY_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto/16 :goto_25

    .line 383
    :pswitch_115
    const/4 v5, 0x7

    .line 384
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v12, "handle ReadResponse EXTDEAY_READ"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-object v11, Lcom/samsung/wimax/napid/Extensions$Type;->READ_FINISHED:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto/16 :goto_25

    .line 410
    :cond_123
    iget-object v11, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleReadResp ext failed  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-virtual {v13}, Lcom/samsung/wimax/napid/Extensions$Type;->ordinal()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v11, Lcom/samsung/wimax/napid/Extensions;->mExtArray:Ljava/util/List;

    const-string v12, "Failed"

    invoke-interface {v11, v5, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_a5

    .line 345
    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_c1
        :pswitch_cf
        :pswitch_dd
        :pswitch_eb
        :pswitch_f9
        :pswitch_107
        :pswitch_115
    .end packed-switch
.end method

.method private handleUpdateResp(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 492
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v4, "handleUpdateResp is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 494
    .local v2, respArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 495
    if-nez v2, :cond_15

    .line 521
    :cond_14
    :goto_14
    return-void

    .line 499
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 500
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_14

    .line 502
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v4, "update callback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    if-ne v1, v5, :cond_40

    .line 506
    sget-object v3, Lcom/samsung/wimax/napid/Extensions;->mExtArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 507
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v4, "handleUpdateResp success update call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v3, Lcom/samsung/wimax/napid/Extensions$Type;->SATIMEOUT_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 509
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 510
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 516
    .end local v0           #msg:Landroid/os/Message;
    :cond_40
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v4, "handleUpdateResp failed update call"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private handleWriteResp(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 425
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v4, "inside HandleNapIdWriteResp "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v3, 0xb

    new-array v1, v3, [B

    .line 427
    .local v1, respIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 428
    if-nez v1, :cond_15

    .line 474
    :goto_14
    return-void

    .line 432
    :cond_15
    const/4 v3, 0x0

    aget-byte v2, v1, v3

    .line 433
    .local v2, resultByte:I
    array-length v3, v1

    if-ne v3, v5, :cond_66

    if-ne v2, v5, :cond_66

    .line 435
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v4, "HandleNapIdWriteResp write callback success and calling update"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object v3, Lcom/samsung/wimax/napid/Extensions$6;->$SwitchMap$com$samsung$wimax$napid$Extensions$Type:[I

    iget-object v4, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-virtual {v4}, Lcom/samsung/wimax/napid/Extensions$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_6e

    .line 466
    :goto_31
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 467
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 439
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_3e
    sget-object v3, Lcom/samsung/wimax/napid/Extensions$Type;->SATIMEOUT_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_31

    .line 442
    :pswitch_43
    sget-object v3, Lcom/samsung/wimax/napid/Extensions$Type;->SRETRIES_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_31

    .line 445
    :pswitch_48
    sget-object v3, Lcom/samsung/wimax/napid/Extensions$Type;->ISLEEP_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_31

    .line 448
    :pswitch_4d
    sget-object v3, Lcom/samsung/wimax/napid/Extensions$Type;->ERX_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_31

    .line 451
    :pswitch_52
    sget-object v3, Lcom/samsung/wimax/napid/Extensions$Type;->ENTCINR_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_31

    .line 454
    :pswitch_57
    sget-object v3, Lcom/samsung/wimax/napid/Extensions$Type;->ENTDELAY_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_31

    .line 457
    :pswitch_5c
    sget-object v3, Lcom/samsung/wimax/napid/Extensions$Type;->EXTCINR_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_31

    .line 460
    :pswitch_61
    sget-object v3, Lcom/samsung/wimax/napid/Extensions$Type;->EXTDEAY_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_31

    .line 472
    :cond_66
    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v4, "ext  handleWriteResp   else "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 436
    :pswitch_data_6e
    .packed-switch 0x9
        :pswitch_3e
        :pswitch_43
        :pswitch_48
        :pswitch_4d
        :pswitch_52
        :pswitch_57
        :pswitch_5c
        :pswitch_61
    .end packed-switch
.end method

.method private readEntries(Ljava/lang/String;I)V
    .registers 17
    .parameter "entryType"
    .parameter "code"

    .prologue
    .line 298
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 299
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 300
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 302
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 303
    .local v10, nRet:I
    const-string v11, "WiMAX"

    .line 304
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x64

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 305
    const-string v11, "Ext"

    .line 306
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x83

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 307
    move-object v11, p1

    .line 308
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 310
    new-array v8, v2, [B

    .line 311
    .local v8, byTlvData:[B
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 312
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strBuf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 317
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strTlv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v3, "in ext OdbReadReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbReadReq([B)I

    move-result v10

    .line 320
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v7, 0x1

    .line 322
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_120

    .line 324
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in ext odbReadReq is success waiting for intent  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_11f
    return-void

    .line 330
    :cond_120
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ext  odbReadReq failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11f
.end method

.method private setMruWorkingStatus(Z)V
    .registers 2
    .parameter "mruStateVal"

    .prologue
    .line 913
    iput-boolean p1, p0, Lcom/samsung/wimax/napid/Extensions;->mruUpdtState:Z

    .line 915
    return-void
.end method

.method private updateExtensions()V
    .registers 4

    .prologue
    .line 478
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbUpdateReq()I

    move-result v0

    .line 479
    .local v0, res:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 481
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "ext OdbUpdateReq success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_10
    return-void

    .line 485
    :cond_11
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "ext OdbUpdateReq failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private writeEntry(Ljava/lang/String;I)V
    .registers 17
    .parameter "entryType"
    .parameter "code"

    .prologue
    .line 260
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 261
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 262
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 264
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 265
    .local v10, nRet:I
    const-string v11, "WiMAX"

    .line 266
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x64

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 267
    const-string v11, "Ext"

    .line 268
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x83

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 269
    move-object v11, p1

    .line 270
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 272
    new-array v8, v2, [B

    .line 273
    .local v8, byTlvData:[B
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 274
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strBuf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 279
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strTlv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v3, "in ext OdbWriteReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbWriteReq([B)I

    move-result v10

    .line 282
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v7, 0x1

    .line 284
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_120

    .line 286
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in ext OdbWriteReq is success waiting for intent  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_11f
    return-void

    .line 292
    :cond_120
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ext OdbWriteReq failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11f
.end method

.method private writeExtensions(Ljava/lang/String;)V
    .registers 4
    .parameter "val"

    .prologue
    .line 219
    sget-object v0, Lcom/samsung/wimax/napid/Extensions$6;->$SwitchMap$com$samsung$wimax$napid$Extensions$Type:[I

    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-virtual {v1}, Lcom/samsung/wimax/napid/Extensions$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_76

    .line 256
    :goto_d
    return-void

    .line 222
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "calling SATIMEOUT_WRT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v0, 0x87

    invoke-direct {p0, p1, v0}, Lcom/samsung/wimax/napid/Extensions;->writeEntry(Ljava/lang/String;I)V

    goto :goto_d

    .line 226
    :pswitch_1b
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "calling SRETRIES_WRT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/16 v0, 0x88

    invoke-direct {p0, p1, v0}, Lcom/samsung/wimax/napid/Extensions;->writeEntry(Ljava/lang/String;I)V

    goto :goto_d

    .line 230
    :pswitch_28
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "calling ISLEEP_WRT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v0, 0x89

    invoke-direct {p0, p1, v0}, Lcom/samsung/wimax/napid/Extensions;->writeEntry(Ljava/lang/String;I)V

    goto :goto_d

    .line 234
    :pswitch_35
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "calling ERX_WRT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/16 v0, 0x8a

    invoke-direct {p0, p1, v0}, Lcom/samsung/wimax/napid/Extensions;->writeEntry(Ljava/lang/String;I)V

    goto :goto_d

    .line 238
    :pswitch_42
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "calling ENTCINR_WRT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v0, 0x8b

    invoke-direct {p0, p1, v0}, Lcom/samsung/wimax/napid/Extensions;->writeEntry(Ljava/lang/String;I)V

    goto :goto_d

    .line 242
    :pswitch_4f
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "calling ENTDELAY_WRT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v0, 0x8c

    invoke-direct {p0, p1, v0}, Lcom/samsung/wimax/napid/Extensions;->writeEntry(Ljava/lang/String;I)V

    goto :goto_d

    .line 246
    :pswitch_5c
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "calling EXTCINR_WRT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v0, 0x8d

    invoke-direct {p0, p1, v0}, Lcom/samsung/wimax/napid/Extensions;->writeEntry(Ljava/lang/String;I)V

    goto :goto_d

    .line 250
    :pswitch_69
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "calling EXTDEAY_READ"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v0, 0x8e

    invoke-direct {p0, p1, v0}, Lcom/samsung/wimax/napid/Extensions;->writeEntry(Ljava/lang/String;I)V

    goto :goto_d

    .line 219
    :pswitch_data_76
    .packed-switch 0x9
        :pswitch_e
        :pswitch_1b
        :pswitch_28
        :pswitch_35
        :pswitch_42
        :pswitch_4f
        :pswitch_5c
        :pswitch_69
    .end packed-switch
.end method


# virtual methods
.method createWarningDlg()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 695
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    .line 696
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 697
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    .line 698
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->okBtn:Landroid/widget/Button;

    .line 700
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->CancelBtn:Landroid/widget/Button;

    .line 701
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->okBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mOkListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->CancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 704
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method createWriteDlg()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 680
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    .line 681
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 682
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    .line 683
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->okBtn:Landroid/widget/Button;

    .line 685
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->CancelBtn:Landroid/widget/Button;

    .line 686
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->okBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mOkListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->CancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 689
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public handleWimaxStateChange(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 886
    const-string v2, "WimaxState"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 887
    .local v0, ordinal:I
    invoke-static {}, Landroid/net/fourG/wimax/WimaxState;->values()[Landroid/net/fourG/wimax/WimaxState;

    move-result-object v2

    aget-object v1, v2, v0

    .line 888
    .local v1, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] Received wimaxstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_40

    .line 893
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v3, "eapnode DisConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Extensions;->getMruWorkingStatus()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 897
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v3, "in eapnode handleWimaxStateChange calling  checkwimaxsate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Extensions;->checkWimaxStateAndUpdate()V

    .line 903
    :cond_40
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 548
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 549
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 550
    .local v1, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 552
    .local v0, listItemPos:I
    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listItemPos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_5e

    .line 592
    const/4 v2, 0x0

    :goto_2b
    return v2

    .line 558
    :pswitch_2c
    packed-switch v0, :pswitch_data_64

    .line 588
    :goto_2f
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    .line 589
    const/4 v2, 0x1

    goto :goto_2b

    .line 561
    :pswitch_35
    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->SATIMEOUT_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_2f

    .line 564
    :pswitch_3a
    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->SRETRIES_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_2f

    .line 567
    :pswitch_3f
    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ISLEEP_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_2f

    .line 570
    :pswitch_44
    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ERX_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_2f

    .line 573
    :pswitch_49
    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ENTCINR_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_2f

    .line 576
    :pswitch_4e
    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ENTDELAY_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_2f

    .line 579
    :pswitch_53
    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->EXTCINR_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_2f

    .line 582
    :pswitch_58
    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->EXTDEAY_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    goto :goto_2f

    .line 554
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_2c
    .end packed-switch

    .line 558
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_35
        :pswitch_3a
        :pswitch_3f
        :pswitch_44
        :pswitch_49
        :pswitch_4e
        :pswitch_53
        :pswitch_58
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 597
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 598
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/Extensions;->setContentView(I)V

    .line 600
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 601
    sget-object v0, Lcom/samsung/wimax/napid/Extensions;->mExtArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 603
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v1, 0x0

    .line 539
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 540
    const-string v0, "Ext Actions"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 541
    const-string v0, "Write Extension"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 543
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 646
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "create dialog is called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_3e

    .line 668
    const/4 v0, 0x0

    :goto_c
    move-object v1, v0

    .line 670
    :goto_d
    return-object v1

    .line 650
    :pswitch_e
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/Extensions;->createWriteDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 651
    goto :goto_c

    .line 654
    :pswitch_13
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Wrong value entered!!!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/samsung/wimax/napid/Extensions$3;

    invoke-direct {v3, p0}, Lcom/samsung/wimax/napid/Extensions$3;-><init>(Lcom/samsung/wimax/napid/Extensions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->alertDlg:Landroid/app/AlertDialog;

    goto :goto_d

    .line 648
    nop

    :pswitch_data_3e
    .packed-switch 0x4
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 636
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 637
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 638
    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/Extensions;->setMruWorkingStatus(Z)V

    .line 639
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/Extensions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mWimaxExtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 641
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareDialog is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 727
    const/4 v0, 0x4

    if-ne p1, v0, :cond_83

    .line 729
    sget-object v0, Lcom/samsung/wimax/napid/Extensions$6;->$SwitchMap$com$samsung$wimax$napid$Extensions$Type:[I

    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-virtual {v1}, Lcom/samsung/wimax/napid/Extensions$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_96

    .line 777
    :cond_1a
    :goto_1a
    return-void

    .line 732
    :pswitch_1b
    const-string v0, "ScanAttemptTimeOut"

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, "Enter the ScanAttmptTimeOut"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 737
    :pswitch_28
    const-string v0, "ScanRetries"

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, "      Enter the ScanRetries      "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 741
    :pswitch_35
    const-string v0, "idleSleep"

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, "       Enter the idleSleep        "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 745
    :pswitch_42
    const-string v0, "EntryRx"

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, "        Enter the EntryRx          "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 749
    :pswitch_4f
    const-string v0, "EntryCINR"

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, "      Enter the EntryCINR          "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 753
    :pswitch_5c
    const-string v0, "EntryDelay  "

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, "        Enter the EntryDelay          "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 757
    :pswitch_69
    const-string v0, "ExitCINR"

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, "        Enter the ExitCINR             "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 761
    :pswitch_76
    const-string v0, "ExitDelay"

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, "          Enter the ExitDelay           "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 769
    :cond_83
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1a

    .line 771
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->alertDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->WRNG_MSG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 729
    nop

    :pswitch_data_96
    .packed-switch 0x9
        :pswitch_1b
        :pswitch_28
        :pswitch_35
        :pswitch_42
        :pswitch_4f
        :pswitch_5c
        :pswitch_69
        :pswitch_76
    .end packed-switch
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 609
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 610
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mWimaxExtRespFilter:Landroid/content/IntentFilter;

    .line 611
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mWimaxExtRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mWimaxExtRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/Extensions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wimax/napid/Extensions;->mWimaxExtReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/wimax/napid/Extensions;->mWimaxExtRespFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 614
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Extensions;->CheckWimaxOn()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 630
    :goto_29
    return-void

    .line 621
    :cond_2a
    sget-object v1, Lcom/samsung/wimax/napid/Extensions;->mExtArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 622
    new-instance v1, Lcom/samsung/wimax/napid/Extensions$dataAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/wimax/napid/Extensions$dataAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->extAdapter:Landroid/widget/ListAdapter;

    .line 623
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->extAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/Extensions;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 624
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/Extensions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 625
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/Extensions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 626
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->TAG:Ljava/lang/String;

    const-string v2, "SATIMEOUT_READ Called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    sget-object v1, Lcom/samsung/wimax/napid/Extensions$Type;->SATIMEOUT_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    iput-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->type:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 628
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 629
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_29
.end method
