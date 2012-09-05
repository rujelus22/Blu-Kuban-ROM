.class Lcom/android/sprintmenu/TerminalMode$OemCommands;
.super Ljava/lang/Object;
.source "TerminalMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/TerminalMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# instance fields
.field final OEM_HIDDEN_FUNCTAG:C

.field final OEM_HM_END_TEST_CALL_MESSAGE:C

.field final OEM_HM_TEST_CALL_MESSAGE:C

.field final OEM_HM_TYPE_TEST_CALL:C

.field final OEM_SERVM_FUNCTAG:C

.field final OEM_SM_ACTION:C

.field final OEM_SM_DUMMY:C

.field final OEM_SM_END_MODE_MESSAGE:C

.field final OEM_SM_ENTER_MODE_MESSAGE:C

.field final OEM_SM_PROCESS_KEY_MESSAGE:C

.field final OEM_SM_QUERY:C

.field final OEM_SM_TYPE_MONITOR:C

.field final OEM_SM_TYPE_NAM:C

.field final OEM_SM_TYPE_OP_SP_MODE:C

.field final OEM_SM_TYPE_PHONE_TEST:C

.field final OEM_SM_TYPE_SUB_CDMA_TESTMODE_ENTER:C

.field final OEM_SM_TYPE_SUB_ENTER:C

.field final OEM_SM_TYPE_SUB_NAM_ADVANCED_EDIT:C

.field final OEM_SM_TYPE_SUB_NAM_BASIC_EDIT:C

.field final OEM_SM_TYPE_SUB_NAM_EDIT:C

.field final OEM_SM_TYPE_SUB_SW_VERSION_ENTER:C

.field final OEM_SM_TYPE_TEST_AUTO:C

.field final OEM_SM_TYPE_TEST_MANUAL:C

.field final synthetic this$0:Lcom/android/sprintmenu/TerminalMode;


# direct methods
.method private constructor <init>(Lcom/android/sprintmenu/TerminalMode;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 361
    iput-object p1, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->this$0:Lcom/android/sprintmenu/TerminalMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-char v1, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SERVM_FUNCTAG:C

    .line 364
    const/16 v0, 0x51

    iput-char v0, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_HIDDEN_FUNCTAG:C

    .line 367
    iput-char v2, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_DUMMY:C

    .line 368
    iput-char v1, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_ENTER_MODE_MESSAGE:C

    .line 369
    iput-char v3, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_END_MODE_MESSAGE:C

    .line 370
    iput-char v4, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_PROCESS_KEY_MESSAGE:C

    .line 373
    iput-char v1, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_TEST_MANUAL:C

    .line 374
    iput-char v3, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_TEST_AUTO:C

    .line 375
    iput-char v4, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_NAM:C

    .line 376
    iput-char v5, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_MONITOR:C

    .line 377
    const/4 v0, 0x5

    iput-char v0, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_PHONE_TEST:C

    .line 378
    const/4 v0, 0x6

    iput-char v0, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_OP_SP_MODE:C

    .line 381
    iput-char v5, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_HM_TEST_CALL_MESSAGE:C

    .line 382
    const/16 v0, 0x9

    iput-char v0, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_HM_END_TEST_CALL_MESSAGE:C

    .line 385
    const/4 v0, 0x7

    iput-char v0, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_HM_TYPE_TEST_CALL:C

    .line 388
    iput-char v2, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_SUB_ENTER:C

    .line 389
    iput-char v1, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_SUB_SW_VERSION_ENTER:C

    .line 392
    iput-char v2, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_SUB_CDMA_TESTMODE_ENTER:C

    .line 395
    iput-char v3, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_SUB_NAM_EDIT:C

    .line 396
    iput-char v1, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_SUB_NAM_BASIC_EDIT:C

    .line 397
    iput-char v4, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_TYPE_SUB_NAM_ADVANCED_EDIT:C

    .line 400
    iput-char v2, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_ACTION:C

    .line 401
    iput-char v1, p0, Lcom/android/sprintmenu/TerminalMode$OemCommands;->OEM_SM_QUERY:C

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sprintmenu/TerminalMode;Lcom/android/sprintmenu/TerminalMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/TerminalMode$OemCommands;-><init>(Lcom/android/sprintmenu/TerminalMode;)V

    return-void
.end method


# virtual methods
.method getServMEnterData(CCCC)[B
    .registers 11
    .parameter "svcMode"
    .parameter "modeType"
    .parameter "subType"
    .parameter "query"

    .prologue
    .line 404
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 405
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 406
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x7

    .line 408
    .local v3, fileSize:C
    const/4 v4, 0x1

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 409
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 410
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 411
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 412
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 413
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_23

    .line 418
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_22
    return-object v4

    .line 414
    :catch_23
    move-exception v2

    .line 415
    .local v2, e:Ljava/io/IOException;
    const-string v4, "TerminalMode"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v4, 0x0

    goto :goto_22
.end method

.method setEndModeData(CC)[B
    .registers 9
    .parameter "svcMode"
    .parameter "modeType"

    .prologue
    .line 441
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 442
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 443
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 445
    .local v3, fileSize:I
    const/4 v4, 0x1

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 446
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 447
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 448
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_1d

    .line 453
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_1c
    return-object v4

    .line 449
    :catch_1d
    move-exception v2

    .line 450
    .local v2, e:Ljava/io/IOException;
    const-string v4, "TerminalMode"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v4, 0x0

    goto :goto_1c
.end method

.method setEndTestCallMode(CCC)[B
    .registers 10
    .parameter "svcMode"
    .parameter "modeType"
    .parameter "subType"

    .prologue
    .line 473
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 474
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 475
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 477
    .local v3, fileSize:C
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 478
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 479
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 480
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_1e

    .line 485
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_1d
    return-object v4

    .line 481
    :catch_1e
    move-exception v2

    .line 482
    .local v2, e:Ljava/io/IOException;
    const-string v4, "TerminalMode"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method setPressKeyData(CIC)[B
    .registers 11
    .parameter "svcMode"
    .parameter "keycode"
    .parameter "query"

    .prologue
    .line 423
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 424
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 425
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x6

    .line 426
    .local v3, fileSize:I
    const-string v4, "TerminalMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keycode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v4, 0x1

    :try_start_24
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 429
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 430
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 431
    int-to-char v4, p2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 432
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_39

    .line 437
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_38
    return-object v4

    .line 433
    :catch_39
    move-exception v2

    .line 434
    .local v2, e:Ljava/io/IOException;
    const-string v4, "TerminalMode"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v4, 0x0

    goto :goto_38
.end method

.method setTestCallMode(CCC)[B
    .registers 10
    .parameter "svcMode"
    .parameter "modeType"
    .parameter "subType"

    .prologue
    .line 457
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 458
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 459
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 461
    .local v3, fileSize:C
    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 462
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 463
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 464
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_1e

    .line 469
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_1d
    return-object v4

    .line 465
    :catch_1e
    move-exception v2

    .line 466
    .local v2, e:Ljava/io/IOException;
    const-string v4, "TerminalMode"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v4, 0x0

    goto :goto_1d
.end method
