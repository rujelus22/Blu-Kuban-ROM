.class public Lcom/android/sprintmenu/Toggle_NAI;
.super Landroid/app/Activity;
.source "Toggle_NAI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private Nai_Off:Landroid/widget/RadioButton;

.field private Nai_On:Landroid/widget/RadioButton;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mode_ID:B

.field radio_listener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/android/sprintmenu/Toggle_NAI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/Toggle_NAI;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/Toggle_NAI;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 94
    new-instance v0, Lcom/android/sprintmenu/Toggle_NAI$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/Toggle_NAI$1;-><init>(Lcom/android/sprintmenu/Toggle_NAI;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Toggle_NAI;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/android/sprintmenu/Toggle_NAI$2;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/Toggle_NAI$2;-><init>(Lcom/android/sprintmenu/Toggle_NAI;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Toggle_NAI;->radio_listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private SetDefaultSelection(I)V
    .registers 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 81
    packed-switch p1, :pswitch_data_12

    .line 91
    :goto_4
    return-void

    .line 83
    :pswitch_5
    iget-object v0, p0, Lcom/android/sprintmenu/Toggle_NAI;->Nai_On:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 86
    :pswitch_b
    iget-object v0, p0, Lcom/android/sprintmenu/Toggle_NAI;->Nai_Off:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 81
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/sprintmenu/Toggle_NAI;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/Toggle_NAI;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-byte v0, p0, Lcom/android/sprintmenu/Toggle_NAI;->mode_ID:B

    return v0
.end method

.method static synthetic access$102(Lcom/android/sprintmenu/Toggle_NAI;B)B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-byte p1, p0, Lcom/android/sprintmenu/Toggle_NAI;->mode_ID:B

    return p1
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/Toggle_NAI;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/Toggle_NAI;->SetDefaultSelection(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sprintmenu/Toggle_NAI;B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/Toggle_NAI;->sendOemData(B)V

    return-void
.end method

.method private getOemData()V
    .registers 9

    .prologue
    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 67
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 68
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 70
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_2b

    .line 76
    iget-object v4, p0, Lcom/android/sprintmenu/Toggle_NAI;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/Toggle_NAI;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 77
    :goto_2a
    return-void

    .line 72
    :catch_2b
    move-exception v2

    .line 74
    .local v2, e:Ljava/io/IOException;
    goto :goto_2a
.end method

.method private sendOemData(B)V
    .registers 10
    .parameter "selected_ID"

    .prologue
    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 48
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 49
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 50
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 51
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_2e

    .line 57
    iget-object v4, p0, Lcom/android/sprintmenu/Toggle_NAI;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/Toggle_NAI;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7cf

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 58
    :goto_2d
    return-void

    .line 53
    :catch_2e
    move-exception v2

    .line 55
    .local v2, e:Ljava/io/IOException;
    goto :goto_2d
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 190
    :goto_7
    return-void

    .line 183
    :pswitch_8
    sget-object v0, Lcom/android/sprintmenu/Toggle_NAI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancel BTN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "Cancel!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 180
    nop

    :pswitch_data_1e
    .packed-switch 0x7f070003
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    sget-object v1, Lcom/android/sprintmenu/Toggle_NAI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Class create!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const v1, 0x7f030014

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/Toggle_NAI;->setContentView(I)V

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 165
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/android/sprintmenu/Toggle_NAI;->mode_ID:B

    .line 166
    invoke-direct {p0}, Lcom/android/sprintmenu/Toggle_NAI;->getOemData()V

    .line 168
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/Toggle_NAI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI;->Nai_On:Landroid/widget/RadioButton;

    .line 169
    const v1, 0x7f07002c

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/Toggle_NAI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI;->Nai_Off:Landroid/widget/RadioButton;

    .line 171
    iget-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI;->Nai_On:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/Toggle_NAI;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/sprintmenu/Toggle_NAI;->Nai_Off:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/Toggle_NAI;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/Toggle_NAI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method
