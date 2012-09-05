.class public Lcom/samsung/wimax/napid/EapMethodType;
.super Landroid/app/Activity;
.source "EapMethodType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/napid/EapMethodType$9;,
        Lcom/samsung/wimax/napid/EapMethodType$Type;
    }
.end annotation


# static fields
.field private static final DIALOG_WRT_EAPTYPE:I = 0x0

.field private static final DIALOG_WRT_PSWD:I = 0x11

.field private static final DIALOG_WRT_USRID:I = 0xf

.field private static final MSG_EMT_READ:I = 0x4

.field private static final MSG_EMT_UPDT:I = 0x6

.field private static final MSG_EMT_WRT:I = 0x5

.field private static final MSG_MAC_READ:I = 0xd

.field private static final MSG_PSWD_READ:I = 0xa

.field private static final MSG_PSWD_UPDT:I = 0xc

.field private static final MSG_PSWD_WRT:I = 0xb

.field private static final MSG_USR_READ:I = 0x7

.field private static final MSG_USR_UPDT:I = 0x9

.field private static final MSG_USR_WRT:I = 0x8

.field private static final OPTION_MENU_WRITE_EAPTYPE:I = 0x0

.field private static final OPTION_MENU_WRITE_PSWD:I = 0x10

.field private static final OPTION_MENU_WRITE_USRID:I = 0xe

.field public static writeEapMethodRequest:Z


# instance fields
.field CancelBtn:Landroid/widget/Button;

.field TAG:Ljava/lang/String;

.field eapMac_Title:Landroid/widget/TextView;

.field eapMac_Val:Landroid/widget/TextView;

.field eapMethodValue:Landroid/widget/TextView;

.field eapPswdEdit:Landroid/widget/EditText;

.field eapPswd_Title:Landroid/widget/TextView;

.field eapPswd_Val:Landroid/widget/TextView;

.field eapTypeValue:Landroid/widget/EditText;

.field eapUsrIdEdit:Landroid/widget/EditText;

.field eapUsrId_Title:Landroid/widget/TextView;

.field eapUsrId_Val:Landroid/widget/TextView;

.field mCancelListner:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field mOkListner:Landroid/view/View$OnClickListener;

.field mPswdCancelListner:Landroid/view/View$OnClickListener;

.field mPswdListner:Landroid/view/View$OnClickListener;

.field mUsrIdCancelListner:Landroid/view/View$OnClickListener;

.field mUsrIdListner:Landroid/view/View$OnClickListener;

.field mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field mWimaxEapMethodRespFilter:Landroid/content/IntentFilter;

.field private mWimaxEapNameReceiver:Landroid/content/BroadcastReceiver;

.field mruUpdtState:Z

.field okBtn:Landroid/widget/Button;

.field type:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wimax/napid/EapMethodType;->writeEapMethodRequest:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const-string v0, "WIMAX_CFG"

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mruUpdtState:Z

    .line 81
    sget-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->UNKNOWN:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 82
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapMethodType$1;-><init>(Lcom/samsung/wimax/napid/EapMethodType;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapMethodType$2;-><init>(Lcom/samsung/wimax/napid/EapMethodType;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimaxEapNameReceiver:Landroid/content/BroadcastReceiver;

    .line 919
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$3;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapMethodType$3;-><init>(Lcom/samsung/wimax/napid/EapMethodType;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mPswdListner:Landroid/view/View$OnClickListener;

    .line 931
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$4;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapMethodType$4;-><init>(Lcom/samsung/wimax/napid/EapMethodType;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mPswdCancelListner:Landroid/view/View$OnClickListener;

    .line 958
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$5;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapMethodType$5;-><init>(Lcom/samsung/wimax/napid/EapMethodType;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mUsrIdListner:Landroid/view/View$OnClickListener;

    .line 970
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$6;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapMethodType$6;-><init>(Lcom/samsung/wimax/napid/EapMethodType;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mUsrIdCancelListner:Landroid/view/View$OnClickListener;

    .line 996
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$7;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapMethodType$7;-><init>(Lcom/samsung/wimax/napid/EapMethodType;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mOkListner:Landroid/view/View$OnClickListener;

    .line 1008
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$8;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapMethodType$8;-><init>(Lcom/samsung/wimax/napid/EapMethodType;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mCancelListner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1158
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1161
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :goto_17
    return v0

    .line 1165
    :cond_18
    const-string v1, "WiMAX modem is OFF , Please turn on WiMAX in Settings!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1166
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v1, "WiMAX modem is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic access$000(Lcom/samsung/wimax/napid/EapMethodType;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->readEapMethod()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wimax/napid/EapMethodType;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->checkWimaxStateAndUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->handleUsrIdWrtRespose(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->handleUsrIdUpdtRespose(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->handlePswdReadResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->handlePswdWrtResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->handlePswdUpdtResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->handleMACReadResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/wimax/napid/EapMethodType;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/wimax/napid/EapMethodType;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->readUsrId()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/wimax/napid/EapMethodType;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->readPswd()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/wimax/napid/EapMethodType;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->readMacAddr()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->handleEapMethodReadResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/wimax/napid/EapMethodType;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->setMruWorkingStatus(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->handleEapMethodWriteResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->handleEapMethodUpdateResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/wimax/napid/EapMethodType;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapMethodType;->handleUsrIdReadResponse(Landroid/content/Intent;)V

    return-void
.end method

.method public static byteToInt([B)J
    .registers 7
    .parameter "by"

    .prologue
    .line 578
    const-wide/16 v1, 0x0

    .line 579
    .local v1, value:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_12

    .line 581
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 583
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

    .line 584
    return-wide v1
.end method

.method private checkWimaxStateAndUpdate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1210
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    .line 1211
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

    .line 1214
    :cond_1b
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "in checkWimaxStateAndUpdate state is other then disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 1216
    invoke-direct {p0, v3}, Lcom/samsung/wimax/napid/EapMethodType;->setMruWorkingStatus(Z)V

    .line 1217
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 1242
    :goto_2f
    return-void

    .line 1220
    :cond_30
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "eaptype inside  checkWimaxStateAndUpdate else part"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/EapMethodType;->setMruWorkingStatus(Z)V

    .line 1223
    sget-object v1, Lcom/samsung/wimax/napid/EapMethodType$9;->$SwitchMap$com$samsung$wimax$napid$EapMethodType$Type:[I

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    invoke-virtual {v2}, Lcom/samsung/wimax/napid/EapMethodType$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_70

    goto :goto_2f

    .line 1226
    :sswitch_49
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "******write writeEapType called  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->val:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/EapMethodType;->writeEapType(Ljava/lang/String;)V

    goto :goto_2f

    .line 1230
    :sswitch_56
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "******write password called  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->val:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/EapMethodType;->writePswd(Ljava/lang/String;)V

    goto :goto_2f

    .line 1234
    :sswitch_63
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "******write user id  called  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->val:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/EapMethodType;->writeUsrId(Ljava/lang/String;)V

    goto :goto_2f

    .line 1223
    :sswitch_data_70
    .sparse-switch
        0x2 -> :sswitch_49
        0x5 -> :sswitch_63
        0x8 -> :sswitch_56
    .end sparse-switch
.end method

.method private createPswdDlg()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 903
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 904
    .local v0, dialog:Landroid/app/Dialog;
    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 905
    const-string v1, "Add Password"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 907
    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswdEdit:Landroid/widget/EditText;

    .line 908
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswdEdit:Landroid/widget/EditText;

    const-string v2, "Please Enter the Password"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswdEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 910
    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->okBtn:Landroid/widget/Button;

    .line 911
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->CancelBtn:Landroid/widget/Button;

    .line 912
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->okBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->mPswdListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->CancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->mPswdCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 915
    return-object v0
.end method

.method private createTypeDlg()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 982
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 983
    .local v0, dialog:Landroid/app/Dialog;
    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 984
    const-string v1, "Add Eap Type Value"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 985
    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapTypeValue:Landroid/widget/EditText;

    .line 986
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapTypeValue:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 987
    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->okBtn:Landroid/widget/Button;

    .line 988
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->CancelBtn:Landroid/widget/Button;

    .line 989
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->okBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->mOkListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 990
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->CancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->mCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 992
    return-object v0
.end method

.method private createUsrIdDlg()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 942
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 943
    .local v0, dialog:Landroid/app/Dialog;
    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 944
    const-string v1, "Add User Identity"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 946
    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrIdEdit:Landroid/widget/EditText;

    .line 947
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrIdEdit:Landroid/widget/EditText;

    const-string v2, "Please Enter the User Identification "

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrIdEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 949
    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->okBtn:Landroid/widget/Button;

    .line 950
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->CancelBtn:Landroid/widget/Button;

    .line 951
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->okBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->mUsrIdListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->CancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->mUsrIdCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 954
    return-object v0
.end method

.method private getMruWorkingStatus()Z
    .registers 2

    .prologue
    .line 1197
    iget-boolean v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mruUpdtState:Z

    return v0
.end method

.method private handleEapMethodReadResponse(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    .line 217
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v11, "handleEapMethodReadResponse is called"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v10, 0xb

    new-array v6, v10, [B

    .line 219
    .local v6, respEapIdArray:[B
    const-string v10, "WimaxOMADMRespData"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 220
    const/4 v10, 0x0

    aget-byte v5, v6, v10

    .line 221
    .local v5, res:I
    const/4 v10, 0x1

    if-ne v5, v10, :cond_144

    array-length v10, v6

    const/4 v11, 0x1

    if-eq v10, v11, :cond_144

    .line 225
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v11, "handleEapMethodReadResponse read callback"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v10, 0x2

    new-array v4, v10, [B

    .line 228
    .local v4, nTagArray:[B
    const/4 v10, 0x2

    new-array v3, v10, [B

    .line 229
    .local v3, nLenArray:[B
    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-byte v11, v6, v11

    aput-byte v11, v4, v10

    .line 230
    const/4 v10, 0x1

    const/4 v11, 0x2

    aget-byte v11, v6, v11

    aput-byte v11, v4, v10

    .line 231
    const/4 v10, 0x0

    const/4 v11, 0x3

    aget-byte v11, v6, v11

    aput-byte v11, v3, v10

    .line 232
    const/4 v10, 0x1

    const/4 v11, 0x4

    aget-byte v11, v6, v11

    aput-byte v11, v3, v10

    .line 233
    invoke-static {v4}, Lcom/samsung/wimax/napid/EapMethodType;->byteToInt([B)J

    move-result-wide v8

    .line 234
    .local v8, tag:J
    invoke-static {v3}, Lcom/samsung/wimax/napid/EapMethodType;->byteToInt([B)J

    move-result-wide v0

    .line 235
    .local v0, len:J
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleEapMethodReadResponse tag ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "len =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v7, Ljava/lang/String;

    const/4 v10, 0x5

    long-to-int v11, v0

    invoke-direct {v7, v6, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 237
    .local v7, sValue:Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleEapMethodReadResponse value  ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v10, "21"

    invoke-virtual {v7, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_d5

    .line 240
    const-string v7, "EAPTTLS"

    .line 242
    sget-object v10, Lcom/samsung/wimax/napid/EapMethodType$Type;->USER_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 243
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 244
    .local v2, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrId_Title:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrId_Val:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswd_Title:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswd_Val:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMac_Val:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMac_Title:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    .end local v2           #msg:Landroid/os/Message;
    :goto_cf
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMethodValue:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .end local v0           #len:J
    .end local v3           #nLenArray:[B
    .end local v4           #nTagArray:[B
    .end local v7           #sValue:Ljava/lang/String;
    .end local v8           #tag:J
    :goto_d4
    return-void

    .line 253
    .restart local v0       #len:J
    .restart local v3       #nLenArray:[B
    .restart local v4       #nTagArray:[B
    .restart local v7       #sValue:Ljava/lang/String;
    .restart local v8       #tag:J
    :cond_d5
    const-string v10, "13"

    invoke-virtual {v7, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_119

    .line 255
    const-string v7, "EAPTLS"

    .line 256
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrId_Title:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrId_Val:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswd_Title:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswd_Val:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMac_Val:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMac_Title:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    sget-object v10, Lcom/samsung/wimax/napid/EapMethodType$Type;->MAC_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 265
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 266
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_cf

    .line 270
    .end local v2           #msg:Landroid/os/Message;
    :cond_119
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrId_Title:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrId_Val:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswd_Title:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswd_Val:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMac_Val:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMac_Title:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_cf

    .line 283
    .end local v0           #len:J
    .end local v3           #nLenArray:[B
    .end local v4           #nTagArray:[B
    .end local v7           #sValue:Ljava/lang/String;
    .end local v8           #tag:J
    :cond_144
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v11, "handleEapMethodReadResponse read fails"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4
.end method

.method private handleEapMethodUpdateResponse(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 311
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handleEapMethodUpdateResponse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 313
    .local v2, respEapIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 314
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 315
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_31

    .line 318
    if-ne v1, v5, :cond_32

    .line 321
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "success handleEapMethodUpdateResponse update call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v3, Lcom/samsung/wimax/napid/EapMethodType$Type;->EMT_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 323
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 324
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    .end local v0           #msg:Landroid/os/Message;
    :cond_31
    :goto_31
    return-void

    .line 329
    :cond_32
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "failed handleEapMethodUpdateResponse update call"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private handleEapMethodWriteResponse(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 290
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handleEapMethodWriteResponse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 292
    .local v2, respRlmIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 293
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 294
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_32

    if-ne v1, v5, :cond_32

    .line 296
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handleEapMethodWriteResponse success write calback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v3, Lcom/samsung/wimax/napid/EapMethodType$Type;->EMT_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 299
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 300
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    .end local v0           #msg:Landroid/os/Message;
    :goto_31
    return-void

    .line 305
    :cond_32
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handleEapMethodWriteResponse failed write callback"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private handleMACReadResponse(Landroid/content/Intent;)V
    .registers 16
    .parameter "intent"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 541
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v10, "handleMACReadResponse is called"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/16 v9, 0xb

    new-array v5, v9, [B

    .line 543
    .local v5, respMacIdArray:[B
    const-string v9, "WimaxOMADMRespData"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 544
    if-nez v5, :cond_17

    .line 575
    :goto_16
    return-void

    .line 548
    :cond_17
    aget-byte v4, v5, v12

    .line 550
    .local v4, res:I
    if-ne v4, v11, :cond_90

    array-length v9, v5

    if-eq v9, v11, :cond_90

    .line 554
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v10, "handleMACReadResponse read callback"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-array v3, v13, [B

    .line 557
    .local v3, nTagArray:[B
    new-array v2, v13, [B

    .line 558
    .local v2, nLenArray:[B
    aget-byte v9, v5, v11

    aput-byte v9, v3, v12

    .line 559
    aget-byte v9, v5, v13

    aput-byte v9, v3, v11

    .line 560
    const/4 v9, 0x3

    aget-byte v9, v5, v9

    aput-byte v9, v2, v12

    .line 561
    const/4 v9, 0x4

    aget-byte v9, v5, v9

    aput-byte v9, v2, v11

    .line 562
    invoke-static {v3}, Lcom/samsung/wimax/napid/EapMethodType;->byteToInt([B)J

    move-result-wide v7

    .line 563
    .local v7, tag:J
    invoke-static {v2}, Lcom/samsung/wimax/napid/EapMethodType;->byteToInt([B)J

    move-result-wide v0

    .line 564
    .local v0, len:J
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMACReadResponse tag ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "len =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v6, Ljava/lang/String;

    const/4 v9, 0x5

    long-to-int v10, v0

    invoke-direct {v6, v5, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 566
    .local v6, sValue:Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMACReadResponse value  ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMac_Val:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 573
    .end local v0           #len:J
    .end local v2           #nLenArray:[B
    .end local v3           #nTagArray:[B
    .end local v6           #sValue:Ljava/lang/String;
    .end local v7           #tag:J
    :cond_90
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v10, "handleMACReadResponse read fails"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16
.end method

.method private handlePswdReadResponse(Landroid/content/Intent;)V
    .registers 16
    .parameter "intent"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 441
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v10, "handlePswdReadResponse is called"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/16 v9, 0xb

    new-array v5, v9, [B

    .line 443
    .local v5, respPsdIdArray:[B
    const-string v9, "WimaxOMADMRespData"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 444
    if-nez v5, :cond_17

    .line 475
    :goto_16
    return-void

    .line 448
    :cond_17
    aget-byte v4, v5, v12

    .line 450
    .local v4, res:I
    if-ne v4, v11, :cond_90

    array-length v9, v5

    if-eq v9, v11, :cond_90

    .line 454
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v10, "handlePswdReadResponse read callback"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-array v3, v13, [B

    .line 457
    .local v3, nTagArray:[B
    new-array v2, v13, [B

    .line 458
    .local v2, nLenArray:[B
    aget-byte v9, v5, v11

    aput-byte v9, v3, v12

    .line 459
    aget-byte v9, v5, v13

    aput-byte v9, v3, v11

    .line 460
    const/4 v9, 0x3

    aget-byte v9, v5, v9

    aput-byte v9, v2, v12

    .line 461
    const/4 v9, 0x4

    aget-byte v9, v5, v9

    aput-byte v9, v2, v11

    .line 462
    invoke-static {v3}, Lcom/samsung/wimax/napid/EapMethodType;->byteToInt([B)J

    move-result-wide v7

    .line 463
    .local v7, tag:J
    invoke-static {v2}, Lcom/samsung/wimax/napid/EapMethodType;->byteToInt([B)J

    move-result-wide v0

    .line 464
    .local v0, len:J
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlePswdReadResponse tag ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "len =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v6, Ljava/lang/String;

    const/4 v9, 0x5

    long-to-int v10, v0

    invoke-direct {v6, v5, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 466
    .local v6, sValue:Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlePswdReadResponse value  ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswd_Val:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 473
    .end local v0           #len:J
    .end local v2           #nLenArray:[B
    .end local v3           #nTagArray:[B
    .end local v6           #sValue:Ljava/lang/String;
    .end local v7           #tag:J
    :cond_90
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v10, "handlePswdReadResponse read fails"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16
.end method

.method private handlePswdUpdtResponse(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 506
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handlePswdUpdtResponse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 508
    .local v2, respPsdIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 509
    if-nez v2, :cond_15

    .line 537
    :cond_14
    :goto_14
    return-void

    .line 513
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 514
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_14

    .line 517
    if-ne v1, v5, :cond_36

    .line 520
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "success handlePswdUpdtResponse update call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    sget-object v3, Lcom/samsung/wimax/napid/EapMethodType$Type;->PASS_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 522
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 523
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 532
    .end local v0           #msg:Landroid/os/Message;
    :cond_36
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "failed handlePswdUpdtResponse update call"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private handlePswdWrtResponse(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 480
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handlePswdWrtResponse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 482
    .local v2, respPsdIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 483
    if-nez v2, :cond_15

    .line 501
    :goto_14
    return-void

    .line 487
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 488
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_36

    if-ne v1, v5, :cond_36

    .line 490
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handlePswdWrtResponse success write calback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-object v3, Lcom/samsung/wimax/napid/EapMethodType$Type;->PASS_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 493
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 494
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 499
    .end local v0           #msg:Landroid/os/Message;
    :cond_36
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handlePswdWrtResponse failed write callback"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private handleUsrIdReadResponse(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    .line 338
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v11, "handleUsrIdReadResponse is called"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/16 v10, 0xb

    new-array v6, v10, [B

    .line 340
    .local v6, respEapIdArray:[B
    const-string v10, "WimaxOMADMRespData"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 341
    if-nez v6, :cond_14

    .line 376
    :goto_13
    return-void

    .line 345
    :cond_14
    const/4 v10, 0x0

    aget-byte v5, v6, v10

    .line 347
    .local v5, res:I
    const/4 v10, 0x1

    if-ne v5, v10, :cond_ac

    array-length v10, v6

    const/4 v11, 0x1

    if-eq v10, v11, :cond_ac

    .line 351
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v11, "handleUsrIdReadResponse read callback"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v10, 0x2

    new-array v4, v10, [B

    .line 354
    .local v4, nTagArray:[B
    const/4 v10, 0x2

    new-array v3, v10, [B

    .line 355
    .local v3, nLenArray:[B
    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-byte v11, v6, v11

    aput-byte v11, v4, v10

    .line 356
    const/4 v10, 0x1

    const/4 v11, 0x2

    aget-byte v11, v6, v11

    aput-byte v11, v4, v10

    .line 357
    const/4 v10, 0x0

    const/4 v11, 0x3

    aget-byte v11, v6, v11

    aput-byte v11, v3, v10

    .line 358
    const/4 v10, 0x1

    const/4 v11, 0x4

    aget-byte v11, v6, v11

    aput-byte v11, v3, v10

    .line 359
    invoke-static {v4}, Lcom/samsung/wimax/napid/EapMethodType;->byteToInt([B)J

    move-result-wide v8

    .line 360
    .local v8, tag:J
    invoke-static {v3}, Lcom/samsung/wimax/napid/EapMethodType;->byteToInt([B)J

    move-result-wide v0

    .line 361
    .local v0, len:J
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleUsrIdReadResponse tag ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "len =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v7, Ljava/lang/String;

    const/4 v10, 0x5

    long-to-int v11, v0

    invoke-direct {v7, v6, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 363
    .local v7, sValue:Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleUsrIdReadResponse value  ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrId_Val:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    sget-object v10, Lcom/samsung/wimax/napid/EapMethodType$Type;->PASS_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 368
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 369
    .local v2, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const-wide/16 v11, 0xc8

    invoke-virtual {v10, v2, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_13

    .line 374
    .end local v0           #len:J
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #nLenArray:[B
    .end local v4           #nTagArray:[B
    .end local v7           #sValue:Ljava/lang/String;
    .end local v8           #tag:J
    :cond_ac
    iget-object v10, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v11, "handleUsrIdReadResponse read fails"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method

.method private handleUsrIdUpdtRespose(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 406
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handleUsrIdUpdtRespose is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 408
    .local v2, respUsrIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 409
    if-nez v2, :cond_15

    .line 437
    :cond_14
    :goto_14
    return-void

    .line 413
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 414
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_14

    .line 417
    if-ne v1, v5, :cond_35

    .line 420
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "success handleUsrIdUpdtRespose update call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object v3, Lcom/samsung/wimax/napid/EapMethodType$Type;->USER_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 422
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 432
    .end local v0           #msg:Landroid/os/Message;
    :cond_35
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "failed handleUsrIdUpdtRespose update call"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private handleUsrIdWrtRespose(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 380
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handleUsrIdWrtRespose is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 382
    .local v2, respUsrIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 383
    if-nez v2, :cond_15

    .line 401
    :goto_14
    return-void

    .line 387
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 388
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_36

    if-ne v1, v5, :cond_36

    .line 390
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handleUsrIdWrtRespose success write calback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget-object v3, Lcom/samsung/wimax/napid/EapMethodType$Type;->USER_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 393
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 394
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 399
    .end local v0           #msg:Landroid/os/Message;
    :cond_36
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v4, "handleUsrIdWrtRespose failed write callback"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private readEapMethod()V
    .registers 15

    .prologue
    .line 591
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 592
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 593
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 595
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 596
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 597
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 598
    const-string v11, "Operator"

    .line 599
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 600
    const-string v11, "Sprint"

    .line 601
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 602
    const-string v11, "SubscriptionParameters"

    .line 603
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 604
    const-string v11, "PrimarySubscription"

    .line 605
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 606
    const-string v11, "EAP"

    .line 607
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x211

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 608
    const-string v11, "0"

    .line 609
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 610
    const-string v11, "METHOD-TYPE"

    .line 611
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x212

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 613
    new-array v8, v2, [B

    .line 614
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

    .line 615
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 617
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
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

    .line 620
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 621
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in eapmethodtype OdbReadReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbReadReq([B)I

    move-result v10

    .line 623
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 624
    const/4 v7, 0x1

    .line 625
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_179

    .line 627
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in EapMethodtype odbReadReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_178
    return-void

    .line 631
    :cond_179
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "EapMethodtype odbReadReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178
.end method

.method private readMacAddr()V
    .registers 15

    .prologue
    .line 735
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 736
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 737
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 739
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 740
    .local v10, nRet:I
    const-string v11, "WiMAX"

    .line 741
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x64

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 742
    const-string v11, "WiMAXRadioModule"

    .line 743
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x65

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 744
    const-string v11, "0"

    .line 745
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 746
    const-string v11, "MACAdress"

    .line 747
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x6b

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 750
    new-array v8, v2, [B

    .line 751
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

    .line 752
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 754
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
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

    .line 757
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 758
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in MACAddr OdbReadReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbReadReq([B)I

    move-result v10

    .line 760
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 761
    const/4 v7, 0x1

    .line 762
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_125

    .line 764
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in MACAddr OdbReadReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_124
    return-void

    .line 768
    :cond_125
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "MACAddr OdbReadReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124
.end method

.method private readPswd()V
    .registers 15

    .prologue
    .line 687
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 688
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 689
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 691
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 692
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 693
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 694
    const-string v11, "Operator"

    .line 695
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 696
    const-string v11, "Sprint"

    .line 697
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 698
    const-string v11, "SubscriptionParameters"

    .line 699
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 700
    const-string v11, "PrimarySubscription"

    .line 701
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 702
    const-string v11, "EAP"

    .line 703
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x211

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 704
    const-string v11, "0"

    .line 705
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 706
    const-string v11, "PASSWORD"

    .line 707
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x217

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 709
    new-array v8, v2, [B

    .line 710
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

    .line 711
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 713
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
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

    .line 716
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 717
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in pswd OdbReadReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbReadReq([B)I

    move-result v10

    .line 719
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 720
    const/4 v7, 0x1

    .line 721
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_179

    .line 723
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in pswd OdbReadReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_178
    return-void

    .line 727
    :cond_179
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "pswd OdbReadReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178
.end method

.method private readUsrId()V
    .registers 15

    .prologue
    .line 638
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 639
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 640
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 642
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 643
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 644
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 645
    const-string v11, "Operator"

    .line 646
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 647
    const-string v11, "Sprint"

    .line 648
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 649
    const-string v11, "SubscriptionParameters"

    .line 650
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 651
    const-string v11, "PrimarySubscription"

    .line 652
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 653
    const-string v11, "EAP"

    .line 654
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x211

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 655
    const-string v11, "0"

    .line 656
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 657
    const-string v11, "USER-IDENTITY"

    .line 658
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x215

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 660
    new-array v8, v2, [B

    .line 661
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

    .line 662
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 664
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
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

    .line 667
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 668
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in EapMethodtype userid OdbReadReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbReadReq([B)I

    move-result v10

    .line 670
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 671
    const/4 v7, 0x1

    .line 672
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_179

    .line 674
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in EapMethodtype userid odbReadReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_178
    return-void

    .line 678
    :cond_179
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "EapMethodtype userid odbReadReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178
.end method

.method private setMruWorkingStatus(Z)V
    .registers 2
    .parameter "mruStateVal"

    .prologue
    .line 1203
    iput-boolean p1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mruUpdtState:Z

    .line 1205
    return-void
.end method

.method private writeEapType(Ljava/lang/String;)V
    .registers 16
    .parameter "value"

    .prologue
    .line 1020
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 1021
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 1022
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 1024
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 1025
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 1026
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1027
    const-string v11, "Operator"

    .line 1028
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1029
    const-string v11, "Sprint"

    .line 1030
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1031
    const-string v11, "SubscriptionParameters"

    .line 1032
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1033
    const-string v11, "PrimarySubscription"

    .line 1034
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1035
    const-string v11, "EAP"

    .line 1036
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x211

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1037
    const-string v11, "0"

    .line 1038
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1039
    move-object v11, p1

    .line 1040
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x212

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1041
    new-array v8, v2, [B

    .line 1042
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

    .line 1043
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 1045
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1047
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

    .line 1048
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 1049
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in eapmethodtype OdbWriteReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/wimax/napid/EapMethodType;->writeEapMethodRequest:Z

    .line 1051
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbWriteReq([B)I

    move-result v10

    .line 1052
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 1053
    const/4 v7, 0x1

    .line 1054
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_17b

    .line 1056
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in Eapmethodtype OdbWriteReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_17a
    return-void

    .line 1060
    :cond_17b
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "Eapmethodtype failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17a
.end method

.method private writeUsrId(Ljava/lang/String;)V
    .registers 16
    .parameter "val"

    .prologue
    .line 1066
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 1067
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 1068
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 1070
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 1071
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 1072
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1073
    const-string v11, "Operator"

    .line 1074
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1075
    const-string v11, "Sprint"

    .line 1076
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1077
    const-string v11, "SubscriptionParameters"

    .line 1078
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1079
    const-string v11, "PrimarySubscription"

    .line 1080
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1081
    const-string v11, "EAP"

    .line 1082
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x211

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1083
    const-string v11, "0"

    .line 1084
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1085
    move-object v11, p1

    .line 1086
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x215

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1088
    new-array v8, v2, [B

    .line 1089
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

    .line 1090
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 1092
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1094
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

    .line 1095
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 1096
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in UsrId OdbWriteReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbWriteReq([B)I

    move-result v10

    .line 1098
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 1099
    const/4 v7, 0x1

    .line 1100
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_178

    .line 1102
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in UsrId OdbWriteReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :goto_177
    return-void

    .line 1106
    :cond_178
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "UsrId OdbWriteReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177
.end method


# virtual methods
.method public handleWimaxStateChange(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 1176
    const-string v2, "WimaxState"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1177
    .local v0, ordinal:I
    invoke-static {}, Landroid/net/fourG/wimax/WimaxState;->values()[Landroid/net/fourG/wimax/WimaxState;

    move-result-object v2

    aget-object v1, v2, v0

    .line 1178
    .local v1, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 1180
    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_40

    .line 1183
    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "eaptype DisConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->getMruWorkingStatus()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1187
    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in eaptype handleWimaxStateChange calling  checkwimaxsate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->checkWimaxStateAndUpdate()V

    .line 1193
    :cond_40
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v1, "eapMethodType onconfig change called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 774
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 775
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapMethodType;->setContentView(I)V

    .line 776
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapMethodType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMethodValue:Landroid/widget/TextView;

    .line 777
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapMethodType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrId_Title:Landroid/widget/TextView;

    .line 778
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapMethodType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrId_Val:Landroid/widget/TextView;

    .line 779
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapMethodType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswd_Title:Landroid/widget/TextView;

    .line 780
    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapMethodType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapPswd_Val:Landroid/widget/TextView;

    .line 781
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapMethodType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMac_Title:Landroid/widget/TextView;

    .line 782
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapMethodType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMac_Val:Landroid/widget/TextView;

    .line 784
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 785
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 884
    .local v0, dialog:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_16

    .line 895
    const/4 v0, 0x0

    .line 897
    :goto_5
    return-object v0

    .line 886
    :sswitch_6
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->createTypeDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 887
    goto :goto_5

    .line 889
    :sswitch_b
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->createUsrIdDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 890
    goto :goto_5

    .line 892
    :sswitch_10
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->createPswdDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 893
    goto :goto_5

    .line 884
    nop

    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_6
        0xf -> :sswitch_b
        0x11 -> :sswitch_10
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 827
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 828
    const-string v0, "Write Eaptype"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 829
    const/16 v0, 0xe

    const-string v1, "Write UserId"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 830
    const/16 v0, 0x10

    const-string v1, "Write Password"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 835
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 859
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 860
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_1e

    move v0, v1

    .line 877
    :goto_d
    return v0

    .line 864
    :sswitch_e
    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/EapMethodType;->showDialog(I)V

    goto :goto_d

    .line 869
    :sswitch_12
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/EapMethodType;->showDialog(I)V

    goto :goto_d

    .line 873
    :sswitch_18
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/napid/EapMethodType;->showDialog(I)V

    goto :goto_d

    .line 860
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_e
        0xe -> :sswitch_12
        0x10 -> :sswitch_18
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 813
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 814
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v1, "onPause is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 816
    invoke-direct {p0, v2}, Lcom/samsung/wimax/napid/EapMethodType;->setMruWorkingStatus(Z)V

    .line 817
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/EapMethodType;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimaxEapNameReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 820
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0xe

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 842
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 844
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMethodValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EAPTTLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2e

    .line 846
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 847
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 853
    :goto_2d
    return v2

    .line 850
    :cond_2e
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 851
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2d
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 790
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 791
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v2, "onResume is callled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimaxEapMethodRespFilter:Landroid/content/IntentFilter;

    .line 795
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimaxEapMethodRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimaxEapMethodRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/EapMethodType;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimaxEapNameReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimaxEapMethodRespFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 798
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapMethodType;->CheckWimaxOn()Z

    move-result v1

    if-nez v1, :cond_38

    .line 800
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->eapMethodValue:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    :goto_37
    return-void

    .line 804
    :cond_38
    sget-object v1, Lcom/samsung/wimax/napid/EapMethodType$Type;->EMT_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 805
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 806
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37
.end method

.method writePswd(Ljava/lang/String;)V
    .registers 16
    .parameter "val"

    .prologue
    .line 1112
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 1113
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 1114
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 1116
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 1117
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 1118
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1119
    const-string v11, "Operator"

    .line 1120
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1121
    const-string v11, "Sprint"

    .line 1122
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1123
    const-string v11, "SubscriptionParameters"

    .line 1124
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1125
    const-string v11, "PrimarySubscription"

    .line 1126
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1127
    const-string v11, "EAP"

    .line 1128
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x211

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1129
    const-string v11, "0"

    .line 1130
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1131
    move-object v11, p1

    .line 1132
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x217

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 1134
    new-array v8, v2, [B

    .line 1135
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

    .line 1136
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 1138
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1140
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

    .line 1141
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 1142
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in passwd OdbWriteReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbWriteReq([B)I

    move-result v10

    .line 1144
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

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

    .line 1145
    const/4 v7, 0x1

    .line 1146
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_178

    .line 1148
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "in passwd OdbWriteReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :goto_177
    return-void

    .line 1152
    :cond_178
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType;->TAG:Ljava/lang/String;

    const-string v3, "passwd OdbWriteReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177
.end method
