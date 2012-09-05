.class public Lcom/android/sprintmenu/CLEAR_Reset;
.super Landroid/app/Activity;
.source "CLEAR_Reset.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/android/sprintmenu/CLEAR_Reset;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/CLEAR_Reset;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lcom/android/sprintmenu/CLEAR_Reset$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/CLEAR_Reset$1;-><init>(Lcom/android/sprintmenu/CLEAR_Reset;)V

    iput-object v0, p0, Lcom/android/sprintmenu/CLEAR_Reset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Reset_CLEAR()V
    .registers 9

    .prologue
    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 42
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 43
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 44
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 45
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_35

    .line 51
    sget-object v4, Lcom/android/sprintmenu/CLEAR_Reset;->LOG_TAG:Ljava/lang/String;

    const-string v5, "send Clear Reset to RIL"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v4, Lcom/android/sprintmenu/MSL_Checker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/CLEAR_Reset;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7cd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 53
    :goto_34
    return-void

    .line 47
    :catch_35
    move-exception v2

    .line 49
    .local v2, e:Ljava/io/IOException;
    goto :goto_34
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/sprintmenu/CLEAR_Reset;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/android/sprintmenu/CLEAR_Reset;->Reset_CLEAR()V

    .line 62
    return-void
.end method
