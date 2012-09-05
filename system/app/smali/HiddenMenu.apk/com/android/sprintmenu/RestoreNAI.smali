.class public Lcom/android/sprintmenu/RestoreNAI;
.super Landroid/app/Activity;
.source "RestoreNAI.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 209
    new-instance v0, Lcom/android/sprintmenu/RestoreNAI$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/RestoreNAI$1;-><init>(Lcom/android/sprintmenu/RestoreNAI;)V

    iput-object v0, p0, Lcom/android/sprintmenu/RestoreNAI;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Restoring_NAI()V
    .registers 9

    .prologue
    .line 75
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 81
    .local v3, fileSize:I
    const/16 v4, 0xd

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 82
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 83
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_32

    .line 89
    const-string v4, "Restore"

    const-string v5, "send restore NAI to RIL"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v4, Lcom/android/sprintmenu/MSL_Checker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/RestoreNAI;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7cd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 94
    :goto_31
    return-void

    .line 85
    :catch_32
    move-exception v2

    .line 87
    .local v2, e:Ljava/io/IOException;
    goto :goto_31
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/android/sprintmenu/RestoreNAI;->Restoring_NAI()V

    .line 113
    return-void
.end method
