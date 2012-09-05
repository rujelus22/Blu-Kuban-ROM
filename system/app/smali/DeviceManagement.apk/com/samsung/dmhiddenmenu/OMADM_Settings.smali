.class public Lcom/samsung/dmhiddenmenu/OMADM_Settings;
.super Landroid/app/Activity;
.source "OMADM_Settings.java"


# static fields
.field private static final AUTH_PREF_STRINGS:[Ljava/lang/String;

.field private static final SRVR_ADDR_TYPE_STRINGS:[Ljava/lang/String;


# instance fields
.field private mAccName:Landroid/widget/EditText;

.field private mAuthPref:Landroid/widget/Spinner;

.field private mCancel:Landroid/widget/Button;

.field private mClientName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mOk:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSrvrAddr:Landroid/widget/EditText;

.field private mSrvrAddrType:Landroid/widget/Spinner;

.field private mSrvrID:Landroid/widget/EditText;

.field private mSrvrPort:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "URI"

    aput-object v1, v0, v2

    const-string v1, "IPv4"

    aput-object v1, v0, v3

    const-string v1, "IPv6"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->SRVR_ADDR_TYPE_STRINGS:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v2

    const-string v1, "BASIC"

    aput-object v1, v0, v3

    const-string v1, "DIGEST"

    aput-object v1, v0, v4

    const-string v1, "HMAC"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->AUTH_PREF_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mOk:Landroid/widget/Button;

    .line 36
    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mCancel:Landroid/widget/Button;

    .line 39
    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 150
    new-instance v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings$3;

    invoke-direct {v0, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings$3;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings;)V

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dmhiddenmenu/OMADM_Settings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->commitSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/dmhiddenmenu/OMADM_Settings;[B)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->hexBytes2Bytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dmhiddenmenu/OMADM_Settings;B[BI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->processRilResponse(B[BI)V

    return-void
.end method

.method private bytes2HexString([B)Ljava/lang/String;
    .registers 9
    .parameter "array"

    .prologue
    .line 244
    const-string v4, ""

    .line 245
    .local v4, str:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_3c

    aget-byte v1, v0, v2

    .line 246
    .local v1, b:B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v6, v1, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 249
    .end local v1           #b:B
    :cond_3c
    return-object v4
.end method

.method private commitSettings()V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 117
    const-string v0, "OMADM_Settings"

    const-string v1, "Set OMADM Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v10, 0x0

    .line 119
    .local v10, settings:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mAccName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrAddr:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrAddrType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrID:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mClientName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mAuthPref:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 127
    const-string v0, "OMADM_Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings String : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 129
    .local v8, data_settings:[B
    array-length v0, v8

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->convertInt2Bytes(I)[B

    move-result-object v7

    .line 130
    .local v7, data_len:[B
    array-length v0, v8

    array-length v1, v7

    add-int/2addr v0, v1

    new-array v6, v0, [B

    .line 131
    .local v6, data_bytes:[B
    array-length v0, v7

    invoke-static {v7, v5, v6, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    array-length v0, v7

    array-length v1, v8

    invoke-static {v8, v5, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    invoke-direct {p0, v6}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, data:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v9, v0, [B

    aput-byte v5, v9, v5

    .line 136
    .local v9, len_byte:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>([B)V

    .line 137
    .local v4, len:Ljava/lang/String;
    const-string v0, "OMADM_Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings String length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v8

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x10

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x7da

    invoke-virtual {v5, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->finish()V

    .line 142
    return-void
.end method

.method private convertInt2Bytes(I)[B
    .registers 5
    .parameter "i"

    .prologue
    .line 235
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 236
    .local v0, b:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 237
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 238
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 239
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 240
    return-object v0
.end method

.method private emptyCheck(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"

    .prologue
    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 254
    const-string p1, " "

    .line 256
    .end local p1
    :cond_8
    return-object p1
.end method

.method private hexBytes2Bytes([B)[B
    .registers 8
    .parameter "hex"

    .prologue
    .line 225
    array-length v2, p1

    .line 226
    .local v2, num:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 227
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_27

    .line 228
    div-int/lit8 v3, v1, 0x2

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 227
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .line 231
    :cond_27
    return-object v0
.end method

.method private processRilResponse(B[BI)V
    .registers 10
    .parameter "id"
    .parameter "arr"
    .parameter "len"

    .prologue
    const/4 v5, 0x0

    .line 199
    new-array v3, p3, [B

    .line 200
    .local v3, str:[B
    invoke-static {p2, v5, v3, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 202
    .local v0, acc_info:Ljava/lang/String;
    const-string v4, "OMADM_Settings"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, info:[Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mAccName:Landroid/widget/EditText;

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrAddr:Landroid/widget/EditText;

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    sget-object v4, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->SRVR_ADDR_TYPE_STRINGS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3d

    .line 208
    sget-object v4, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->SRVR_ADDR_TYPE_STRINGS:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 209
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrAddrType:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 213
    :cond_3d
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrPort:Landroid/widget/EditText;

    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrID:Landroid/widget/EditText;

    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mClientName:Landroid/widget/EditText;

    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v1, 0x0

    :goto_56
    sget-object v4, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->AUTH_PREF_STRINGS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6d

    .line 217
    sget-object v4, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->AUTH_PREF_STRINGS:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x6

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 218
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mAuthPref:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 222
    :cond_6d
    return-void

    .line 207
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 216
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_56
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x1090009

    const v2, 0x1090008

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->setContentView(I)V

    .line 55
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mAccName:Landroid/widget/EditText;

    .line 56
    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrAddr:Landroid/widget/EditText;

    .line 57
    const v1, 0x7f070039

    invoke-virtual {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrAddrType:Landroid/widget/Spinner;

    .line 58
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->SRVR_ADDR_TYPE_STRINGS:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 60
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 62
    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrAddrType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    const v1, 0x7f07003b

    invoke-virtual {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrPort:Landroid/widget/EditText;

    .line 64
    const v1, 0x7f07003d

    invoke-virtual {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mSrvrID:Landroid/widget/EditText;

    .line 65
    const v1, 0x7f07003f

    invoke-virtual {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mClientName:Landroid/widget/EditText;

    .line 66
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mAuthPref:Landroid/widget/Spinner;

    .line 67
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->AUTH_PREF_STRINGS:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 69
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 71
    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mAuthPref:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 72
    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mOk:Landroid/widget/Button;

    .line 73
    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mOk:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/dmhiddenmenu/OMADM_Settings$1;

    invoke-direct {v2, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings$1;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mCancel:Landroid/widget/Button;

    .line 79
    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mCancel:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/dmhiddenmenu/OMADM_Settings$2;

    invoke-direct {v2, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings$2;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 104
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1d

    .line 105
    const-string v1, "OMADM_Settings"

    const-string v2, "Going to OMADM Hidden Menu 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.OMADM_Settings_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->startActivity(Landroid/content/Intent;)V

    .line 110
    const/4 v1, 0x1

    .line 112
    .end local v0           #i:Landroid/content/Intent;
    :goto_1c
    return v1

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1c
.end method

.method protected onStart()V
    .registers 12

    .prologue
    const/16 v1, 0xf

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 90
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 91
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x7d9

    const/4 v8, 0x0

    invoke-interface {v0, v2, v5, v8}, Lcom/android/internal/telephony/Phone;->registerForOmaDmSendData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    const-string v0, "OMADM_Settings"

    const-string v2, "Get OMADM Settings"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-array v6, v9, [B

    aput-byte v1, v6, v10

    .line 94
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 95
    .local v3, data:Ljava/lang/String;
    new-array v7, v9, [B

    aput-byte v9, v7, v10

    .line 96
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 97
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x7da

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 100
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 147
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForOmaDmSendData(Landroid/os/Handler;)V

    .line 148
    return-void
.end method
