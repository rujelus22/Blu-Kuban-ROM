.class public Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;
.super Landroid/app/Activity;
.source "PasswordNonceSettings.java"


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mCliNonce:Landroid/widget/EditText;

.field private mCliPwd:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mOk:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSrvrNonce:Landroid/widget/EditText;

.field private mSrvrPwd:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mOk:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mCancel:Landroid/widget/Button;

    .line 32
    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 124
    new-instance v0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings$3;-><init>(Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;)V

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->commitSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;[B)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->hexBytes2Bytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;B[BI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->processRilResponse(B[BI)V

    return-void
.end method

.method private bytes2HexString([B)Ljava/lang/String;
    .registers 9
    .parameter "array"

    .prologue
    .line 219
    const-string v4, ""

    .line 220
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

    .line 221
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

    .line 222
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

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 224
    .end local v1           #b:B
    :cond_3c
    return-object v4
.end method

.method private commitSettings()V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 85
    const-string v0, "PasswordNonceSettings"

    const-string v1, "Set OMADM Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v10, 0x0

    .line 87
    .local v10, settings:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mSrvrPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mSrvrNonce:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mCliPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mCliNonce:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->emptyCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 93
    const-string v0, "PasswordNonceSettings"

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

    .line 95
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 96
    .local v8, data_settings:[B
    array-length v0, v8

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->convertInt2Bytes(I)[B

    move-result-object v7

    .line 97
    .local v7, data_len:[B
    array-length v0, v8

    array-length v1, v7

    add-int/2addr v0, v1

    new-array v6, v0, [B

    .line 99
    .local v6, data_bytes:[B
    array-length v0, v7

    invoke-static {v7, v5, v6, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    array-length v0, v7

    array-length v1, v8

    invoke-static {v8, v5, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-direct {p0, v6}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, data:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v9, v0, [B

    aput-byte v5, v9, v5

    .line 106
    .local v9, len_byte:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>([B)V

    .line 108
    .local v4, len:Ljava/lang/String;
    const-string v0, "PasswordNonceSettings"

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

    .line 110
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x12

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x7da

    invoke-virtual {v5, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->finish()V

    .line 116
    return-void
.end method

.method private convertInt2Bytes(I)[B
    .registers 5
    .parameter "i"

    .prologue
    .line 209
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 210
    .local v0, b:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 211
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 212
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 213
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 215
    return-object v0
.end method

.method private emptyCheck(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"

    .prologue
    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 229
    const-string p1, " "

    .line 231
    .end local p1
    :cond_8
    return-object p1
.end method

.method private hexBytes2Bytes([B)[B
    .registers 8
    .parameter "hex"

    .prologue
    .line 199
    array-length v2, p1

    .line 200
    .local v2, num:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 201
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_27

    .line 202
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

    .line 201
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .line 205
    :cond_27
    return-object v0
.end method

.method private processRilResponse(B[BI)V
    .registers 9
    .parameter "id"
    .parameter "arr"
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 178
    packed-switch p1, :pswitch_data_3a

    .line 196
    :goto_4
    return-void

    .line 181
    :pswitch_5
    new-array v2, p3, [B

    .line 182
    .local v2, str:[B
    invoke-static {p2, v4, v2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 184
    .local v0, acc_info:Ljava/lang/String;
    const-string v3, "PasswordNonceSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, info:[Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mSrvrPwd:Landroid/widget/EditText;

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mSrvrNonce:Landroid/widget/EditText;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v3, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mCliPwd:Landroid/widget/EditText;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v3, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mCliNonce:Landroid/widget/EditText;

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 178
    :pswitch_data_3a
    .packed-switch 0x6e
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->setContentView(I)V

    .line 43
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mSrvrPwd:Landroid/widget/EditText;

    .line 44
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mSrvrNonce:Landroid/widget/EditText;

    .line 46
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mCliPwd:Landroid/widget/EditText;

    .line 47
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mCliNonce:Landroid/widget/EditText;

    .line 49
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mOk:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mOk:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings$1;-><init>(Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mCancel:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mCancel:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings$2;-><init>(Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method protected onStart()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 69
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d9

    const/4 v5, 0x0

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForOmaDmSendData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 72
    const-string v0, "PasswordNonceSettings"

    const-string v1, "Get OMADM Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-array v6, v8, [B

    const/16 v0, 0xf

    aput-byte v0, v6, v9

    .line 74
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 75
    .local v3, data:Ljava/lang/String;
    new-array v7, v8, [B

    aput-byte v8, v7, v9

    .line 76
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 77
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x11

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x7da

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 81
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 121
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/PasswordNonceSettings;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForOmaDmSendData(Landroid/os/Handler;)V

    .line 122
    return-void
.end method
