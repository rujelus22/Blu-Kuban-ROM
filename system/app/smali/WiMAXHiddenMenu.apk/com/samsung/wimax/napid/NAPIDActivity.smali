.class public Lcom/samsung/wimax/napid/NAPIDActivity;
.super Landroid/app/ListActivity;
.source "NAPIDActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter;
    }
.end annotation


# static fields
.field static final DIALOG_WRNG_NAPID:I = 0x6

.field static final DIALOG_WRNG_PRT:I = 0x8

.field static final DIALOG_WRT_NAPID:I = 0x3

.field static final DIALOG_WRT_PRT:I = 0x4

.field public static final EXTRA_WIMAX_OMADM_RESP_DATA:Ljava/lang/String; = "WimaxOMADMRespData"

.field static final MSG_HANDLE_RESP:I = 0x5

.field static final MSG_READ_NAPID:I = 0x9

.field static final MSG_READ_PRT:I = 0xc

.field static final MSG_UPDATE_NAPID:I = 0xb

.field static final MSG_UPDATE_PRT:I = 0xe

.field static final MSG_WRITE_NAPID:I = 0xa

.field static final MSG_WRITE_PRT:I = 0xd

.field private static final OPTION_MENU_WRT_NAPID:I = 0x0

.field private static final OPTION_MENU_WRT_PRT:I = 0x2

.field static final TYPE_NAPID_READ:I = 0xf

.field static final TYPE_NAPID_UPDT:I = 0x11

.field static final TYPE_NAPID_WRT:I = 0x10

.field static final TYPE_PRT_READ:I = 0x12

.field static final TYPE_PRT_UPDT:I = 0x14

.field static final TYPE_PRT_WRT:I = 0x13

.field public static final WIMAX_OMADM_RESPONSE_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_OMADM_RESPONSE"

.field static listNapIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static listPrtArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static napIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static prtArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field CancelBtn:Landroid/widget/Button;

.field TAG:Ljava/lang/String;

.field count:B

.field listItemPos:I

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mNapIdCancelListner:Landroid/view/View$OnClickListener;

.field mNapIdOkListner:Landroid/view/View$OnClickListener;

.field mPrtCancelListner:Landroid/view/View$OnClickListener;

.field mPrtOkListner:Landroid/view/View$OnClickListener;

.field mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimaxNapIdReceiver:Landroid/content/BroadcastReceiver;

.field mWimaxnapIdRespFilter:Landroid/content/IntentFilter;

.field private m_nCurrentStateDetail:I

.field mruUpdtState:Z

.field napIdAdapter:Landroid/widget/ListAdapter;

.field napIdText:Landroid/widget/EditText;

.field napIdValue:Ljava/lang/String;

.field okBtn:Landroid/widget/Button;

.field prtIdText:Landroid/widget/EditText;

.field prtValue:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdArray:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/wimax/napid/NAPIDActivity;->prtArray:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/wimax/napid/NAPIDActivity;->listNapIdArray:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/wimax/napid/NAPIDActivity;->listPrtArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 65
    iput v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->m_nCurrentStateDetail:I

    .line 66
    iput-byte v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    .line 67
    iput v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 68
    const-string v0, "WIMAX_CFG"

    iput-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mruUpdtState:Z

    .line 86
    new-instance v0, Lcom/samsung/wimax/napid/NAPIDActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/NAPIDActivity$1;-><init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimaxNapIdReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Lcom/samsung/wimax/napid/NAPIDActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/NAPIDActivity$2;-><init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    .line 763
    new-instance v0, Lcom/samsung/wimax/napid/NAPIDActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/NAPIDActivity$5;-><init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mNapIdOkListner:Landroid/view/View$OnClickListener;

    .line 807
    new-instance v0, Lcom/samsung/wimax/napid/NAPIDActivity$6;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/NAPIDActivity$6;-><init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mNapIdCancelListner:Landroid/view/View$OnClickListener;

    .line 838
    new-instance v0, Lcom/samsung/wimax/napid/NAPIDActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/NAPIDActivity$7;-><init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mPrtOkListner:Landroid/view/View$OnClickListener;

    .line 861
    new-instance v0, Lcom/samsung/wimax/napid/NAPIDActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/NAPIDActivity$8;-><init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mPrtCancelListner:Landroid/view/View$OnClickListener;

    .line 957
    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 872
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 875
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :goto_17
    return v0

    .line 879
    :cond_18
    const-string v1, "WiMAX modem is OFF , Please turn on WiMAX in Settings!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 880
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v1, "WiMAX modem is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private HandleNapIdReadResp(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    .line 165
    iget-object v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v11, " HandleNapIdReadResp called "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 v10, 0xb

    new-array v5, v10, [B

    .line 167
    .local v5, respNapIdArray:[B
    const-string v10, "WimaxOMADMRespData"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 168
    if-nez v5, :cond_14

    .line 207
    :goto_13
    return-void

    .line 172
    :cond_14
    const/4 v10, 0x0

    aget-byte v6, v5, v10

    .line 173
    .local v6, resultByte:I
    const/4 v10, 0x1

    if-ne v6, v10, :cond_b8

    array-length v10, v5

    const/4 v11, 0x1

    if-eq v10, v11, :cond_b8

    .line 175
    iget-object v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v11, " reading callback "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v10, 0x2

    new-array v4, v10, [B

    .line 177
    .local v4, nTagArray:[B
    const/4 v10, 0x2

    new-array v3, v10, [B

    .line 178
    .local v3, nLenArray:[B
    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-byte v11, v5, v11

    aput-byte v11, v4, v10

    .line 179
    const/4 v10, 0x1

    const/4 v11, 0x2

    aget-byte v11, v5, v11

    aput-byte v11, v4, v10

    .line 180
    const/4 v10, 0x0

    const/4 v11, 0x3

    aget-byte v11, v5, v11

    aput-byte v11, v3, v10

    .line 181
    const/4 v10, 0x1

    const/4 v11, 0x4

    aget-byte v11, v5, v11

    aput-byte v11, v3, v10

    .line 182
    invoke-static {v4}, Lcom/samsung/wimax/napid/NAPIDActivity;->byteToInt([B)J

    move-result-wide v8

    .line 183
    .local v8, tag:J
    invoke-static {v3}, Lcom/samsung/wimax/napid/NAPIDActivity;->byteToInt([B)J

    move-result-wide v0

    .line 184
    .local v0, len:J
    iget-object v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HandleNapIdReadResp tag ="

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

    .line 185
    new-instance v7, Ljava/lang/String;

    const/4 v10, 0x5

    long-to-int v11, v0

    invoke-direct {v7, v5, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 186
    .local v7, sValue:Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HandleNapIdReadResp value  ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v11, "***********napid************"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v10, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-byte v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    iput-byte v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    .line 192
    const/16 v10, 0xf

    iput v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 193
    iget-object v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 194
    .local v2, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_13

    .line 198
    .end local v0           #len:J
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #nLenArray:[B
    .end local v4           #nTagArray:[B
    .end local v7           #sValue:Ljava/lang/String;
    .end local v8           #tag:J
    :cond_b8
    iget-object v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HandleNapIdReadResp Total NAPID   ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-byte v12, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v10, 0x0

    iput-byte v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    .line 200
    const/16 v10, 0x12

    iput v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 201
    iget-object v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 202
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_13
.end method

.method private HandleNapIdUpdateResp(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v4, " HandleNapIdUpdateResp "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 240
    .local v2, respNapIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 241
    if-nez v2, :cond_16

    .line 261
    :goto_15
    return-void

    .line 245
    :cond_16
    aget-byte v1, v2, v5

    .line 246
    .local v1, res:I
    if-ne v1, v6, :cond_42

    array-length v3, v2

    if-ne v3, v6, :cond_42

    .line 248
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v4, " HandleNapIdUpdateResp sucess and calling read "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v3, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 250
    sget-object v3, Lcom/samsung/wimax/napid/NAPIDActivity;->prtArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput-byte v5, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    .line 252
    const/16 v3, 0xf

    iput v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 253
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 254
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    .line 259
    .end local v0           #msg:Landroid/os/Message;
    :cond_42
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleNapIdUpdateResp failed napid update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private HandleNapIdWriteResp(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x1

    .line 212
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v4, "inside HandleNapIdWriteResp "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-array v1, v6, [B

    .line 214
    .local v1, respNapIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 215
    if-nez v1, :cond_15

    .line 233
    :goto_14
    return-void

    .line 219
    :cond_15
    const/4 v3, 0x0

    aget-byte v2, v1, v3

    .line 220
    .local v2, resultByte:I
    array-length v3, v1

    if-ne v3, v5, :cond_34

    if-ne v2, v5, :cond_34

    .line 222
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v4, "HandleNapIdWriteResp write callback success and calling update"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v3, 0x11

    iput v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 224
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 230
    .end local v0           #msg:Landroid/os/Message;
    :cond_34
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleNapIdWriteResp failed napid write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private HandlePrtReadResp(Landroid/content/Intent;)V
    .registers 16
    .parameter "intent"

    .prologue
    .line 267
    iget-object v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v12, " HandlePrtReadResp "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v11, 0xb

    new-array v7, v11, [B

    .line 269
    .local v7, respPrtIdArray:[B
    const-string v11, "WimaxOMADMRespData"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 270
    if-nez v7, :cond_14

    .line 332
    :goto_13
    return-void

    .line 275
    :cond_14
    const/4 v11, 0x0

    aget-byte v6, v7, v11

    .line 276
    .local v6, res:I
    const/4 v11, 0x1

    if-ne v6, v11, :cond_c4

    array-length v11, v7

    const/4 v12, 0x1

    if-eq v11, v12, :cond_c4

    .line 278
    iget-object v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v12, " HandlePrtReadResp reading callback "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v11, 0x2

    new-array v5, v11, [B

    .line 280
    .local v5, nTagArray:[B
    const/4 v11, 0x2

    new-array v4, v11, [B

    .line 281
    .local v4, nLenArray:[B
    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-byte v12, v7, v12

    aput-byte v12, v5, v11

    .line 282
    const/4 v11, 0x1

    const/4 v12, 0x2

    aget-byte v12, v7, v12

    aput-byte v12, v5, v11

    .line 283
    const/4 v11, 0x0

    const/4 v12, 0x3

    aget-byte v12, v7, v12

    aput-byte v12, v4, v11

    .line 284
    const/4 v11, 0x1

    const/4 v12, 0x4

    aget-byte v12, v7, v12

    aput-byte v12, v4, v11

    .line 285
    invoke-static {v5}, Lcom/samsung/wimax/napid/NAPIDActivity;->byteToInt([B)J

    move-result-wide v9

    .line 286
    .local v9, tag:J
    invoke-static {v4}, Lcom/samsung/wimax/napid/NAPIDActivity;->byteToInt([B)J

    move-result-wide v1

    .line 287
    .local v1, len:J
    iget-object v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HandlePrtReadResp tag ="

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

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v8, Ljava/lang/String;

    const/4 v11, 0x5

    long-to-int v12, v1

    invoke-direct {v8, v7, v11, v12}, Ljava/lang/String;-><init>([BII)V

    .line 289
    .local v8, sValue:Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HandlePrtReadResp value  ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v12, "------------prt----------------"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v11, Lcom/samsung/wimax/napid/NAPIDActivity;->prtArray:Ljava/util/ArrayList;

    const/4 v12, 0x2

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-byte v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    add-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    iput-byte v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    .line 309
    iget-object v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v12, "HandlePrtReadResp calling readprt for count 1 "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v11, 0x12

    iput v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 311
    iget-object v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 312
    .local v3, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_13

    .line 316
    .end local v1           #len:J
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #nLenArray:[B
    .end local v5           #nTagArray:[B
    .end local v8           #sValue:Ljava/lang/String;
    .end local v9           #tag:J
    :cond_c4
    iget-object v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HandlePrtReadResp Total Priority ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-byte v13, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v11, 0x0

    iput-byte v11, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    .line 318
    sget-object v11, Lcom/samsung/wimax/napid/NAPIDActivity;->listNapIdArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 319
    sget-object v11, Lcom/samsung/wimax/napid/NAPIDActivity;->listPrtArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 320
    const/4 v0, 0x0

    .local v0, i:I
    :goto_ec
    sget-object v11, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_102

    .line 322
    sget-object v11, Lcom/samsung/wimax/napid/NAPIDActivity;->listNapIdArray:Ljava/util/ArrayList;

    sget-object v12, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdArray:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_ec

    .line 324
    :cond_102
    const/4 v0, 0x0

    :goto_103
    sget-object v11, Lcom/samsung/wimax/napid/NAPIDActivity;->prtArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_119

    .line 326
    sget-object v11, Lcom/samsung/wimax/napid/NAPIDActivity;->listPrtArray:Ljava/util/ArrayList;

    sget-object v12, Lcom/samsung/wimax/napid/NAPIDActivity;->prtArray:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_103

    .line 328
    :cond_119
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->refreshNapIdList()V

    goto/16 :goto_13
.end method

.method private HandlePrtUpdateResp(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 365
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v4, " HandlePrtUpdateResp entered"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 367
    .local v2, respPrtIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 368
    if-nez v2, :cond_16

    .line 389
    :goto_15
    return-void

    .line 372
    :cond_16
    aget-byte v1, v2, v5

    .line 373
    .local v1, res:I
    if-ne v1, v6, :cond_42

    array-length v3, v2

    if-ne v3, v6, :cond_42

    .line 376
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v4, " HandlePrtUpdateResp sucess "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-object v3, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 378
    sget-object v3, Lcom/samsung/wimax/napid/NAPIDActivity;->prtArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 379
    iput-byte v5, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    .line 380
    const/16 v3, 0xf

    iput v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 381
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 382
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    .line 386
    .end local v0           #msg:Landroid/os/Message;
    :cond_42
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v4, " HandlePrtUpdateResp fails "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private HandlePrtWriteResp(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 337
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v4, " HandlePrtWriteResp entered"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 339
    .local v2, respPrtIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 340
    if-nez v2, :cond_15

    .line 360
    :goto_14
    return-void

    .line 344
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 345
    .local v1, res:I
    if-ne v1, v5, :cond_36

    array-length v3, v2

    if-ne v3, v5, :cond_36

    .line 347
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v4, " HandlePrtWriteResp sucess "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/16 v3, 0x14

    iput v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 350
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 357
    .end local v0           #msg:Landroid/os/Message;
    :cond_36
    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandlePrtWriteResp failed prt write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public static IsNumericorDigit(Ljava/lang/String;)Z
    .registers 4
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 790
    if-nez p0, :cond_4

    .line 803
    :cond_3
    :goto_3
    return v1

    .line 793
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 796
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 799
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 803
    :cond_1e
    const/4 v1, 0x1

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/NAPIDActivity;->HandleNapIdReadResp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/NAPIDActivity;->HandlePrtReadResp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wimax/napid/NAPIDActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/NAPIDActivity;->setMruWorkingStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/NAPIDActivity;->HandleNapIdWriteResp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/NAPIDActivity;->HandleNapIdUpdateResp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/NAPIDActivity;->HandlePrtWriteResp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/wimax/napid/NAPIDActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/NAPIDActivity;->HandlePrtUpdateResp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/wimax/napid/NAPIDActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->checkWimaxStateAndUpdate()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/wimax/napid/NAPIDActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static byteToInt([B)J
    .registers 7
    .parameter "by"

    .prologue
    .line 581
    const-wide/16 v1, 0x0

    .line 582
    .local v1, value:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_12

    .line 584
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 587
    :cond_12
    const-string v3, "WiMAX"

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

    .line 588
    return-wide v1
.end method

.method private checkWimaxStateAndUpdate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 894
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    .line 895
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

    .line 898
    :cond_1b
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v2, "in checkWimaxStateAndUpdate state is other then disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 900
    invoke-direct {p0, v3}, Lcom/samsung/wimax/napid/NAPIDActivity;->setMruWorkingStatus(Z)V

    .line 901
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 921
    :goto_2f
    return-void

    .line 904
    :cond_30
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v2, "inside  checkWimaxStateAndUpdate else part"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/NAPIDActivity;->setMruWorkingStatus(Z)V

    .line 907
    iget v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    packed-switch v1, :pswitch_data_60

    :pswitch_40
    goto :goto_2f

    .line 910
    :pswitch_41
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v2, "******write napid called  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdValue:Ljava/lang/String;

    iget-byte v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    invoke-virtual {p0, v1, v2}, Lcom/samsung/wimax/napid/NAPIDActivity;->writeNapId(Ljava/lang/String;B)V

    goto :goto_2f

    .line 914
    :pswitch_50
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v2, "****** writePrt called  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->prtValue:Ljava/lang/String;

    iget-byte v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    invoke-virtual {p0, v1, v2}, Lcom/samsung/wimax/napid/NAPIDActivity;->writePrt(Ljava/lang/String;B)V

    goto :goto_2f

    .line 907
    nop

    :pswitch_data_60
    .packed-switch 0x10
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_50
    .end packed-switch
.end method

.method private getMruWorkingStatus()Z
    .registers 2

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mruUpdtState:Z

    return v0
.end method

.method private setMruWorkingStatus(Z)V
    .registers 2
    .parameter "mruStateVal"

    .prologue
    .line 931
    iput-boolean p1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mruUpdtState:Z

    .line 933
    return-void
.end method


# virtual methods
.method createNapIdDlg()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 749
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 750
    .local v0, dialog:Landroid/app/Dialog;
    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 751
    const-string v1, "Write NAPID"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 752
    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdText:Landroid/widget/EditText;

    .line 753
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 754
    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->okBtn:Landroid/widget/Button;

    .line 755
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->CancelBtn:Landroid/widget/Button;

    .line 756
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->okBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mNapIdOkListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->CancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mNapIdCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 759
    return-object v0
.end method

.method createPrtDlg()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 822
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 823
    .local v0, dialog:Landroid/app/Dialog;
    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 824
    const-string v1, "Write Priority"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 825
    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->prtIdText:Landroid/widget/EditText;

    .line 826
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->prtIdText:Landroid/widget/EditText;

    const-string v2, "Please Enter Priority value"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 827
    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->okBtn:Landroid/widget/Button;

    .line 828
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->CancelBtn:Landroid/widget/Button;

    .line 829
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->okBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mPrtOkListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->CancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mPrtCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 832
    return-object v0
.end method

.method public handleWimaxStateChange(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 939
    const-string v2, "WimaxState"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 940
    .local v0, ordinal:I
    invoke-static {}, Landroid/net/fourG/wimax/WimaxState;->values()[Landroid/net/fourG/wimax/WimaxState;

    move-result-object v2

    aget-object v1, v2, v0

    .line 941
    .local v1, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    const-string v2, "WimaxStateDetail"

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->m_nCurrentStateDetail:I

    .line 942
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

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

    .line 943
    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_4a

    .line 946
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "DisConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-direct {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->getMruWorkingStatus()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 950
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "in handleWimaxStateChange calling  checkwimaxsate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->checkWimaxStateAndUpdate()V

    .line 956
    :cond_4a
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v1, "onconfig change called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 889
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 677
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 678
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 680
    .local v0, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    .line 682
    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listItemPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    .line 694
    :pswitch_30
    const/4 v1, 0x0

    :goto_31
    return v1

    .line 686
    :pswitch_32
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/napid/NAPIDActivity;->showDialog(I)V

    goto :goto_31

    .line 690
    :pswitch_37
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/napid/NAPIDActivity;->showDialog(I)V

    goto :goto_31

    .line 683
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_32
        :pswitch_30
        :pswitch_37
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 596
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/NAPIDActivity;->setContentView(I)V

    .line 598
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 599
    new-instance v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdAdapter:Landroid/widget/ListAdapter;

    .line 600
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/NAPIDActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 601
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 602
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 603
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    .line 604
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 605
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 666
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 668
    const-string v0, "Choose NAPID Actions"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 669
    const-string v0, "Write Napid"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 670
    const/4 v0, 0x2

    const-string v1, "Write Priority"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 672
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const v3, 0x1080027

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_5e

    .line 738
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    move-object v1, v0

    .line 740
    :goto_9
    return-object v1

    .line 706
    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->createNapIdDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 707
    goto :goto_8

    .line 709
    :pswitch_f
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->createPrtDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 710
    goto :goto_8

    .line 712
    :pswitch_14
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Wrong value entered!!!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please enter exactly 6 digits value"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/samsung/wimax/napid/NAPIDActivity$3;

    invoke-direct {v3, p0}, Lcom/samsung/wimax/napid/NAPIDActivity$3;-><init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_9

    .line 726
    :pswitch_39
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Wrong value entered!!!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please enter value from 1-4"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/samsung/wimax/napid/NAPIDActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/wimax/napid/NAPIDActivity$4;-><init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_9

    .line 704
    :pswitch_data_5e
    .packed-switch 0x3
        :pswitch_a
        :pswitch_f
        :pswitch_7
        :pswitch_14
        :pswitch_7
        :pswitch_39
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 648
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 649
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 652
    invoke-direct {p0, v2}, Lcom/samsung/wimax/napid/NAPIDActivity;->setMruWorkingStatus(Z)V

    .line 653
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimaxNapIdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 654
    sget-object v0, Lcom/samsung/wimax/napid/NAPIDActivity;->prtArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 655
    sget-object v0, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 658
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 611
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v2, "onResume is callled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 614
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimaxnapIdRespFilter:Landroid/content/IntentFilter;

    .line 615
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimaxnapIdRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimaxnapIdRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimaxNapIdReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimaxnapIdRespFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 618
    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 619
    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->prtArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 620
    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->listNapIdArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 621
    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->listPrtArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 622
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->refreshNapIdList()V

    .line 624
    invoke-direct {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->CheckWimaxOn()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 626
    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->listNapIdArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 627
    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->listPrtArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 628
    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 629
    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->prtArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 630
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/NAPIDActivity;->refreshNapIdList()V

    .line 643
    :goto_5e
    return-void

    .line 635
    :cond_5f
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->count:B

    .line 636
    const/16 v1, 0xf

    iput v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->type:I

    .line 637
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 638
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5e
.end method

.method readNapId(Ljava/lang/Byte;)V
    .registers 17
    .parameter "index"

    .prologue
    .line 393
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 394
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 395
    .local v2, nIndex:I
    const/16 v10, 0x100

    .line 397
    .local v10, nBufferLen:I
    const/4 v11, -0x1

    .line 398
    .local v11, nRet:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    .line 399
    .local v8, byIndex:B
    const-string v12, "WiMAXSupp"

    .line 400
    .local v12, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 401
    const-string v12, "Operator"

    .line 402
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 403
    const-string v12, "Sprint"

    .line 404
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0xe4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 405
    const-string v12, "NetworkParameters"

    .line 406
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 407
    const-string v12, "CAPL"

    .line 408
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 409
    const-string v12, "Entries"

    .line 410
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1fa

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 411
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v12

    .line 412
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0xe4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 413
    const-string v12, "NAP-ID"

    .line 414
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1fb

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 416
    new-array v9, v2, [B

    .line 417
    .local v9, byTlvData:[B
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

    move-result-object v13

    .line 418
    .local v13, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strBuf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v9, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 421
    .local v14, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strTlv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "in readnapid OdbReadReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v9}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbReadReq([B)I

    move-result v11

    .line 424
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v7, 0x1

    .line 426
    .local v7, SUCCESS:I
    if-ne v11, v7, :cond_184

    .line 428
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "in readnapid odbReadReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_183
    return-void

    .line 431
    :cond_184
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "readnapid odbReadReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_183
.end method

.method readPrt(Ljava/lang/Byte;)V
    .registers 17
    .parameter "index"

    .prologue
    .line 438
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 439
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 440
    .local v2, nIndex:I
    const/16 v10, 0x100

    .line 442
    .local v10, nBufferLen:I
    const/4 v11, -0x1

    .line 443
    .local v11, nRet:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    .line 444
    .local v8, byIndex:B
    const-string v12, "WiMAXSupp"

    .line 445
    .local v12, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 446
    const-string v12, "Operator"

    .line 447
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 448
    const-string v12, "Sprint"

    .line 449
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0xe4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 450
    const-string v12, "NetworkParameters"

    .line 451
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 452
    const-string v12, "CAPL"

    .line 453
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 454
    const-string v12, "Entries"

    .line 455
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1fa

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 456
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v12

    .line 457
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0xe4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 458
    const-string v12, "Priority"

    .line 459
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1fc

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 461
    new-array v9, v2, [B

    .line 462
    .local v9, byTlvData:[B
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

    move-result-object v13

    .line 463
    .local v13, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strBuf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v9, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 468
    .local v14, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strTlv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "in readPrt OdbReadReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v9}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbReadReq([B)I

    move-result v11

    .line 472
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v7, 0x1

    .line 474
    .local v7, SUCCESS:I
    if-ne v11, v7, :cond_184

    .line 476
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "in read prt  odbReadReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :goto_183
    return-void

    .line 480
    :cond_184
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "readprt odbreadreq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_183
.end method

.method refreshNapIdList()V
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->napIdAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 700
    return-void
.end method

.method writeNapId(Ljava/lang/String;B)V
    .registers 18
    .parameter "napId"
    .parameter "index"

    .prologue
    .line 486
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 487
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 488
    .local v2, nIndex:I
    const/16 v10, 0x100

    .line 490
    .local v10, nBufferLen:I
    const/4 v11, -0x1

    .line 491
    .local v11, nRet:I
    move/from16 v8, p2

    .line 492
    .local v8, byIndex:B
    const-string v12, "WiMAXSupp"

    .line 493
    .local v12, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 494
    const-string v12, "Operator"

    .line 495
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 496
    const-string v12, "Sprint"

    .line 497
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0xe4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 498
    const-string v12, "NetworkParameters"

    .line 499
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 500
    const-string v12, "CAPL"

    .line 501
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 502
    const-string v12, "Entries"

    .line 503
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1fa

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 504
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v12

    .line 505
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0xe4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 507
    move-object/from16 v12, p1

    .line 508
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1fb

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 510
    new-array v9, v2, [B

    .line 511
    .local v9, byTlvData:[B
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

    move-result-object v13

    .line 512
    .local v13, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strBuf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v9, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 516
    .local v14, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strTlv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "in writeNapId writeNapId is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v9}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbWriteReq([B)I

    move-result v11

    .line 519
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nRet value for write napid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v7, 0x1

    .line 521
    .local v7, SUCCESS:I
    if-ne v11, v7, :cond_182

    .line 523
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, " OdbWriteReq for napid success"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_181
    return-void

    .line 527
    :cond_182
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "OdbWriteReq for napid failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181
.end method

.method writePrt(Ljava/lang/String;B)V
    .registers 18
    .parameter "value"
    .parameter "index"

    .prologue
    .line 533
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 534
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 535
    .local v2, nIndex:I
    const/16 v10, 0x100

    .line 537
    .local v10, nBufferLen:I
    const/4 v11, -0x1

    .line 538
    .local v11, nRet:I
    move/from16 v8, p2

    .line 539
    .local v8, byIndex:B
    const-string v12, "WiMAXSupp"

    .line 540
    .local v12, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 541
    const-string v12, "Operator"

    .line 542
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 543
    const-string v12, "Sprint"

    .line 544
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0xe4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 545
    const-string v12, "NetworkParameters"

    .line 546
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 547
    const-string v12, "CAPL"

    .line 548
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1f9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 549
    const-string v12, "Entries"

    .line 550
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1fa

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 551
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v12

    .line 552
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0xe4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 554
    move-object/from16 v12, p1

    .line 555
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v10, v2

    const/16 v4, 0x1fc

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 557
    new-array v9, v2, [B

    .line 558
    .local v9, byTlvData:[B
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

    move-result-object v13

    .line 559
    .local v13, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strBuf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v9, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 563
    .local v14, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strTlv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "in writePrt OdbWriteReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v9}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbWriteReq([B)I

    move-result v11

    .line 566
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nRet value for write napid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v7, 0x1

    .line 568
    .local v7, SUCCESS:I
    if-ne v11, v7, :cond_182

    .line 570
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "for PRT  OdbWriteReq success"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :goto_181
    return-void

    .line 575
    :cond_182
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity;->TAG:Ljava/lang/String;

    const-string v3, "for PRT OdbWriteReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181
.end method
