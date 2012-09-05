.class public Lcom/android/sprintmenu/PhoneUtil_OldRev;
.super Landroid/app/Activity;
.source "PhoneUtil_OldRev.java"


# static fields
.field private static final SET_DM:[B

.field private static final SET_NULL:[B


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final UART_PATH:Ljava/lang/String;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private final modem:[B

.field private final pda:[B

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->SET_DM:[B

    .line 45
    new-array v0, v1, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->SET_NULL:[B

    return-void

    .line 44
    :array_10
    .array-data 0x1
        0xct
        0x8t
        0x0t
        0x6t
        0x3t
        0x2t
    .end array-data

    .line 45
    nop

    :array_18
    .array-data 0x1
        0xct
        0x8t
        0x0t
        0x6t
        0x3t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string v0, "/sys/class/sec/switch/uart_sel"

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->UART_PATH:Ljava/lang/String;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->pda:[B

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->modem:[B

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->phone:Lcom/android/internal/telephony/Phone;

    .line 49
    const-string v0, "PhoneUtil"

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 41
    nop

    :array_20
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data

    .line 42
    :array_26
    .array-data 0x1
        0x4dt
        0x4ft
        0x44t
        0x45t
        0x4dt
        0x0t
    .end array-data
.end method

.method static synthetic access$000()[B
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->SET_NULL:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/PhoneUtil_OldRev;[B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->sendRILCommands([B)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/PhoneUtil_OldRev;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[B
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->SET_DM:[B

    return-object v0
.end method

.method private initialSetting(Landroid/widget/RadioGroup;)V
    .registers 6
    .parameter "modemgroup"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "modem_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, status:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 109
    const v1, 0x7f070017

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 110
    sget-object v1, Lcom/android/sprintmenu/PhoneUtil_OldRev;->SET_DM:[B

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->sendRILCommands([B)V

    .line 116
    :goto_19
    return-void

    .line 112
    :cond_1a
    const v1, 0x7f070016

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 113
    sget-object v1, Lcom/android/sprintmenu/PhoneUtil_OldRev;->SET_NULL:[B

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->sendRILCommands([B)V

    goto :goto_19
.end method

.method private sendRILCommands([B)V
    .registers 9
    .parameter "data"

    .prologue
    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    :try_start_b
    array-length v4, p1

    if-ge v3, v4, :cond_16

    .line 125
    aget-byte v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 128
    :cond_16
    iget-object v4, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_20} :catch_21

    .line 133
    :goto_20
    return-void

    .line 130
    :catch_21
    move-exception v2

    .line 131
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Phone Util"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->phone:Lcom/android/internal/telephony/Phone;

    .line 56
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->setContentView(I)V

    .line 59
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 60
    iget-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/PhoneUtil_OldRev$1;-><init>(Lcom/android/sprintmenu/PhoneUtil_OldRev;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->LOG_TAG:Ljava/lang/String;

    const-string v1, "calling intialsetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->initialSetting(Landroid/widget/RadioGroup;)V

    .line 90
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil_OldRev;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 96
    .local v0, id:I
    if-eq v0, v2, :cond_16

    const v1, 0x7f070016

    if-ne v0, v1, :cond_16

    .line 97
    sget-object v1, Lcom/android/sprintmenu/PhoneUtil_OldRev;->SET_NULL:[B

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->sendRILCommands([B)V

    .line 99
    :cond_16
    if-eq v0, v2, :cond_22

    const v1, 0x7f070017

    if-ne v0, v1, :cond_22

    .line 100
    sget-object v1, Lcom/android/sprintmenu/PhoneUtil_OldRev;->SET_DM:[B

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/PhoneUtil_OldRev;->sendRILCommands([B)V

    .line 102
    :cond_22
    return-void
.end method
