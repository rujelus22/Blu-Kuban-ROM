.class public Lcom/android/sprintmenu/PhoneUtil;
.super Landroid/app/Activity;
.source "PhoneUtil.java"


# static fields
.field private static final SET_DM:[B

.field private static final SET_NULL:[B


# instance fields
.field private final ALL_STATUS:I

.field private final AP_STATUS:I

.field private final CP_STATUS:I

.field private LOG_TAG:Ljava/lang/String;

.field private final USB_PROPERTY:Ljava/lang/String;

.field private canRun:Z

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 50
    new-array v0, v1, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/sprintmenu/PhoneUtil;->SET_DM:[B

    .line 51
    new-array v0, v1, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/sprintmenu/PhoneUtil;->SET_NULL:[B

    return-void

    .line 50
    :array_10
    .array-data 0x1
        0xct
        0x8t
        0x0t
        0x6t
        0x3t
        0x2t
    .end array-data

    .line 51
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "persist.service.usb.hubport"

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil;->USB_PROPERTY:Ljava/lang/String;

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/sprintmenu/PhoneUtil;->CP_STATUS:I

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/sprintmenu/PhoneUtil;->AP_STATUS:I

    .line 48
    iput v1, p0, Lcom/android/sprintmenu/PhoneUtil;->ALL_STATUS:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil;->phone:Lcom/android/internal/telephony/Phone;

    .line 54
    iput-boolean v1, p0, Lcom/android/sprintmenu/PhoneUtil;->canRun:Z

    .line 55
    const-string v0, "PhoneUtil"

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/PhoneUtil;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/sprintmenu/PhoneUtil;->canRun:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/PhoneUtil;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/PhoneUtil;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/PhoneUtil;->setProp(I)V

    return-void
.end method

.method static synthetic access$300()[B
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/sprintmenu/PhoneUtil;->SET_NULL:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sprintmenu/PhoneUtil;[B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/PhoneUtil;->sendRILCommands([B)V

    return-void
.end method

.method static synthetic access$500()[B
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/sprintmenu/PhoneUtil;->SET_DM:[B

    return-object v0
.end method

.method private initUI()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 117
    iget-object v3, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v4, "initUI()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v3, "LOG_TAG"

    const-string v4, "initUI called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v3, "LOG_TAG"

    const-string v4, "getting the string "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_18
    const-string v3, "persist.service.usb.hubport"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_22} :catch_48

    move-result v1

    .line 148
    .local v1, Status:I
    :goto_23
    iget-object v3, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Port Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-nez v1, :cond_9b

    .line 151
    iget-object v3, p0, Lcom/android/sprintmenu/PhoneUtil;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 159
    :goto_45
    iput-boolean v6, p0, Lcom/android/sprintmenu/PhoneUtil;->canRun:Z

    .line 160
    return-void

    .line 125
    .end local v1           #Status:I
    :catch_48
    move-exception v0

    .line 127
    .local v0, E:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v3, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting By default to AP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v3, 0x4

    :try_start_7a
    invoke-direct {p0, v3}, Lcom/android/sprintmenu/PhoneUtil;->setProp(I)V

    .line 132
    sget-object v3, Lcom/android/sprintmenu/PhoneUtil;->SET_NULL:[B

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/PhoneUtil;->sendRILCommands([B)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_82} :catch_8d

    .line 143
    :goto_82
    const-string v3, "persist.service.usb.hubport"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #Status:I
    goto :goto_23

    .line 135
    .end local v1           #Status:I
    :catch_8d
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "LOG_TAG"

    const-string v4, "throwing exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_82

    .line 152
    .end local v0           #E:Ljava/lang/NumberFormatException;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #Status:I
    :cond_9b
    if-ne v1, v7, :cond_a6

    .line 153
    iget-object v3, p0, Lcom/android/sprintmenu/PhoneUtil;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_45

    .line 154
    :cond_a6
    const/16 v3, 0x8

    if-ne v1, v3, :cond_b3

    .line 155
    iget-object v3, p0, Lcom/android/sprintmenu/PhoneUtil;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_45

    .line 157
    :cond_b3
    const-string v3, "Status Unknown"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_45
.end method

.method private sendRILCommands([B)V
    .registers 9
    .parameter "data"

    .prologue
    .line 178
    iget-object v4, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v5, "sendRILCommands()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    :try_start_12
    array-length v4, p1

    if-ge v3, v4, :cond_1d

    .line 184
    aget-byte v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 187
    :cond_1d
    iget-object v4, p0, Lcom/android/sprintmenu/PhoneUtil;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_27} :catch_28

    .line 192
    :goto_27
    return-void

    .line 189
    :catch_28
    move-exception v2

    .line 190
    .local v2, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private setProp(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 109
    const-string v1, "LOG_TAG"

    const-string v2, "setProp called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, status_txt:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v1, "LOG_TAG"

    const-string v2, "setting USB_property"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "persist.service.usb.hubport"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v0, "LOG_TAG"

    const-string v1, "Setting the layout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/PhoneUtil;->setContentView(I)V

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil;->phone:Lcom/android/internal/telephony/Phone;

    .line 66
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/PhoneUtil;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/sprintmenu/PhoneUtil;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 67
    const-string v0, "LOG_TAG"

    const-string v1, "radio group found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/android/sprintmenu/PhoneUtil;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/android/sprintmenu/PhoneUtil$1;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/PhoneUtil$1;-><init>(Lcom/android/sprintmenu/PhoneUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 106
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sprintmenu/PhoneUtil;->canRun:Z

    .line 175
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 164
    const-string v0, "LOG_TAG"

    const-string v1, "onResume called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/sprintmenu/PhoneUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    invoke-direct {p0}, Lcom/android/sprintmenu/PhoneUtil;->initUI()V

    .line 168
    return-void
.end method
