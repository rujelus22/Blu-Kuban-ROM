.class public Lcom/android/sprintmenu/HDR1X_Selection;
.super Landroid/app/Activity;
.source "HDR1X_Selection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cdma_only_mode:Landroid/widget/RadioButton;

.field private evdo_only_mode:Landroid/widget/RadioButton;

.field private hybrid_mode:Landroid/widget/RadioButton;

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

    iput-object v0, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 109
    new-instance v0, Lcom/android/sprintmenu/HDR1X_Selection$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/HDR1X_Selection$1;-><init>(Lcom/android/sprintmenu/HDR1X_Selection;)V

    iput-object v0, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/android/sprintmenu/HDR1X_Selection$2;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/HDR1X_Selection$2;-><init>(Lcom/android/sprintmenu/HDR1X_Selection;)V

    iput-object v0, p0, Lcom/android/sprintmenu/HDR1X_Selection;->radio_listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private SetDefaultSelection(I)V
    .registers 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 93
    packed-switch p1, :pswitch_data_18

    .line 106
    :goto_4
    return-void

    .line 95
    :pswitch_5
    iget-object v0, p0, Lcom/android/sprintmenu/HDR1X_Selection;->hybrid_mode:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 98
    :pswitch_b
    iget-object v0, p0, Lcom/android/sprintmenu/HDR1X_Selection;->cdma_only_mode:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 101
    :pswitch_11
    iget-object v0, p0, Lcom/android/sprintmenu/HDR1X_Selection;->evdo_only_mode:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 93
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/HDR1X_Selection;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-byte v0, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B

    return v0
.end method

.method static synthetic access$002(Lcom/android/sprintmenu/HDR1X_Selection;B)B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-byte p1, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B

    return p1
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/HDR1X_Selection;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/HDR1X_Selection;->SetDefaultSelection(I)V

    return-void
.end method

.method private getOemData()V
    .registers 9

    .prologue
    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 79
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 80
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 81
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_2a

    .line 88
    iget-object v4, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 89
    :goto_29
    return-void

    .line 83
    :catch_2a
    move-exception v2

    .line 85
    .local v2, e:Ljava/io/IOException;
    goto :goto_29
.end method

.method private sendOemData(B)V
    .registers 10
    .parameter "selected_ID"

    .prologue
    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 55
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 56
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 57
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 59
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_2e

    .line 66
    iget-object v4, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7cf

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 67
    :goto_2d
    return-void

    .line 61
    :catch_2e
    move-exception v2

    .line 63
    .local v2, e:Ljava/io/IOException;
    goto :goto_2d
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    .line 266
    :goto_8
    return-void

    .line 252
    :sswitch_9
    iget-byte v0, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/HDR1X_Selection;->sendOemData(B)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saved! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_8

    .line 258
    :sswitch_2e
    const-string v0, "HDR1X_SELECTION"

    const-string v1, "cancel BTN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v0, "Cancel!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_8

    .line 249
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
    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "Class create!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/HDR1X_Selection;->setContentView(I)V

    .line 229
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 230
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B

    .line 231
    invoke-direct {p0}, Lcom/android/sprintmenu/HDR1X_Selection;->getOemData()V

    .line 233
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/HDR1X_Selection;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection;->hybrid_mode:Landroid/widget/RadioButton;

    .line 234
    const v2, 0x7f07000c

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/HDR1X_Selection;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection;->cdma_only_mode:Landroid/widget/RadioButton;

    .line 235
    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/HDR1X_Selection;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection;->evdo_only_mode:Landroid/widget/RadioButton;

    .line 237
    iget-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection;->hybrid_mode:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/HDR1X_Selection;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection;->cdma_only_mode:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/HDR1X_Selection;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection;->evdo_only_mode:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/HDR1X_Selection;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/HDR1X_Selection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 242
    .local v1, ok_button:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/HDR1X_Selection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method
