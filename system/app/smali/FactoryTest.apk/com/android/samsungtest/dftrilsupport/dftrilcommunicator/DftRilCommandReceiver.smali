.class public Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DftRilCommandReceiver.java"


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
    .line 112
    const/16 v0, 0x30

    if-gt v0, p1, :cond_b

    const/16 v0, 0x39

    if-gt p1, v0, :cond_b

    .line 113
    add-int/lit8 v0, p1, -0x30

    .line 121
    :goto_a
    return v0

    .line 115
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p1, :cond_18

    const/16 v0, 0x66

    if-gt p1, v0, :cond_18

    .line 116
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 118
    :cond_18
    const/16 v0, 0x41

    if-gt v0, p1, :cond_25

    const/16 v0, 0x46

    if-gt p1, v0, :cond_25

    .line 119
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 121
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private commandOk()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    iget-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->charToNum(C)I

    move-result v3

    mul-int/lit16 v3, v3, 0x1000

    iget-object v4, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->charToNum(C)I

    move-result v4

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->charToNum(C)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->charToNum(C)I

    move-result v4

    add-int v0, v3, v4

    .line 98
    .local v0, mLength:I
    iget-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    div-int/lit8 v3, v3, 0x2

    if-ne v0, v3, :cond_45

    .line 99
    iput-boolean v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mSuccess:Z

    .line 102
    :goto_44
    return v1

    :cond_45
    iput-boolean v2, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mSuccess:Z

    move v1, v2

    goto :goto_44
.end method

.method private getInformation()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 60
    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_45

    .line 63
    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, attr:Ljava/lang/String;
    :goto_1a
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->charToNum(C)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->charToNum(C)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCmd:I

    .line 70
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->charToNum(C)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->charToNum(C)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mAttr:I

    .line 71
    return-void

    .line 66
    .end local v0           #attr:Ljava/lang/String;
    :cond_45
    const-string v0, "00"

    .restart local v0       #attr:Ljava/lang/String;
    goto :goto_1a
.end method

.method private sendAckCommand()V
    .registers 4

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action.RilDftCommandSend"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, ackIntent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->commandOk()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 80
    const-string v1, "COMMAND"

    const-string v2, "ack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :goto_14
    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    return-void

    .line 83
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

    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, i:Landroid/content/Intent;
    const-string v1, "COMMAND"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "CMD"

    iget v2, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCmd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v1, "ATTR"

    iget v2, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mAttr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mContext:Landroid/content/Context;

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
    iput-object p1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mContext:Landroid/content/Context;

    .line 28
    const-string v0, "COMMAND"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    .line 29
    const-string v0, "Command Parser"

    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mCommand:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->sendAckCommand()V

    .line 34
    iget-boolean v0, p0, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->mSuccess:Z

    if-eqz v0, :cond_2d

    .line 35
    const-string v0, "Command Parser"

    const-string v1, "Good"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->getInformation()V

    .line 38
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftrilcommunicator/DftRilCommandReceiver;->startAction()V

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
