.class public Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;
.super Landroid/app/Activity;
.source "Factory_reset.java"


# instance fields
.field bos:Ljava/io/ByteArrayOutputStream;

.field dos:Ljava/io/DataOutputStream;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 73
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Reset_run()V
    .registers 8

    .prologue
    .line 35
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->bos:Ljava/io/ByteArrayOutputStream;

    .line 36
    new-instance v5, Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->dos:Ljava/io/DataOutputStream;

    .line 40
    const/4 v2, 0x5

    .line 41
    .local v2, fileSize:I
    :try_start_11
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->dos:Ljava/io/DataOutputStream;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 42
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->dos:Ljava/io/DataOutputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 43
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 44
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->dos:Ljava/io/DataOutputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_29} :catch_4f

    .line 50
    const-string v5, "Factory_reset"

    const-string v6, "send Reset to RIL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x7ce

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 56
    .local v3, passMsg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x7cf

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 57
    .local v1, failMsg:Landroid/os/Message;
    new-instance v4, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;-><init>(Landroid/content/Context;Landroid/os/Message;Landroid/os/Message;)V

    .line 58
    .local v4, sdcardFormat:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;
    invoke-virtual {v4}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->startSDCardFormat()V

    .line 60
    .end local v1           #failMsg:Landroid/os/Message;
    .end local v3           #passMsg:Landroid/os/Message;
    .end local v4           #sdcardFormat:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;
    :goto_4e
    return-void

    .line 46
    :catch_4f
    move-exception v0

    .line 48
    .local v0, e:Ljava/io/IOException;
    goto :goto_4e
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const-string v0, "Factory_reset"

    const-string v1, "on Create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->Reset_run()V

    .line 70
    return-void
.end method
