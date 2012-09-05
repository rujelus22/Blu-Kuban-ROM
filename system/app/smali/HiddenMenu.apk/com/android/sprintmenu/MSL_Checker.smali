.class public Lcom/android/sprintmenu/MSL_Checker;
.super Landroid/app/Activity;
.source "MSL_Checker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static mPhone:Lcom/android/internal/telephony/Phone;


# instance fields
.field displayDialog:Z

.field eroorMsg:Ljava/lang/String;

.field flag_HFA:Z

.field flag_Restore:Z

.field i:Landroid/content/Intent;

.field keyString:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInputPwd:Landroid/widget/EditText;

.field userInput:Ljava/lang/String;

.field private visilePasswordsInitialStatus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/android/sprintmenu/MSL_Checker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/sprintmenu/MSL_Checker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->userInput:Ljava/lang/String;

    .line 52
    iput-boolean v2, p0, Lcom/android/sprintmenu/MSL_Checker;->visilePasswordsInitialStatus:Z

    .line 56
    iput-boolean v2, p0, Lcom/android/sprintmenu/MSL_Checker;->displayDialog:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/sprintmenu/MSL_Checker;->flag_Restore:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/sprintmenu/MSL_Checker;->flag_HFA:Z

    .line 255
    new-instance v0, Lcom/android/sprintmenu/MSL_Checker$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/MSL_Checker$1;-><init>(Lcom/android/sprintmenu/MSL_Checker;)V

    iput-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkMSLCode()V
    .registers 9

    .prologue
    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 67
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 68
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 70
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_2a

    .line 76
    sget-object v4, Lcom/android/sprintmenu/MSL_Checker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/MSL_Checker;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 77
    :goto_29
    return-void

    .line 72
    :catch_2a
    move-exception v2

    .line 74
    .local v2, e:Ljava/io/IOException;
    goto :goto_29
.end method

.method private checkSPRINTCode()V
    .registers 3

    .prologue
    .line 85
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkSPRINTCode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->userInput:Ljava/lang/String;

    const-string v1, "777468"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 89
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "User Input Ok, Launching DEBUG Screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    .line 91
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/DEBUGMENU;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/android/sprintmenu/MSL_Checker;->initiateActivity()V

    .line 105
    :goto_2b
    return-void

    .line 97
    :cond_2c
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "User Input Incorrect, Displaying Error Toast "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "Invalid Lock Code!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2b
.end method


# virtual methods
.method initiateActivity()V
    .registers 3

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/sprintmenu/MSL_Checker;->displayDialog:Z

    if-eqz v0, :cond_15

    .line 241
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "Restore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/RestoreNAI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 249
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/MSL_Checker;->startActivity(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/sprintmenu/MSL_Checker;->finish()V

    .line 252
    return-void

    .line 243
    :cond_25
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "Enable_HFA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/Enable_HFA;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_15

    .line 245
    :cond_37
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "RTN_Reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/RTN_Reset;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_15

    .line 247
    :cond_49
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "CLEAR_Reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/CLEAR_Reset;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_15
.end method

.method public notifyResult(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 112
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSL result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->userInput:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 121
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/DEBUGMENU;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 229
    :cond_42
    :goto_42
    iget-boolean v0, p0, Lcom/android/sprintmenu/MSL_Checker;->displayDialog:Z

    if-nez v0, :cond_49

    .line 230
    invoke-virtual {p0}, Lcom/android/sprintmenu/MSL_Checker;->initiateActivity()V

    .line 236
    :cond_49
    :goto_49
    return-void

    .line 125
    :cond_4a
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "AKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 127
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/AKEY2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_42

    .line 131
    :cond_63
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "GPSCLRX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 133
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/GPSCLRX;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_42

    .line 137
    :cond_7c
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "SCRTN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 139
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/SCRTN;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_42

    .line 143
    :cond_95
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "Advanced"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 145
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/TerminalMode;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-string v1, "keyString"

    const-string v2, "DATA_ADV"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_42

    .line 151
    :cond_b7
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "UsernameEdit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 153
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/Username_Edit;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_42

    .line 157
    :cond_d1
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "DSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 159
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-string v1, "com.android.sprintmenu"

    const-string v2, "com.android.sprintmenu.DSA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_42

    .line 164
    :cond_ed
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "MMSC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 166
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/MMSC;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_42

    .line 170
    :cond_107
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "Restore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 172
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput-boolean v3, p0, Lcom/android/sprintmenu/MSL_Checker;->flag_Restore:Z

    .line 174
    iput-boolean v3, p0, Lcom/android/sprintmenu/MSL_Checker;->displayDialog:Z

    .line 175
    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MSL_Checker;->showDialog(I)V

    goto/16 :goto_42

    .line 178
    :cond_121
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "Enable_HFA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 180
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput-boolean v3, p0, Lcom/android/sprintmenu/MSL_Checker;->flag_HFA:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/sprintmenu/MSL_Checker;->displayDialog:Z

    .line 183
    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MSL_Checker;->showDialog(I)V

    goto/16 :goto_42

    .line 186
    :cond_13b
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "RTN_Reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 188
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-boolean v3, p0, Lcom/android/sprintmenu/MSL_Checker;->displayDialog:Z

    .line 190
    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MSL_Checker;->showDialog(I)V

    goto/16 :goto_42

    .line 193
    :cond_153
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "Multimedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 195
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-string v1, "com.android.sprintmenu"

    const-string v2, "com.android.sprintmenu.Multimedia"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_42

    .line 200
    :cond_16f
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "Work_Mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 202
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-string v1, "com.android.sprintmenu"

    const-string v2, "com.android.sprintmenu.WORK_Mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_42

    .line 206
    :cond_18b
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "WiMAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 208
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-boolean v3, p0, Lcom/android/sprintmenu/MSL_Checker;->displayDialog:Z

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    const-string v2, "android_secret_code://WiMAX_CFG"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/MSL_Checker;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/sprintmenu/MSL_Checker;->finish()V

    goto/16 :goto_42

    .line 215
    :cond_1b3
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "hdata_edit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 217
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->i:Landroid/content/Intent;

    const-class v1, Lcom/android/sprintmenu/hdata_edit;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_42

    .line 221
    :cond_1cd
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v1, "CLEAR_Reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 223
    sget-object v0, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput-boolean v3, p0, Lcom/android/sprintmenu/MSL_Checker;->displayDialog:Z

    .line 225
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/MSL_Checker;->showDialog(I)V

    goto/16 :goto_42

    .line 235
    :cond_1e6
    const-string v0, "Invalid Lock Code!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_49
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_42

    .line 470
    :goto_11
    return-void

    .line 445
    :sswitch_12
    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->mInputPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->userInput:Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v2, "DEBUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 450
    sget-object v1, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Checking SPRINT for DEBUG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0}, Lcom/android/sprintmenu/MSL_Checker;->checkSPRINTCode()V

    goto :goto_11

    .line 455
    :cond_33
    sget-object v1, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Checking for MSL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct {p0}, Lcom/android/sprintmenu/MSL_Checker;->checkMSLCode()V

    goto :goto_11

    .line 466
    :sswitch_3e
    invoke-virtual {p0}, Lcom/android/sprintmenu/MSL_Checker;->finish()V

    goto :goto_11

    .line 442
    :sswitch_data_42
    .sparse-switch
        0x7f070003 -> :sswitch_3e
        0x7f070009 -> :sswitch_12
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 302
    sget-object v3, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    sput-object v3, Lcom/android/sprintmenu/MSL_Checker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 305
    sget-object v3, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCreate1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/android/sprintmenu/MSL_Checker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 308
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCreate2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v3, "keyString"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    .line 310
    sget-object v3, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v3, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    const-string v4, "DEBUG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 317
    const-string v3, "Check Lock Code"

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MSL_Checker;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MSL_Checker;->setContentView(I)V

    .line 325
    :goto_46
    sget-object v3, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const v3, 0x7f070008

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MSL_Checker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/sprintmenu/MSL_Checker;->mInputPwd:Landroid/widget/EditText;

    .line 329
    iget-object v3, p0, Lcom/android/sprintmenu/MSL_Checker;->mInputPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 331
    sget-object v3, Lcom/android/sprintmenu/MSL_Checker;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/sprintmenu/MSL_Checker;->keyString:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const v3, 0x7f070009

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MSL_Checker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 333
    .local v2, ok_button:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v3, 0x7f070003

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MSL_Checker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    return-void

    .line 322
    .end local v0           #cancel_button:Landroid/view/View;
    .end local v2           #ok_button:Landroid/view/View;
    :cond_7d
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MSL_Checker;->setContentView(I)V

    goto :goto_46
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const v3, 0x7f05003e

    const v2, 0x7f05003d

    .line 342
    packed-switch p1, :pswitch_data_9c

    .line 416
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 346
    :pswitch_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0500c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "WARNING: Do you want to reset your phone\'s network settings and still retain your personal information?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/sprintmenu/MSL_Checker$3;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/MSL_Checker$3;-><init>(Lcom/android/sprintmenu/MSL_Checker;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/sprintmenu/MSL_Checker$2;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/MSL_Checker$2;-><init>(Lcom/android/sprintmenu/MSL_Checker;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    .line 372
    :pswitch_34
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/sprintmenu/MSL_Checker;->flag_Restore:Z

    if-eqz v0, :cond_65

    const v0, 0x7f05003c

    :goto_40
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/sprintmenu/MSL_Checker;->flag_Restore:Z

    if-eqz v0, :cond_71

    const-string v0, "This phone will be restarted."

    :goto_4a
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/sprintmenu/MSL_Checker$5;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/MSL_Checker$5;-><init>(Lcom/android/sprintmenu/MSL_Checker;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/sprintmenu/MSL_Checker$4;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/MSL_Checker$4;-><init>(Lcom/android/sprintmenu/MSL_Checker;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    :cond_65
    iget-boolean v0, p0, Lcom/android/sprintmenu/MSL_Checker;->flag_HFA:Z

    if-eqz v0, :cond_6d

    const v0, 0x7f05003f

    goto :goto_40

    :cond_6d
    const v0, 0x7f050008

    goto :goto_40

    :cond_71
    iget-boolean v0, p0, Lcom/android/sprintmenu/MSL_Checker;->flag_HFA:Z

    if-eqz v0, :cond_78

    const-string v0, "If you select \'Yes\', this phone will be restarted."

    goto :goto_4a

    :cond_78
    const-string v0, "Reset the phone to manufacture\'s default?"

    goto :goto_4a

    .line 399
    :pswitch_7b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f05001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sprintmenu/MSL_Checker;->eroorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/sprintmenu/MSL_Checker$6;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/MSL_Checker$6;-><init>(Lcom/android/sprintmenu/MSL_Checker;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_a

    .line 342
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_34
        :pswitch_b
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 431
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 432
    iget-boolean v0, p0, Lcom/android/sprintmenu/MSL_Checker;->visilePasswordsInitialStatus:Z

    if-ne v0, v2, :cond_11

    .line 433
    invoke-virtual {p0}, Lcom/android/sprintmenu/MSL_Checker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    :cond_11
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 420
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 423
    invoke-virtual {p0}, Lcom/android/sprintmenu/MSL_Checker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1f

    :goto_11
    iput-boolean v0, p0, Lcom/android/sprintmenu/MSL_Checker;->visilePasswordsInitialStatus:Z

    if-eqz v0, :cond_1e

    .line 425
    invoke-virtual {p0}, Lcom/android/sprintmenu/MSL_Checker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "show_password"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    :cond_1e
    return-void

    :cond_1f
    move v0, v1

    .line 423
    goto :goto_11
.end method
