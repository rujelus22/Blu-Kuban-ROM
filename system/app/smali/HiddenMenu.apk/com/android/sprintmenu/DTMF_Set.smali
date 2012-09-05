.class public Lcom/android/sprintmenu/DTMF_Set;
.super Landroid/app/Activity;
.source "DTMF_Set.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DTMF_long:Landroid/widget/RadioButton;

.field private DTMF_short:Landroid/widget/RadioButton;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mode_ID:B

.field radio_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/DTMF_Set;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    new-instance v0, Lcom/android/sprintmenu/DTMF_Set$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/DTMF_Set$1;-><init>(Lcom/android/sprintmenu/DTMF_Set;)V

    iput-object v0, p0, Lcom/android/sprintmenu/DTMF_Set;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/android/sprintmenu/DTMF_Set$2;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/DTMF_Set$2;-><init>(Lcom/android/sprintmenu/DTMF_Set;)V

    iput-object v0, p0, Lcom/android/sprintmenu/DTMF_Set;->radio_listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private SetDTMF_Status(I)V
    .registers 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 84
    packed-switch p1, :pswitch_data_12

    .line 94
    :goto_4
    return-void

    .line 86
    :pswitch_5
    iget-object v0, p0, Lcom/android/sprintmenu/DTMF_Set;->DTMF_short:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 89
    :pswitch_b
    iget-object v0, p0, Lcom/android/sprintmenu/DTMF_Set;->DTMF_long:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 84
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/DTMF_Set;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-byte v0, p0, Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B

    return v0
.end method

.method static synthetic access$002(Lcom/android/sprintmenu/DTMF_Set;B)B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-byte p1, p0, Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B

    return p1
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/DTMF_Set;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/DTMF_Set;->SetDTMF_Status(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/DTMF_Set;B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/DTMF_Set;->sendOemData(B)V

    return-void
.end method

.method private getOemData()V
    .registers 9

    .prologue
    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 70
    .local v3, fileSize:I
    const/16 v4, 0xb

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 71
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 72
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_2b

    .line 79
    iget-object v4, p0, Lcom/android/sprintmenu/DTMF_Set;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/DTMF_Set;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 80
    :goto_2a
    return-void

    .line 74
    :catch_2b
    move-exception v2

    .line 76
    .local v2, e:Ljava/io/IOException;
    goto :goto_2a
.end method

.method private sendOemData(B)V
    .registers 10
    .parameter "selected_ID"

    .prologue
    .line 43
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 49
    .local v3, fileSize:I
    const/16 v4, 0xb

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 50
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_2d

    .line 59
    iget-object v4, p0, Lcom/android/sprintmenu/DTMF_Set;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/DTMF_Set;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7cf

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 60
    :goto_2c
    return-void

    .line 54
    :catch_2d
    move-exception v2

    .line 56
    .local v2, e:Ljava/io/IOException;
    goto :goto_2c
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 228
    :goto_7
    return-void

    .line 220
    :pswitch_8
    const-string v0, "DTMF_Set"

    const-string v1, "cancel BTN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 210
    nop

    :pswitch_data_14
    .packed-switch 0x7f070003
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    const-string v1, "DTMF_Set"

    const-string v2, "Class create!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/DTMF_Set;->setContentView(I)V

    .line 194
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/DTMF_Set;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 195
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/android/sprintmenu/DTMF_Set;->mode_ID:B

    .line 196
    invoke-direct {p0}, Lcom/android/sprintmenu/DTMF_Set;->getOemData()V

    .line 198
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/DTMF_Set;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/DTMF_Set;->DTMF_short:Landroid/widget/RadioButton;

    .line 199
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/DTMF_Set;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/DTMF_Set;->DTMF_long:Landroid/widget/RadioButton;

    .line 201
    iget-object v1, p0, Lcom/android/sprintmenu/DTMF_Set;->DTMF_short:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/sprintmenu/DTMF_Set;->DTMF_long:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/DTMF_Set;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/DTMF_Set;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void
.end method
