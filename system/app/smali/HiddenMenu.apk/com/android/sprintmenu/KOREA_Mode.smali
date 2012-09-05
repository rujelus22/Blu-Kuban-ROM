.class public Lcom/android/sprintmenu/KOREA_Mode;
.super Landroid/app/Activity;
.source "KOREA_Mode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private india_mode:Landroid/widget/RadioButton;

.field private korea_mode:Landroid/widget/RadioButton;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mode_ID:B

.field private mode_off:Landroid/widget/RadioButton;

.field radio_listener:Landroid/view/View$OnClickListener;

.field private sprint_test_bed:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/android/sprintmenu/KOREA_Mode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/KOREA_Mode;->LOG_TAG:Ljava/lang/String;

    .line 57
    const-string v0, "content://telephony_cdma/cdma_carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/KOREA_Mode;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/KOREA_Mode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 131
    new-instance v0, Lcom/android/sprintmenu/KOREA_Mode$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/KOREA_Mode$1;-><init>(Lcom/android/sprintmenu/KOREA_Mode;)V

    iput-object v0, p0, Lcom/android/sprintmenu/KOREA_Mode;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Lcom/android/sprintmenu/KOREA_Mode$2;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/KOREA_Mode$2;-><init>(Lcom/android/sprintmenu/KOREA_Mode;)V

    iput-object v0, p0, Lcom/android/sprintmenu/KOREA_Mode;->radio_listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private SetDefaultSelection(B)V
    .registers 5
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 105
    const-string v0, "KOREA_MODE"

    const-string v1, "Inside SetDefaultSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sparse-switch p1, :sswitch_data_40

    .line 128
    :goto_b
    return-void

    .line 108
    :sswitch_c
    const-string v0, "KOREA_MODE"

    const-string v1, "Inside SetDefaultSelection, korean"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/sprintmenu/KOREA_Mode;->korea_mode:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b

    .line 112
    :sswitch_19
    const-string v0, "KOREA_MODE"

    const-string v1, "Inside SetDefaultSelection,sprint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/sprintmenu/KOREA_Mode;->sprint_test_bed:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b

    .line 118
    :sswitch_26
    const-string v0, "KOREA_MODE"

    const-string v1, "Inside SetDefaultSelection,india"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/sprintmenu/KOREA_Mode;->india_mode:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b

    .line 122
    :sswitch_33
    const-string v0, "KOREA_MODE"

    const-string v1, "Inside SetDefaultSelection,mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/sprintmenu/KOREA_Mode;->mode_off:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b

    .line 106
    :sswitch_data_40
    .sparse-switch
        -0x1 -> :sswitch_33
        0x0 -> :sswitch_c
        0x2 -> :sswitch_19
        0x9 -> :sswitch_26
    .end sparse-switch
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/sprintmenu/KOREA_Mode;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/KOREA_Mode;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-byte v0, p0, Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B

    return v0
.end method

.method static synthetic access$102(Lcom/android/sprintmenu/KOREA_Mode;B)B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-byte p1, p0, Lcom/android/sprintmenu/KOREA_Mode;->mode_ID:B

    return p1
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/KOREA_Mode;B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/KOREA_Mode;->SetDefaultSelection(B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sprintmenu/KOREA_Mode;B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/KOREA_Mode;->sendOemData(B)V

    return-void
.end method

.method private getOemData()V
    .registers 9

    .prologue
    .line 85
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 90
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 91
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 92
    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 93
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_2b

    .line 100
    iget-object v4, p0, Lcom/android/sprintmenu/KOREA_Mode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/KOREA_Mode;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 101
    :goto_2a
    return-void

    .line 95
    :catch_2b
    move-exception v2

    .line 97
    .local v2, e:Ljava/io/IOException;
    goto :goto_2a
.end method

.method private sendOemData(B)V
    .registers 10
    .parameter "selected_ID"

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
    const/4 v3, 0x4

    .line 68
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    const/16 v4, 0x13

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 70
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 72
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_31

    .line 79
    iget-object v4, p0, Lcom/android/sprintmenu/KOREA_Mode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/KOREA_Mode;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7cf

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/KOREA_Mode;->updateDataConnection(B)V

    .line 81
    :goto_30
    return-void

    .line 74
    :catch_31
    move-exception v2

    .line 76
    .local v2, e:Ljava/io/IOException;
    goto :goto_30
.end method

.method private updateDataConnection(B)V
    .registers 8
    .parameter "selected_ID"

    .prologue
    const/4 v5, 0x0

    .line 311
    sget-object v2, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v3, 0x1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 312
    .local v0, url:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 314
    .local v1, values:Landroid/content/ContentValues;
    sparse-switch p1, :sswitch_data_cc

    .line 351
    :goto_11
    return-void

    .line 316
    :sswitch_12
    const-string v2, "name"

    const-string v3, "SK Telecom"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "user"

    const-string v3, "sktelecom"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v2, "password"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "auth"

    const-string v3, "pap"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v2, "proxy"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v2, "port"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/sprintmenu/KOREA_Mode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_11

    .line 326
    :sswitch_44
    const-string v2, "name"

    const-string v3, "Sprint Testbed"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "user"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/sprintmenu/KOREA_Mode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@sprintpcs.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v2, "password"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v2, "auth"

    const-string v3, "chap"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v2, "proxy"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v2, "port"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/sprintmenu/KOREA_Mode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_11

    .line 336
    :sswitch_8d
    const-string v2, "name"

    const-string v3, "Tata Indicomm"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v2, "user"

    const-string v3, "internet"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v2, "password"

    const-string v3, "internet"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "auth"

    const-string v3, "chap"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v2, "proxy"

    const-string v3, "172.23.252.15"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v2, "port"

    const-string v3, "0080"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/sprintmenu/KOREA_Mode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_11

    .line 346
    :sswitch_c0
    invoke-virtual {p0}, Lcom/android/sprintmenu/KOREA_Mode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/sprintmenu/KOREA_Mode;->DEFAULTAPN_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_11

    .line 314
    nop

    :sswitch_data_cc
    .sparse-switch
        -0x1 -> :sswitch_c0
        0x0 -> :sswitch_12
        0x2 -> :sswitch_44
        0x9 -> :sswitch_8d
    .end sparse-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 307
    :goto_7
    return-void

    .line 299
    :pswitch_8
    sget-object v0, Lcom/android/sprintmenu/KOREA_Mode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancel BTN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v0, "Cancel!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 296
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
    .line 269
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 270
    sget-object v1, Lcom/android/sprintmenu/KOREA_Mode;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Class create!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/KOREA_Mode;->setContentView(I)V

    .line 275
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/KOREA_Mode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 276
    invoke-direct {p0}, Lcom/android/sprintmenu/KOREA_Mode;->getOemData()V

    .line 278
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/KOREA_Mode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/KOREA_Mode;->korea_mode:Landroid/widget/RadioButton;

    .line 279
    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/KOREA_Mode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/KOREA_Mode;->sprint_test_bed:Landroid/widget/RadioButton;

    .line 280
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/KOREA_Mode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/KOREA_Mode;->mode_off:Landroid/widget/RadioButton;

    .line 282
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/KOREA_Mode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/KOREA_Mode;->india_mode:Landroid/widget/RadioButton;

    .line 284
    iget-object v1, p0, Lcom/android/sprintmenu/KOREA_Mode;->korea_mode:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v1, p0, Lcom/android/sprintmenu/KOREA_Mode;->sprint_test_bed:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v1, p0, Lcom/android/sprintmenu/KOREA_Mode;->india_mode:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v1, p0, Lcom/android/sprintmenu/KOREA_Mode;->mode_off:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/KOREA_Mode;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/KOREA_Mode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    return-void
.end method
