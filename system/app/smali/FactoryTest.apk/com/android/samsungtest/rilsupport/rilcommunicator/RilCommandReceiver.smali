.class public Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RilCommandReceiver.java"


# instance fields
.field private mAttr:I

.field private mCmd:I

.field private mCommand:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSuccess:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private charToNum(C)I
    .registers 3
    .parameter "ch"

    .prologue
    .line 106
    const/16 v0, 0x30

    if-gt v0, p1, :cond_b

    const/16 v0, 0x39

    if-gt p1, v0, :cond_b

    .line 107
    add-int/lit8 v0, p1, -0x30

    .line 115
    :goto_a
    return v0

    .line 109
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p1, :cond_18

    const/16 v0, 0x66

    if-gt p1, v0, :cond_18

    .line 110
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 112
    :cond_18
    const/16 v0, 0x41

    if-gt v0, p1, :cond_25

    const/16 v0, 0x46

    if-gt p1, v0, :cond_25

    .line 113
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 115
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private commandOk()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCommand:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->charToNum(C)I

    move-result v3

    mul-int/lit16 v3, v3, 0x1000

    iget-object v4, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCommand:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->charToNum(C)I

    move-result v4

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->charToNum(C)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->charToNum(C)I

    move-result v4

    add-int v0, v3, v4

    .line 92
    .local v0, mLength:I
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    div-int/lit8 v3, v3, 0x2

    if-ne v0, v3, :cond_45

    .line 93
    iput-boolean v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mSuccess:Z

    .line 96
    :goto_44
    return v1

    :cond_45
    iput-boolean v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mSuccess:Z

    move v1, v2

    goto :goto_44
.end method

.method private getInformation()V
    .registers 8

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCommand:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCommand:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, attr:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->charToNum(C)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->charToNum(C)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCmd:I

    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->charToNum(C)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->charToNum(C)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mAttr:I

    .line 65
    return-void
.end method

.method private sendAckCommand()V
    .registers 4

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action.RilCommandSend"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, ackIntent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->commandOk()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 74
    const-string v1, "COMMAND"

    const-string v2, "ack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :goto_14
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    return-void

    .line 77
    :cond_1a
    const-string v1, "COMMAND"

    const-string v2, "ack_fail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_14
.end method

.method private startAction()V
    .registers 4

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const-string v1, "COMMAND"

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "CMD"

    iget v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCmd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v1, "ATTR"

    iget v2, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mAttr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    const-string v0, "Command Parser"

    const-string v1, "start!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mContext:Landroid/content/Context;

    .line 28
    const-string v0, "COMMAND"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCommand:Ljava/lang/String;

    .line 29
    const-string v0, "Command Parser"

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->sendAckCommand()V

    .line 34
    iget-boolean v0, p0, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->mSuccess:Z

    if-eqz v0, :cond_2d

    .line 35
    const-string v0, "Command Parser"

    const-string v1, "Good"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->getInformation()V

    .line 38
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/rilcommunicator/RilCommandReceiver;->startAction()V

    .line 45
    :goto_2c
    return-void

    .line 42
    :cond_2d
    const-string v0, "Command Parser"

    const-string v1, "BAD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method
