.class public Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;
.super Landroid/app/Activity;
.source "NandFlashHeaderRead.java"


# static fields
.field private static mParsedUniqueNumber:Ljava/lang/StringBuilder;

.field private static mUniqueNumberBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private final CHAR_TO_NUMBER:I

.field private final NUMBERCHAR_TO_NUMBER:I

.field private final STATUS_START:I

.field private mBackButton:Landroid/widget/Button;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mUniqueNumber:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->NUMBERCHAR_TO_NUMBER:I

    .line 33
    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->CHAR_TO_NUMBER:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->STATUS_START:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->phone:Lcom/android/internal/telephony/Phone;

    .line 76
    new-instance v0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$1;-><init>(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mClicked:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$2;-><init>(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private HexToDecimal([C)I
    .registers 10
    .parameter "ascii"

    .prologue
    const/16 v7, 0x41

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, result:I
    aget-char v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v5, v1, :cond_56

    aget-char v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v6, :cond_56

    .line 113
    aget-char v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 118
    :cond_30
    :goto_30
    aget-char v1, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v5, v1, :cond_80

    aget-char v1, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v6, :cond_80

    .line 119
    aget-char v1, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 123
    :cond_55
    :goto_55
    return v0

    .line 114
    :cond_56
    aget-char v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v7, v1, :cond_30

    aget-char v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x45

    if-gt v1, v2, :cond_30

    .line 115
    aget-char v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x37

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_30

    .line 120
    :cond_80
    aget-char v1, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v7, v1, :cond_55

    aget-char v1, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x45

    if-gt v1, v2, :cond_55

    .line 121
    aget-char v1, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x37

    add-int/2addr v0, v1

    goto :goto_55
.end method

.method static synthetic access$000(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->stringReset()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mUniqueNumberBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->parseUniqueNumber()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mParsedUniqueNumber:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->printUniqueNumber()V

    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 52
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mUniqueNumber:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mBackButton:Landroid/widget/Button;

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mBackButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v1, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mUniqueNumberBuilder:Ljava/lang/StringBuilder;

    .line 57
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->phone:Lcom/android/internal/telephony/Phone;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.DGS_UniqueNumber"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v1, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mParsedUniqueNumber:Ljava/lang/StringBuilder;

    .line 66
    return-void
.end method

.method private parseUniqueNumber()V
    .registers 6

    .prologue
    .line 100
    const/4 v2, 0x2

    new-array v0, v2, [C

    .line 101
    .local v0, asciiByte:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    sget-object v2, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mUniqueNumberBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_37

    .line 103
    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mUniqueNumberBuilder:Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    .line 104
    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mUniqueNumberBuilder:Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    .line 106
    sget-object v2, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mParsedUniqueNumber:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->HexToDecimal([C)I

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 108
    :cond_37
    return-void
.end method

.method private printUniqueNumber()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mUniqueNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mUniqueNumberBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method private sendToRilStart()V
    .registers 5

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, data:[B
    const-string v1, "NandFlashHeaderRead"

    const-string v2, "SendData to Ril Reday"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->setEndModeData(I)[B

    move-result-object v0

    .line 72
    const-string v1, "NandFlashHeaderRead"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendData to Ril :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 74
    return-void
.end method

.method private setEndModeData(I)[B
    .registers 8
    .parameter "state"

    .prologue
    .line 128
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 133
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 134
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 135
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 136
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_31
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_22

    .line 144
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_36

    .line 149
    :goto_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_21
    return-object v4

    .line 138
    :catch_22
    move-exception v2

    .line 139
    .local v2, e:Ljava/io/IOException;
    :try_start_23
    const-string v4, "NandFlashHeaderRead"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_31

    .line 140
    const/4 v4, 0x0

    .line 144
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_21

    .line 145
    :catch_2f
    move-exception v5

    goto :goto_21

    .line 143
    .end local v2           #e:Ljava/io/IOException;
    :catchall_31
    move-exception v4

    .line 144
    :try_start_32
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_38

    .line 147
    :goto_35
    throw v4

    .line 145
    :catch_36
    move-exception v4

    goto :goto_1d

    :catch_38
    move-exception v5

    goto :goto_35
.end method

.method private stringReset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 171
    sget-object v0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mUniqueNumberBuilder:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mUniqueNumberBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 172
    sget-object v0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mParsedUniqueNumber:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mParsedUniqueNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 173
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->init()V

    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->sendToRilStart()V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->printUniqueNumber()V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    return-void
.end method
