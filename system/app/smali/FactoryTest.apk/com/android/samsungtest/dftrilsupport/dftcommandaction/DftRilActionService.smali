.class public Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;
.super Landroid/app/Service;
.source "DftRilActionService.java"


# static fields
.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final KEY_SHORT:I

.field private isExternalMounted:Z

.field private mAttr:I

.field private mCmd:I

.field private mCommand:Ljava/lang/String;

.field private mData:Ljava/lang/String;

.field private mDataDm:S

.field private mDisplay:Landroid/view/Display;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mkeyCmdHandler:Landroid/os/Handler;

.field private touchMoveStatus:I

.field x1_value:Ljava/lang/String;

.field x2_value:Ljava/lang/String;

.field y1_value:Ljava/lang/String;

.field y2_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    iput v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    .line 61
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x1_value:Ljava/lang/String;

    .line 62
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y1_value:Ljava/lang/String;

    .line 63
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x2_value:Ljava/lang/String;

    .line 64
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y2_value:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->isExternalMounted:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 78
    const/16 v0, 0x6f

    iput v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->KEY_SHORT:I

    .line 80
    new-instance v0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;-><init>(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;)V

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mkeyCmdHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;S)S
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-short p1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mDataDm:S

    return p1
.end method

.method static synthetic access$100(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->checkDailerActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->checkIncallScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    return-void
.end method

.method private charToNum(C)I
    .registers 3
    .parameter "ch"

    .prologue
    .line 943
    const/16 v0, 0x30

    if-gt v0, p1, :cond_b

    const/16 v0, 0x39

    if-gt p1, v0, :cond_b

    .line 944
    add-int/lit8 v0, p1, -0x30

    .line 952
    :goto_a
    return v0

    .line 946
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p1, :cond_18

    const/16 v0, 0x66

    if-gt p1, v0, :cond_18

    .line 947
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 949
    :cond_18
    const/16 v0, 0x41

    if-gt v0, p1, :cond_25

    const/16 v0, 0x46

    if-gt p1, v0, :cond_25

    .line 950
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 952
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private checkDailerActivity()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 807
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 808
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 809
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 810
    if-eqz v0, :cond_1a

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_1c

    :cond_1a
    move v0, v1

    .line 825
    :goto_1b
    return v0

    .line 814
    :cond_1c
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 815
    const-string v3, "DftRilACtion Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v3, "com.android.contacts"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "com.sec.android.app.contacts.DialerTabActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "com.sec.android.app.contacts.DialerEntryActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "com.sec.android.app.contacts.ContactsEntryActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 822
    :cond_62
    const-string v1, "DftRilACtion Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top activity is dialer!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 823
    goto :goto_1b

    :cond_7c
    move v0, v1

    .line 825
    goto :goto_1b
.end method

.method private checkIncallScreen()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 830
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 831
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 832
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 833
    if-eqz v0, :cond_1a

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_1c

    :cond_1a
    move v0, v2

    .line 844
    :goto_1b
    return v0

    .line 837
    :cond_1c
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 838
    const-string v3, "DftRilACtion Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const-string v3, "com.android.phone.InCallScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 841
    const-string v2, "DftRilACtion Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top activity is InCallScreen!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 842
    goto :goto_1b

    :cond_5c
    move v0, v2

    .line 844
    goto :goto_1b
.end method

.method private goToSleep()V
    .registers 4

    .prologue
    .line 857
    const-string v0, "RilDFTACtion Service"

    const-string v1, "Sleep Start!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 859
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 861
    return-void
.end method

.method private hexStringToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "hexString"

    .prologue
    .line 467
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    .local v2, mSb:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-direct {v3, p1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 471
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    array-length v3, v0

    if-ge v1, v3, :cond_1d

    .line 472
    aget-byte v3, v0, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 475
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hextodec(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 935
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->charToNum(C)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4580

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->charToNum(C)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4380

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->charToNum(C)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4180

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->charToNum(C)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 938
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V
    .registers 5
    .parameter "event1"
    .parameter "event2"

    .prologue
    .line 361
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$2;-><init>(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 368
    return-void
.end method

.method private isSleep()V
    .registers 3

    .prologue
    .line 849
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 850
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->goToSleep()V

    .line 853
    :goto_11
    return-void

    .line 851
    :cond_12
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->wakeUp()V

    goto :goto_11
.end method

.method private keycmd()V
    .registers 24

    .prologue
    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 275
    .local v3, eventTime:J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/4 v7, 0x6

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 276
    .local v20, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/16 v7, 0x8

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 277
    .local v22, temphost:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->keymapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 278
    .local v15, host:Ljava/lang/String;
    const/4 v13, 0x0

    .line 281
    .local v13, UTS_BINARY:Z
    new-instance v16, Landroid/content/Intent;

    const-string v6, "android.intent.action.INPUT_KEY_EVENT"

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v16, i:Landroid/content/Intent;
    const-string v6, "DftRilACtion Service"

    const-string v7, "key Command"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v6, "KEYCODE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v6, "KEYHOLD"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    .line 290
    const/16 v6, 0x10

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v21

    .line 291
    .local v21, stateValue:S
    const/16 v6, 0x10

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v19

    .line 292
    .local v19, keycodeValue:S
    move/from16 v0, v21

    mul-int/lit16 v6, v0, 0x100

    add-int v6, v6, v19

    int-to-short v6, v6

    move-object/from16 v0, p0

    iput-short v6, v0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mDataDm:S

    .line 296
    const-string v6, "DftRilACtion Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key Command : UTS_BINATY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-nez v13, :cond_136

    .line 301
    const-string v6, "50"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    const-string v6, "00"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->checkDailerActivity()Z

    move-result v14

    .line 303
    .local v14, dialerStatus:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->checkIncallScreen()Z

    move-result v17

    .line 304
    .local v17, incallStatus:Z
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    .line 305
    if-nez v14, :cond_dd

    if-nez v17, :cond_dd

    .line 306
    const-string v6, "DFTRILservice"

    const-string v7, "START dialer--DIAL"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v18, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    const-string v7, "tel:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 308
    .local v18, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->startActivity(Landroid/content/Intent;)V

    .line 338
    .end local v14           #dialerStatus:Z
    .end local v17           #incallStatus:Z
    .end local v18           #intent:Landroid/content/Intent;
    :cond_dc
    :goto_dc
    return-void

    .line 311
    .restart local v14       #dialerStatus:Z
    .restart local v17       #incallStatus:Z
    :cond_dd
    if-eqz v14, :cond_f9

    if-nez v17, :cond_f9

    .line 313
    const-string v6, "DFTRILservice"

    const-string v7, "START dialer--CALL"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v18, Landroid/content/Intent;

    const-string v6, "com.android.contacts.DIALBUTTON"

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .restart local v18       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_dc

    .line 320
    .end local v18           #intent:Landroid/content/Intent;
    :cond_f9
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    move-wide v5, v3

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 321
    .local v2, down:Landroid/view/KeyEvent;
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    move-wide v6, v3

    move-wide v8, v3

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 322
    .local v5, up:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->injectKeyEvent(Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V

    goto :goto_dc

    .line 326
    .end local v2           #down:Landroid/view/KeyEvent;
    .end local v5           #up:Landroid/view/KeyEvent;
    .end local v14           #dialerStatus:Z
    .end local v17           #incallStatus:Z
    :cond_114
    const-string v6, "95"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_128

    const-string v6, "00"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_dc

    .line 328
    :cond_128
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    goto :goto_dc

    .line 334
    :cond_136
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    goto :goto_dc
.end method

.method private keymapping(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "temphost"

    .prologue
    .line 517
    iget-object v4, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/4 v5, 0x6

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, state:Ljava/lang/String;
    const/4 v1, 0x0

    .line 520
    .local v1, host:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {p1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 522
    .local v0, eventCode:I
    sparse-switch v0, :sswitch_data_12c

    .line 798
    const-string v1, "00"

    .line 802
    :goto_15
    return-object v1

    .line 525
    :sswitch_16
    const-string v1, "03"

    .line 526
    goto :goto_15

    .line 529
    :sswitch_19
    const-string v1, "43"

    .line 530
    goto :goto_15

    .line 533
    :sswitch_1c
    const-string v1, "05"

    .line 534
    goto :goto_15

    .line 537
    :sswitch_1f
    const-string v1, "06"

    .line 538
    goto :goto_15

    .line 541
    :sswitch_22
    const-string v1, "07"

    .line 542
    goto :goto_15

    .line 544
    :sswitch_25
    const-string v1, "08"

    .line 545
    goto :goto_15

    .line 547
    :sswitch_28
    const-string v1, "09"

    .line 548
    goto :goto_15

    .line 550
    :sswitch_2b
    const-string v1, "0A"

    .line 551
    goto :goto_15

    .line 553
    :sswitch_2e
    const-string v1, "0B"

    .line 554
    goto :goto_15

    .line 556
    :sswitch_31
    const-string v1, "0C"

    .line 557
    goto :goto_15

    .line 559
    :sswitch_34
    const-string v1, "0D"

    .line 560
    goto :goto_15

    .line 562
    :sswitch_37
    const-string v1, "0E"

    .line 563
    goto :goto_15

    .line 565
    :sswitch_3a
    const-string v1, "0F"

    .line 566
    goto :goto_15

    .line 568
    :sswitch_3d
    const-string v1, "10"

    .line 569
    goto :goto_15

    .line 572
    :sswitch_40
    const-string v1, "12"

    .line 573
    goto :goto_15

    .line 575
    :sswitch_43
    const-string v1, "11"

    .line 576
    goto :goto_15

    .line 579
    :sswitch_46
    const-string v1, "13"

    .line 580
    goto :goto_15

    .line 583
    :sswitch_49
    const-string v1, "14"

    .line 584
    goto :goto_15

    .line 587
    :sswitch_4c
    const-string v1, "15"

    .line 588
    goto :goto_15

    .line 591
    :sswitch_4f
    const-string v1, "16"

    .line 592
    goto :goto_15

    .line 596
    :sswitch_52
    const-string v1, "42"

    .line 597
    goto :goto_15

    .line 600
    :sswitch_55
    const-string v1, "42"

    .line 601
    goto :goto_15

    .line 604
    :sswitch_58
    const-string v1, "18"

    .line 605
    goto :goto_15

    .line 608
    :sswitch_5b
    const-string v1, "19"

    .line 609
    goto :goto_15

    .line 612
    :sswitch_5e
    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 614
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->isSleep()V

    goto :goto_15

    .line 621
    :cond_6a
    const-string v1, "1A"

    .line 622
    goto :goto_15

    .line 627
    :sswitch_6d
    const-string v1, "1B"

    .line 628
    goto :goto_15

    .line 632
    :sswitch_70
    const-string v1, "43"

    .line 633
    goto :goto_15

    .line 636
    :sswitch_73
    const-string v1, "52"

    .line 637
    goto :goto_15

    .line 640
    :sswitch_76
    const-string v1, "42"

    .line 641
    goto :goto_15

    .line 644
    :sswitch_79
    const-string v1, "04"

    .line 645
    goto :goto_15

    .line 648
    :sswitch_7c
    const-string v1, "52"

    .line 649
    goto :goto_15

    .line 652
    :sswitch_7f
    const-string v1, "3B"

    .line 653
    goto :goto_15

    .line 657
    :sswitch_82
    const-string v1, "1D"

    .line 658
    goto :goto_15

    .line 660
    :sswitch_85
    const-string v1, "1E"

    .line 661
    goto :goto_15

    .line 663
    :sswitch_88
    const-string v1, "1F"

    .line 664
    goto :goto_15

    .line 666
    :sswitch_8b
    const-string v1, "20"

    .line 667
    goto :goto_15

    .line 670
    :sswitch_8e
    const-string v1, "21"

    .line 671
    goto :goto_15

    .line 673
    :sswitch_91
    const-string v1, "22"

    .line 674
    goto :goto_15

    .line 676
    :sswitch_94
    const-string v1, "23"

    .line 677
    goto/16 :goto_15

    .line 679
    :sswitch_98
    const-string v1, "24"

    .line 680
    goto/16 :goto_15

    .line 682
    :sswitch_9c
    const-string v1, "25"

    .line 683
    goto/16 :goto_15

    .line 685
    :sswitch_a0
    const-string v1, "26"

    .line 686
    goto/16 :goto_15

    .line 688
    :sswitch_a4
    const-string v1, "27"

    .line 689
    goto/16 :goto_15

    .line 691
    :sswitch_a8
    const-string v1, "28"

    .line 692
    goto/16 :goto_15

    .line 695
    :sswitch_ac
    const-string v1, "29"

    .line 696
    goto/16 :goto_15

    .line 698
    :sswitch_b0
    const-string v1, "2A"

    .line 699
    goto/16 :goto_15

    .line 701
    :sswitch_b4
    const-string v1, "2B"

    .line 702
    goto/16 :goto_15

    .line 704
    :sswitch_b8
    const-string v1, "2C"

    .line 705
    goto/16 :goto_15

    .line 707
    :sswitch_bc
    const-string v1, "2D"

    .line 708
    goto/16 :goto_15

    .line 710
    :sswitch_c0
    const-string v1, "2E"

    .line 711
    goto/16 :goto_15

    .line 713
    :sswitch_c4
    const-string v1, "2F"

    .line 714
    goto/16 :goto_15

    .line 716
    :sswitch_c8
    const-string v1, "30"

    .line 717
    goto/16 :goto_15

    .line 719
    :sswitch_cc
    const-string v1, "31"

    .line 720
    goto/16 :goto_15

    .line 722
    :sswitch_d0
    const-string v1, "32"

    .line 723
    goto/16 :goto_15

    .line 725
    :sswitch_d4
    const-string v1, "33"

    .line 726
    goto/16 :goto_15

    .line 728
    :sswitch_d8
    const-string v1, "34"

    .line 729
    goto/16 :goto_15

    .line 731
    :sswitch_dc
    const-string v1, "35"

    .line 732
    goto/16 :goto_15

    .line 734
    :sswitch_e0
    const-string v1, "36"

    .line 735
    goto/16 :goto_15

    .line 739
    :sswitch_e4
    const-string v1, "5D"

    .line 740
    goto/16 :goto_15

    .line 742
    :sswitch_e8
    const-string v1, "54"

    .line 743
    goto/16 :goto_15

    .line 746
    :sswitch_ec
    const-string v1, "37"

    .line 747
    goto/16 :goto_15

    .line 749
    :sswitch_f0
    const-string v1, "3E"

    .line 750
    goto/16 :goto_15

    .line 752
    :sswitch_f4
    const-string v1, "38"

    .line 753
    goto/16 :goto_15

    .line 756
    :sswitch_f8
    const-string v1, "5E"

    .line 757
    goto/16 :goto_15

    .line 759
    :sswitch_fc
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 761
    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0, v2}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_15

    .line 766
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_114
    const-string v1, "39"

    .line 767
    goto/16 :goto_15

    .line 769
    :sswitch_118
    const-string v1, "5D"

    .line 770
    goto/16 :goto_15

    .line 776
    :sswitch_11c
    const-string v1, "49"

    .line 777
    goto/16 :goto_15

    .line 781
    :sswitch_120
    const-string v1, "4A"

    .line 782
    goto/16 :goto_15

    .line 786
    :sswitch_124
    const-string v1, "54"

    .line 787
    goto/16 :goto_15

    .line 791
    :sswitch_128
    const-string v1, "3D"

    .line 792
    goto/16 :goto_15

    .line 522
    :sswitch_data_12c
    .sparse-switch
        0xb -> :sswitch_fc
        0x1b -> :sswitch_128
        0x20 -> :sswitch_11c
        0x21 -> :sswitch_120
        0x23 -> :sswitch_40
        0x26 -> :sswitch_124
        0x2a -> :sswitch_43
        0x30 -> :sswitch_22
        0x31 -> :sswitch_25
        0x32 -> :sswitch_28
        0x33 -> :sswitch_2b
        0x34 -> :sswitch_2e
        0x35 -> :sswitch_31
        0x36 -> :sswitch_34
        0x37 -> :sswitch_37
        0x38 -> :sswitch_3a
        0x39 -> :sswitch_3d
        0x50 -> :sswitch_1c
        0x51 -> :sswitch_1f
        0x52 -> :sswitch_70
        0x53 -> :sswitch_55
        0x54 -> :sswitch_58
        0x55 -> :sswitch_5b
        0x5b -> :sswitch_7c
        0x5c -> :sswitch_79
        0x63 -> :sswitch_46
        0x64 -> :sswitch_49
        0x65 -> :sswitch_4c
        0x66 -> :sswitch_4f
        0x8c -> :sswitch_52
        0x8d -> :sswitch_6d
        0x95 -> :sswitch_5e
        0x97 -> :sswitch_73
        0x98 -> :sswitch_16
        0xb5 -> :sswitch_e8
        0xb6 -> :sswitch_7f
        0xc0 -> :sswitch_bc
        0xc1 -> :sswitch_c8
        0xc2 -> :sswitch_dc
        0xc3 -> :sswitch_cc
        0xc4 -> :sswitch_9c
        0xc5 -> :sswitch_b4
        0xc6 -> :sswitch_b8
        0xc7 -> :sswitch_d4
        0xc8 -> :sswitch_ec
        0xca -> :sswitch_e4
        0xde -> :sswitch_118
        0xe1 -> :sswitch_114
        0xe3 -> :sswitch_82
        0xe4 -> :sswitch_c4
        0xe5 -> :sswitch_8b
        0xe6 -> :sswitch_91
        0xe7 -> :sswitch_94
        0xe8 -> :sswitch_98
        0xe9 -> :sswitch_a0
        0xea -> :sswitch_a4
        0xeb -> :sswitch_a8
        0xec -> :sswitch_c0
        0xed -> :sswitch_e0
        0xee -> :sswitch_d8
        0xef -> :sswitch_88
        0xf0 -> :sswitch_d0
        0xf1 -> :sswitch_85
        0xf2 -> :sswitch_b0
        0xf3 -> :sswitch_ac
        0xf4 -> :sswitch_76
        0xf5 -> :sswitch_f4
        0xf6 -> :sswitch_19
        0xf7 -> :sswitch_f0
        0xf8 -> :sswitch_8e
        0xfe -> :sswitch_f8
    .end sparse-switch
.end method

.method private keytrace()V
    .registers 6

    .prologue
    .line 342
    const-string v2, "DftRilACtion Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keytrace : mCommand"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, temphost:Ljava/lang/String;
    const-string v2, "DftRilACtion Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keytrace : temphost"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v2, "01"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 349
    const-string v2, "DftRilACtion Service"

    const-string v3, "keytraceStart"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.keytracer.keytraceStart"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    :goto_54
    return-void

    .line 355
    .end local v0           #i:Landroid/content/Intent;
    :cond_55
    const-string v2, "DftRilACtion Service"

    const-string v3, "keytraceStop"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.keytracer.keytraceStop"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_54
.end method

.method private makeSMS(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "smsBox"
    .parameter "smsNumber"
    .parameter "smsMessage"

    .prologue
    const/4 v4, 0x1

    .line 480
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 482
    .local v2, valuesSMSInBox:Landroid/content/ContentValues;
    const-string v3, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    const-string v3, "date"

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 485
    const-string v3, "address"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v3, "body"

    const/4 v4, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :try_start_32
    invoke-virtual {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 491
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mAttr:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    .line 494
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_55} :catch_56

    .line 504
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_55
    return-void

    .line 495
    :catch_56
    move-exception v0

    .line 496
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "Samsung TEST"

    const-string v4, "Catch a SQLiteException when insert in SMS: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unable to open database file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 502
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    goto :goto_55

    .line 500
    :cond_6f
    throw v0
.end method

.method private microSdCardDetect()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 418
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, mState:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 420
    :cond_15
    const-string v1, "\u0002"

    iput-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    .line 421
    const-string v1, "SDdetect<swmount>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ok:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0, v4}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    .line 435
    :goto_36
    return-void

    .line 425
    :cond_37
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 426
    :cond_4f
    const-string v1, "\u0001"

    iput-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    .line 427
    const-string v1, "SDdetect<swunmount>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ok:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0, v4}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    goto :goto_36

    .line 431
    :cond_71
    const-string v1, "\u0000"

    iput-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    .line 432
    const-string v1, "SDdetect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nok:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {p0, v4}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    goto :goto_36
.end method

.method private parsing()V
    .registers 7

    .prologue
    const/4 v5, 0x6

    .line 151
    iget-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, mTemp:Ljava/lang/String;
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 180
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 181
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_26

    const v3, 0xea60

    invoke-direct {p0, v3}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->wakeUp(I)Z

    .line 186
    :cond_26
    const-string v3, "04"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 190
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->keycmd()V

    .line 195
    :cond_31
    const-string v3, "01"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 199
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->smsCmd()V

    .line 204
    :cond_3c
    const-string v3, "02"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 208
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->microSdCardDetect()V

    .line 213
    :cond_47
    const-string v3, "00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 215
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v2, readDataIntent:Landroid/content/Intent;
    const-string v3, "com.android.samsungtest.DataCreate"

    const-string v4, "com.android.samsungtest.CurrentDataState.ReadDataSupportService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v3, "CMD"

    iget v4, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCmd:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v3, "ATTR"

    iget v4, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mAttr:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v2}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 224
    .end local v2           #readDataIntent:Landroid/content/Intent;
    :cond_6c
    const-string v3, "05"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 230
    iget-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    .line 233
    const-string v3, "0f00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 234
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchclickdown()V

    .line 237
    :cond_95
    const-string v3, "1000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 238
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchmove()V

    .line 241
    :cond_a0
    const-string v3, "1100"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 242
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchup()V

    .line 245
    :cond_ab
    const-string v3, "1200"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 246
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchlong()V

    .line 251
    :cond_b6
    const-string v3, "03"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 253
    const-string v3, "DftRilACtion Service"

    const-string v4, "keytrace Command 03 keytrace"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->keytrace()V

    .line 257
    :cond_c8
    return-void
.end method

.method private sendResultCommand(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action.RilDftCommandSend"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    const-string v1, "COMMAND"

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    const-string v1, "TEST_COMMAND"

    iget v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCmd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    if-nez p1, :cond_28

    .line 1156
    const-string v1, "ATTR"

    iget v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mAttr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1157
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1179
    :cond_24
    :goto_24
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1180
    return-void

    .line 1159
    :cond_28
    if-ne p1, v3, :cond_46

    .line 1160
    const-string v1, "ATTR"

    iget v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mAttr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    const-string v1, "DATA"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    const-string v1, "LENGTH"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_24

    .line 1164
    :cond_46
    const/4 v1, 0x2

    if-ne p1, v1, :cond_56

    .line 1165
    const-string v1, "ATTR"

    const/16 v2, 0xfe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1166
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_24

    .line 1168
    :cond_56
    const/4 v1, 0x3

    if-ne p1, v1, :cond_66

    .line 1169
    const-string v1, "ATTR"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1170
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_24

    .line 1172
    :cond_66
    const/4 v1, 0x4

    if-ne p1, v1, :cond_24

    .line 1173
    const-string v1, "COMMAND"

    const-string v2, "result_dm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    const-string v1, "ATTR"

    iget v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mAttr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1175
    const-string v1, "DATA"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const-string v1, "LENGTH"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_24
.end method

.method private smsCmd()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 438
    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, smsBox:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, smsData:[Ljava/lang/String;
    const-string v2, "bustle.jang"

    aget-object v3, v1, v5

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v2, "bustle.jang"

    aget-object v3, v1, v4

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v2, "bustle.jang"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v2, "00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 446
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    aget-object v3, v1, v5

    aget-object v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->makeSMS(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v2, "MMI CHECK : SMS Inbox Saved!"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 464
    :cond_4e
    :goto_4e
    return-void

    .line 449
    :cond_4f
    const-string v2, "01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 451
    sget-object v2, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    aget-object v3, v1, v5

    aget-object v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->makeSMS(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v2, "MMI CHECK : SMS Draft Saved!"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4e

    .line 454
    :cond_6a
    const-string v2, "02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 456
    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    aget-object v3, v1, v5

    aget-object v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->makeSMS(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v2, "MMI CHECK : SMS Outbox Saved!"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4e

    .line 459
    :cond_85
    const-string v2, "03"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 461
    sget-object v2, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    aget-object v3, v1, v5

    aget-object v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->makeSMS(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v2, "MMI CHECK : SMS Sentbox Saved!"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4e
.end method

.method private swapCordinate(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "cordinate"

    .prologue
    const/4 v4, 0x2

    .line 926
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, temp1:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, temp2:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, swapcord:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->hextodec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private touchclickdown()V
    .registers 7

    .prologue
    const/16 v3, 0xe

    const/4 v5, 0x1

    .line 900
    iget-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 901
    iget-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 903
    const-string v2, "DftRilACtion Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x1_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v2, "DftRilACtion Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "y1_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-direct {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->swapCordinate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x1_value:Ljava/lang/String;

    .line 908
    invoke-direct {p0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->swapCordinate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y1_value:Ljava/lang/String;

    .line 912
    const-string v0, "DftRilACtion Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x1_value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x1_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string v0, "DftRilACtion Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "y1_value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y1_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iput v5, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    .line 918
    const-string v0, "DftRilACtion Service"

    const-string v1, "touch click down"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-direct {p0, v5}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    .line 922
    return-void
.end method

.method private touchlong()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1123
    iget v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    if-ne v0, v1, :cond_8

    .line 1124
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    .line 1127
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    .line 1128
    return-void
.end method

.method private touchmove()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 958
    iget v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    if-ne v0, v1, :cond_8

    .line 959
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    .line 962
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    .line 963
    return-void
.end method

.method private touchup()V
    .registers 10

    .prologue
    const/16 v5, 0xe

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 967
    const-string v0, "DftRilACtion Service"

    const-string v1, "touch click up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string v0, "00"

    .line 969
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INPUT_TOUCH_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    iget v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    if-eqz v1, :cond_12c

    .line 1053
    iget v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    if-ne v1, v7, :cond_58

    .line 1054
    const-string v1, "00"

    .line 1056
    const-string v2, "TOUCHSTATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    const-string v1, "X1"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x1_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    const-string v1, "Y1"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y1_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    const-string v1, "X2"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const-string v1, "Y2"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    :cond_3f
    :goto_3f
    iput v8, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    .line 1099
    const-string v1, ""

    iput-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x1_value:Ljava/lang/String;

    .line 1100
    const-string v1, ""

    iput-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y1_value:Ljava/lang/String;

    .line 1101
    const-string v1, ""

    iput-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x2_value:Ljava/lang/String;

    .line 1102
    const-string v1, ""

    iput-object v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y2_value:Ljava/lang/String;

    .line 1105
    invoke-direct {p0, v7}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    .line 1106
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1118
    :goto_57
    return-void

    .line 1062
    :cond_58
    iget v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_102

    .line 1064
    const-string v1, "02"

    .line 1070
    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1071
    iget-object v3, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    const/16 v4, 0x12

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1073
    const-string v4, "DftRilACtion Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1_value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const-string v4, "DftRilACtion Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "y1_value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-direct {p0, v2}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->swapCordinate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x2_value:Ljava/lang/String;

    .line 1077
    invoke-direct {p0, v3}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->swapCordinate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y2_value:Ljava/lang/String;

    .line 1079
    const-string v2, "DftRilACtion Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x1_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x2_value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string v2, "DftRilACtion Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "y1_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y2_value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const-string v2, "TOUCHSTATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    const-string v1, "X1"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x1_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    const-string v1, "Y1"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y1_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    const-string v1, "X2"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x2_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    const-string v1, "Y2"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y2_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 1087
    :cond_102
    iget v1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3f

    .line 1088
    const-string v1, "01"

    .line 1090
    const-string v2, "TOUCHSTATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    const-string v1, "X1"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x1_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    const-string v1, "Y1"

    iget-object v2, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y1_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const-string v1, "X2"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const-string v1, "Y2"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 1111
    :cond_12c
    invoke-direct {p0, v7}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V

    .line 1112
    iput v8, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->touchMoveStatus:I

    .line 1113
    const-string v0, ""

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x1_value:Ljava/lang/String;

    .line 1114
    const-string v0, ""

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y1_value:Ljava/lang/String;

    .line 1115
    const-string v0, ""

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->x2_value:Ljava/lang/String;

    .line 1116
    const-string v0, ""

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->y2_value:Ljava/lang/String;

    goto/16 :goto_57
.end method

.method private wakeUp()V
    .registers 4

    .prologue
    .line 864
    const-string v0, "RilDFTACtion Service"

    const-string v1, "wake up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 869
    const v1, 0x3000001a

    const-string v2, "wake_up"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 874
    sget-object v0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 876
    return-void
.end method

.method private wakeUp(I)Z
    .registers 5
    .parameter

    .prologue
    .line 879
    const-string v0, "RilDFTACtion Service"

    const-string v1, "wake up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 884
    const v1, 0x3000001a

    const-string v2, "wake_up"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 889
    sget-object v0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 890
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 133
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mDisplay:Landroid/view/Display;

    .line 134
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v1, -0x1

    .line 137
    const-string v0, "COMMAND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCommand:Ljava/lang/String;

    .line 138
    const-string v0, "CMD"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mCmd:I

    .line 139
    const-string v0, "ATTR"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mAttr:I

    .line 141
    const-string v0, "RilACtion Service"

    const-string v1, "get Command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->parsing()V

    .line 145
    const/4 v0, 0x0

    return v0
.end method
