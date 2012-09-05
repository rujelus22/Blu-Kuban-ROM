.class public Lcom/android/sprintmenu/RC_DATA;
.super Landroid/app/Activity;
.source "RC_DATA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private radio_ID:B

.field private radio_disable_test_rc:Landroid/widget/RadioButton;

.field private radio_f_rc1_r_rc1:Landroid/widget/RadioButton;

.field private radio_f_rc2_r_rc2:Landroid/widget/RadioButton;

.field private radio_f_rc3_r_rc3:Landroid/widget/RadioButton;

.field private radio_f_rc4_r_rc3:Landroid/widget/RadioButton;

.field private radio_f_rc5_r_rc4:Landroid/widget/RadioButton;

.field radio_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/RC_DATA;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 117
    new-instance v0, Lcom/android/sprintmenu/RC_DATA$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/RC_DATA$1;-><init>(Lcom/android/sprintmenu/RC_DATA;)V

    iput-object v0, p0, Lcom/android/sprintmenu/RC_DATA;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/android/sprintmenu/RC_DATA$2;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/RC_DATA$2;-><init>(Lcom/android/sprintmenu/RC_DATA;)V

    iput-object v0, p0, Lcom/android/sprintmenu/RC_DATA;->radio_listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private SetDefaultSelection(I)V
    .registers 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 92
    packed-switch p1, :pswitch_data_2a

    .line 114
    :goto_4
    return-void

    .line 94
    :pswitch_5
    iget-object v0, p0, Lcom/android/sprintmenu/RC_DATA;->radio_disable_test_rc:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 97
    :pswitch_b
    iget-object v0, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc1_r_rc1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 100
    :pswitch_11
    iget-object v0, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc2_r_rc2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 103
    :pswitch_17
    iget-object v0, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc3_r_rc3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 106
    :pswitch_1d
    iget-object v0, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc4_r_rc3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 109
    :pswitch_23
    iget-object v0, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc5_r_rc4:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 92
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_17
        :pswitch_1d
        :pswitch_23
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/RC_DATA;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-byte v0, p0, Lcom/android/sprintmenu/RC_DATA;->radio_ID:B

    return v0
.end method

.method static synthetic access$002(Lcom/android/sprintmenu/RC_DATA;B)B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-byte p1, p0, Lcom/android/sprintmenu/RC_DATA;->radio_ID:B

    return p1
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/RC_DATA;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/RC_DATA;->SetDefaultSelection(I)V

    return-void
.end method

.method private getOemData()V
    .registers 9

    .prologue
    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 78
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 79
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 80
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_2a

    .line 87
    iget-object v4, p0, Lcom/android/sprintmenu/RC_DATA;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/RC_DATA;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 88
    :goto_29
    return-void

    .line 82
    :catch_2a
    move-exception v2

    .line 84
    .local v2, e:Ljava/io/IOException;
    goto :goto_29
.end method

.method private sendOemData(B)V
    .registers 10
    .parameter "selected_ID"

    .prologue
    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 56
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 57
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 58
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 60
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_2d

    .line 67
    iget-object v4, p0, Lcom/android/sprintmenu/RC_DATA;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/RC_DATA;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7cf

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 68
    :goto_2c
    return-void

    .line 62
    :catch_2d
    move-exception v2

    .line 64
    .local v2, e:Ljava/io/IOException;
    goto :goto_2c
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    .line 274
    :goto_8
    return-void

    .line 262
    :sswitch_9
    iget-byte v0, p0, Lcom/android/sprintmenu/RC_DATA;->radio_ID:B

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/RC_DATA;->sendOemData(B)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saved! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/sprintmenu/RC_DATA;->radio_ID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_8

    .line 268
    :sswitch_2e
    const-string v0, "RC_DATA"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v0, "Cancel!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_8

    .line 259
    :sswitch_data_42
    .sparse-switch
        0x7f070003 -> :sswitch_2e
        0x7f070009 -> :sswitch_9
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 228
    const-string v2, "RC_DATA"

    const-string v3, "RC_CLASS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/RC_DATA;->setContentView(I)V

    .line 233
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 234
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_ID:B

    .line 235
    invoke-direct {p0}, Lcom/android/sprintmenu/RC_DATA;->getOemData()V

    .line 237
    const v2, 0x7f070018

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/RC_DATA;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_disable_test_rc:Landroid/widget/RadioButton;

    .line 238
    const v2, 0x7f070019

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/RC_DATA;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc1_r_rc1:Landroid/widget/RadioButton;

    .line 239
    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/RC_DATA;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc2_r_rc2:Landroid/widget/RadioButton;

    .line 240
    const v2, 0x7f07001b

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/RC_DATA;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc3_r_rc3:Landroid/widget/RadioButton;

    .line 241
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/RC_DATA;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc4_r_rc3:Landroid/widget/RadioButton;

    .line 242
    const v2, 0x7f07001d

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/RC_DATA;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc5_r_rc4:Landroid/widget/RadioButton;

    .line 244
    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_disable_test_rc:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/RC_DATA;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc1_r_rc1:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/RC_DATA;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc2_r_rc2:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/RC_DATA;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc3_r_rc3:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/RC_DATA;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc4_r_rc3:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/RC_DATA;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v2, p0, Lcom/android/sprintmenu/RC_DATA;->radio_f_rc5_r_rc4:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/RC_DATA;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/RC_DATA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, ok_button:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/RC_DATA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method
