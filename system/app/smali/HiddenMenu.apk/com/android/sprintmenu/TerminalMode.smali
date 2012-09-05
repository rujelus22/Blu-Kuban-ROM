.class public Lcom/android/sprintmenu/TerminalMode;
.super Landroid/app/Activity;
.source "TerminalMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sprintmenu/TerminalMode$OemCommands;,
        Lcom/android/sprintmenu/TerminalMode$RemoveWindow;
    }
.end annotation


# static fields
.field private static final SIO_MODE:[Ljava/lang/String;


# instance fields
.field public active_code:I

.field private alt_key_pressed:Z

.field private bAddedView:Z

.field private bSecondary:Z

.field bwaiting:Z

.field private currentModeTypeForEnd:C

.field private currentSVMode:C

.field private isSecondary:Z

.field private key_enable:Z

.field private list:Landroid/widget/ListView;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mDialogText:Landroid/widget/TextView;

.field public mHandler:Landroid/os/Handler;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mKeyValue:Landroid/widget/EditText;

.field private mLayout1:Landroid/widget/LinearLayout;

.field private mNeedQuery:Z

.field private mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

.field private mPrevKey:I

.field private mPrevTime:J

.field private mQueryTimes:I

.field private mRemoveWindow:Lcom/android/sprintmenu/TerminalMode$RemoveWindow;

.field private mRssiShowing:Z

.field private mStrings:[Ljava/lang/String;

.field private mWatcher:Landroid/text/TextWatcher;

.field mWindowHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mkeyStringType:Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private selectedString:I

.field private total_line:I

.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "U1_DM   USB2_NULL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "U1_HFK   USB2_DM"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/sprintmenu/TerminalMode;->SIO_MODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;

    .line 81
    iput v3, p0, Lcom/android/sprintmenu/TerminalMode;->active_code:I

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/sprintmenu/TerminalMode;->selectedString:I

    .line 83
    iput v3, p0, Lcom/android/sprintmenu/TerminalMode;->total_line:I

    .line 84
    iput-boolean v4, p0, Lcom/android/sprintmenu/TerminalMode;->key_enable:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/sprintmenu/TerminalMode;->mNeedQuery:Z

    .line 86
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/sprintmenu/TerminalMode;->mQueryTimes:I

    .line 87
    iput-boolean v3, p0, Lcom/android/sprintmenu/TerminalMode;->alt_key_pressed:Z

    .line 89
    iput v3, p0, Lcom/android/sprintmenu/TerminalMode;->value:I

    .line 91
    iput-boolean v3, p0, Lcom/android/sprintmenu/TerminalMode;->bSecondary:Z

    .line 92
    iput-boolean v3, p0, Lcom/android/sprintmenu/TerminalMode;->isSecondary:Z

    .line 100
    iput-object v5, p0, Lcom/android/sprintmenu/TerminalMode;->phone:Lcom/android/internal/telephony/Phone;

    .line 101
    iput-object v5, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    .line 124
    iput-boolean v4, p0, Lcom/android/sprintmenu/TerminalMode;->bwaiting:Z

    .line 125
    iput-boolean v3, p0, Lcom/android/sprintmenu/TerminalMode;->bAddedView:Z

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mWindowHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Lcom/android/sprintmenu/TerminalMode$RemoveWindow;

    invoke-direct {v0, p0, v5}, Lcom/android/sprintmenu/TerminalMode$RemoveWindow;-><init>(Lcom/android/sprintmenu/TerminalMode;Lcom/android/sprintmenu/TerminalMode$1;)V

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mRemoveWindow:Lcom/android/sprintmenu/TerminalMode$RemoveWindow;

    .line 140
    new-instance v0, Lcom/android/sprintmenu/TerminalMode$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/TerminalMode$1;-><init>(Lcom/android/sprintmenu/TerminalMode;)V

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    .line 1058
    new-instance v0, Lcom/android/sprintmenu/TerminalMode$4;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/TerminalMode$4;-><init>(Lcom/android/sprintmenu/TerminalMode;)V

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private AnalisysString()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x64

    const/4 v3, 0x0

    const/16 v2, 0x3e9

    .line 585
    invoke-direct {p0}, Lcom/android/sprintmenu/TerminalMode;->Update()V

    .line 587
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v1, "Service Menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 589
    const-string v0, "TerminalMode"

    const-string v1, "Service Menu !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget v0, p0, Lcom/android/sprintmenu/TerminalMode;->mQueryTimes:I

    if-lez v0, :cond_2d

    .line 592
    iput-boolean v3, p0, Lcom/android/sprintmenu/TerminalMode;->mNeedQuery:Z

    .line 593
    iget v0, p0, Lcom/android/sprintmenu/TerminalMode;->mQueryTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/sprintmenu/TerminalMode;->mQueryTimes:I

    .line 596
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 614
    :goto_2c
    return-void

    .line 600
    :cond_2d
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    const-string v0, "TerminalMode"

    const-string v1, "Service Menu read DONE!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 604
    :cond_3a
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v1, "End service mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 606
    const-string v0, "TerminalMode"

    const-string v1, "End Service Mode !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    invoke-virtual {p0}, Lcom/android/sprintmenu/TerminalMode;->finish()V

    goto :goto_2c

    .line 612
    :cond_56
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2c
.end method

.method private KeyValueInputDisplay(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 559
    if-eqz p1, :cond_9

    .line 561
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mLayout1:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    :goto_8
    return-void

    .line 565
    :cond_9
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mLayout1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method private ParseKeyCodeToIPCDefineValue(I)C
    .registers 6
    .parameter "key"

    .prologue
    const/16 v1, 0x64

    const/16 v0, 0x63

    const/16 v3, 0x5c

    const/16 v2, 0x53

    .line 618
    sparse-switch p1, :sswitch_data_56

    .line 650
    const/4 v0, 0x0

    :goto_c
    :sswitch_c
    return v0

    .line 620
    :sswitch_d
    const/16 v0, 0x30

    goto :goto_c

    .line 621
    :sswitch_10
    const/16 v0, 0x31

    goto :goto_c

    .line 622
    :sswitch_13
    const/16 v0, 0x32

    goto :goto_c

    .line 623
    :sswitch_16
    const/16 v0, 0x33

    goto :goto_c

    .line 624
    :sswitch_19
    const/16 v0, 0x34

    goto :goto_c

    .line 625
    :sswitch_1c
    const/16 v0, 0x35

    goto :goto_c

    .line 626
    :sswitch_1f
    const/16 v0, 0x36

    goto :goto_c

    .line 627
    :sswitch_22
    const/16 v0, 0x37

    goto :goto_c

    .line 628
    :sswitch_25
    const/16 v0, 0x38

    goto :goto_c

    .line 629
    :sswitch_28
    const/16 v0, 0x39

    goto :goto_c

    .line 630
    :sswitch_2b
    const/16 v0, 0x41

    goto :goto_c

    .line 631
    :sswitch_2e
    const/16 v0, 0x42

    goto :goto_c

    .line 632
    :sswitch_31
    const/16 v0, 0x43

    goto :goto_c

    .line 633
    :sswitch_34
    const/16 v0, 0x44

    goto :goto_c

    .line 634
    :sswitch_37
    const/16 v0, 0x45

    goto :goto_c

    .line 635
    :sswitch_3a
    const/16 v0, 0x46

    goto :goto_c

    .line 636
    :sswitch_3d
    const/16 v0, 0x23

    goto :goto_c

    .line 637
    :sswitch_40
    const/16 v0, 0x2a

    goto :goto_c

    :sswitch_43
    move v0, v1

    .line 639
    goto :goto_c

    .line 640
    :sswitch_45
    const/16 v0, 0x65

    goto :goto_c

    .line 641
    :sswitch_48
    const/16 v0, 0x66

    goto :goto_c

    :sswitch_4b
    move v0, v1

    .line 643
    goto :goto_c

    :sswitch_4d
    move v0, v2

    .line 644
    goto :goto_c

    :sswitch_4f
    move v0, v3

    .line 645
    goto :goto_c

    :sswitch_51
    move v0, v2

    .line 646
    goto :goto_c

    :sswitch_53
    move v0, v3

    .line 647
    goto :goto_c

    .line 618
    nop

    :sswitch_data_56
    .sparse-switch
        0x7 -> :sswitch_d
        0x8 -> :sswitch_10
        0x9 -> :sswitch_13
        0xa -> :sswitch_16
        0xb -> :sswitch_19
        0xc -> :sswitch_1c
        0xd -> :sswitch_1f
        0xe -> :sswitch_22
        0xf -> :sswitch_25
        0x10 -> :sswitch_28
        0x11 -> :sswitch_40
        0x12 -> :sswitch_3d
        0x13 -> :sswitch_c
        0x14 -> :sswitch_43
        0x15 -> :sswitch_45
        0x16 -> :sswitch_48
        0x17 -> :sswitch_4d
        0x18 -> :sswitch_c
        0x19 -> :sswitch_4b
        0x1d -> :sswitch_2b
        0x1e -> :sswitch_2e
        0x1f -> :sswitch_31
        0x20 -> :sswitch_34
        0x21 -> :sswitch_37
        0x22 -> :sswitch_3a
        0x42 -> :sswitch_51
        0x43 -> :sswitch_4f
        0x52 -> :sswitch_53
    .end sparse-switch
.end method

.method private SendData(CCCIC)V
    .registers 10
    .parameter "svcMode"
    .parameter "modetype"
    .parameter "subtype"
    .parameter "keycode"
    .parameter "query"

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, data:[B
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/sprintmenu/TerminalMode;->selectedString:I

    .line 504
    packed-switch p1, :pswitch_data_68

    .line 541
    :pswitch_7
    const-string v1, "TerminalMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch err - default : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_1f
    iput-char p1, p0, Lcom/android/sprintmenu/TerminalMode;->currentSVMode:C

    .line 547
    if-nez v0, :cond_59

    .line 549
    const-string v1, "TerminalMode"

    const-string v2, " err - data is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_2a
    return-void

    .line 508
    :pswitch_2b
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v1, p1, p2, p3, p5}, Lcom/android/sprintmenu/TerminalMode$OemCommands;->getServMEnterData(CCCC)[B

    move-result-object v0

    .line 510
    iput-char p2, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    goto :goto_1f

    .line 515
    :pswitch_34
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v1, p1, p2}, Lcom/android/sprintmenu/TerminalMode$OemCommands;->setEndModeData(CC)[B

    move-result-object v0

    .line 517
    goto :goto_1f

    .line 521
    :pswitch_3b
    const-string v1, "TerminalMode"

    const-string v2, "SendData -setPressKeyData "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v1, p1, p4, p5}, Lcom/android/sprintmenu/TerminalMode$OemCommands;->setPressKeyData(CIC)[B

    move-result-object v0

    .line 525
    goto :goto_1f

    .line 529
    :pswitch_49
    iput-char p2, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    .line 530
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/sprintmenu/TerminalMode$OemCommands;->setTestCallMode(CCC)[B

    move-result-object v0

    .line 532
    goto :goto_1f

    .line 536
    :pswitch_52
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/sprintmenu/TerminalMode$OemCommands;->setEndTestCallMode(CCC)[B

    move-result-object v0

    .line 538
    goto :goto_1f

    .line 553
    :cond_59
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_2a

    .line 504
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_34
        :pswitch_3b
        :pswitch_49
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_52
    .end packed-switch
.end method

.method private Update()V
    .registers 6

    .prologue
    .line 491
    const-string v0, "TerminalMode"

    const-string v1, "Update++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030013

    const v3, 0x7f07002a

    iget-object v4, p0, Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 493
    const-string v0, "TerminalMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected String Index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/sprintmenu/TerminalMode;->selectedString:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->key_enable:Z

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->KeyValueInputDisplay(Z)V

    .line 496
    return-void
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/TerminalMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/sprintmenu/TerminalMode;->removeWindow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/sprintmenu/TerminalMode;)C
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-char v0, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    return v0
.end method

.method static synthetic access$1200(Lcom/android/sprintmenu/TerminalMode;CCCIC)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    return-void
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/sprintmenu/TerminalMode;->SIO_MODE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/sprintmenu/TerminalMode;)Landroid/view/WindowManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/sprintmenu/TerminalMode;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/sprintmenu/TerminalMode;->bAddedView:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/sprintmenu/TerminalMode;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/sprintmenu/TerminalMode;->mNeedQuery:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/sprintmenu/TerminalMode;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/sprintmenu/TerminalMode;->mQueryTimes:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/TerminalMode;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/sprintmenu/TerminalMode;->total_line:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/sprintmenu/TerminalMode;I)C
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/TerminalMode;->ParseKeyCodeToIPCDefineValue(I)C

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/sprintmenu/TerminalMode;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/sprintmenu/TerminalMode;->total_line:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/sprintmenu/TerminalMode;C)C
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/TerminalMode;->parseCharToKeyCode(C)C

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/sprintmenu/TerminalMode;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->key_enable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/sprintmenu/TerminalMode;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/sprintmenu/TerminalMode;->key_enable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/sprintmenu/TerminalMode;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->mRssiShowing:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/sprintmenu/TerminalMode;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/sprintmenu/TerminalMode;->mRssiShowing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/sprintmenu/TerminalMode;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/sprintmenu/TerminalMode;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/sprintmenu/TerminalMode;->selectedString:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/sprintmenu/TerminalMode;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/sprintmenu/TerminalMode;->selectedString:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$RemoveWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mRemoveWindow:Lcom/android/sprintmenu/TerminalMode$RemoveWindow;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/sprintmenu/TerminalMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/sprintmenu/TerminalMode;->AnalisysString()V

    return-void
.end method

.method private parseCharToKeyCode(C)C
    .registers 3
    .parameter "key"

    .prologue
    .line 656
    packed-switch p1, :pswitch_data_28

    .line 674
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 658
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_4

    .line 659
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_4

    .line 660
    :pswitch_a
    const/16 v0, 0x9

    goto :goto_4

    .line 661
    :pswitch_d
    const/16 v0, 0xa

    goto :goto_4

    .line 662
    :pswitch_10
    const/16 v0, 0xb

    goto :goto_4

    .line 663
    :pswitch_13
    const/16 v0, 0xc

    goto :goto_4

    .line 664
    :pswitch_16
    const/16 v0, 0xd

    goto :goto_4

    .line 665
    :pswitch_19
    const/16 v0, 0xe

    goto :goto_4

    .line 666
    :pswitch_1c
    const/16 v0, 0xf

    goto :goto_4

    .line 667
    :pswitch_1f
    const/16 v0, 0x10

    goto :goto_4

    .line 669
    :pswitch_22
    const/16 v0, 0x12

    goto :goto_4

    .line 670
    :pswitch_25
    const/16 v0, 0x11

    goto :goto_4

    .line 656
    :pswitch_data_28
    .packed-switch 0x23
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_25
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method private removeWindow()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    return-void
.end method

.method private updateModemStatus()V
    .registers 9

    .prologue
    .line 861
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 862
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 864
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 865
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 866
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 867
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 868
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 869
    iget-object v4, p0, Lcom/android/sprintmenu/TerminalMode;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x68

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_46
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2e} :catch_35

    .line 873
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_4e

    .line 874
    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_50

    .line 876
    :goto_34
    return-void

    .line 870
    :catch_35
    move-exception v2

    .line 871
    .local v2, e:Ljava/io/IOException;
    :try_start_36
    const-string v4, "TerminalMode"

    const-string v5, "error in writing EVENT_GET_DEVICE_IDENTITY_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    .line 873
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_52

    .line 874
    :goto_40
    :try_start_40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_34

    :catch_44
    move-exception v4

    goto :goto_34

    .line 873
    .end local v2           #e:Ljava/io/IOException;
    :catchall_46
    move-exception v4

    :try_start_47
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_54

    .line 874
    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_56

    :goto_4d
    throw v4

    .line 873
    :catch_4e
    move-exception v4

    goto :goto_31

    .line 874
    :catch_50
    move-exception v4

    goto :goto_34

    .line 873
    .restart local v2       #e:Ljava/io/IOException;
    :catch_52
    move-exception v4

    goto :goto_40

    .end local v2           #e:Ljava/io/IOException;
    :catch_54
    move-exception v5

    goto :goto_4a

    .line 874
    :catch_56
    move-exception v5

    goto :goto_4d
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 1042
    const-string v0, "TerminalMode"

    const-string v1, "homekeyCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget v0, p0, Lcom/android/sprintmenu/TerminalMode;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_33

    iget-wide v0, p0, Lcom/android/sprintmenu/TerminalMode;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    .line 1045
    iget-wide v0, p0, Lcom/android/sprintmenu/TerminalMode;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/sprintmenu/TerminalMode;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    iget-wide v0, p0, Lcom/android/sprintmenu/TerminalMode;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/sprintmenu/TerminalMode;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_33

    .line 1047
    const-string v0, "pineone"

    const-string v1, "BackKeyCheck true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v0, 0x1

    .line 1054
    :goto_32
    return v0

    .line 1051
    :cond_33
    const-string v0, "pineone"

    const-string v1, "BackKeyCheck false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget v0, p0, Lcom/android/sprintmenu/TerminalMode;->mCurrKey:I

    iput v0, p0, Lcom/android/sprintmenu/TerminalMode;->mPrevKey:I

    .line 1053
    iget-wide v0, p0, Lcom/android/sprintmenu/TerminalMode;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/sprintmenu/TerminalMode;->mPrevTime:J

    .line 1054
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    .line 928
    const-string v0, "TerminalMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKeyEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 931
    .local v6, android_keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    .line 932
    .local v9, keyAction:I
    const/4 v10, 0x0

    .line 933
    .local v10, modem_keyCode:I
    iput v6, p0, Lcom/android/sprintmenu/TerminalMode;->mCurrKey:I

    .line 934
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/sprintmenu/TerminalMode;->mCurrTime:J

    .line 936
    if-nez v9, :cond_1cb

    .line 939
    const/16 v0, 0x18

    if-ne v6, v0, :cond_50

    .line 940
    const-string v0, "TerminalMode"

    const-string v1, "KeyPress = 19"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/16 v6, 0x13

    .line 947
    :cond_3e
    :goto_3e
    sparse-switch v6, :sswitch_data_1ce

    .line 995
    iget-char v0, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    if-ne v0, v1, :cond_14b

    move v4, v10

    .line 1029
    .end local v10           #modem_keyCode:I
    .local v4, modem_keyCode:I
    :cond_4c
    :goto_4c
    if-lez v4, :cond_1be

    .line 1030
    const/4 v0, 0x1

    .line 1035
    :goto_4f
    return v0

    .line 943
    .end local v4           #modem_keyCode:I
    .restart local v10       #modem_keyCode:I
    :cond_50
    const/16 v0, 0x19

    if-ne v6, v0, :cond_3e

    .line 944
    const-string v0, "TerminalMode"

    const-string v1, "KeyPress = 20"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/16 v6, 0x14

    goto :goto_3e

    .line 950
    :sswitch_5e
    const-string v0, "TerminalMode"

    const-string v1, "Currently alt key pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->alt_key_pressed:Z

    move v4, v10

    .line 952
    .end local v10           #modem_keyCode:I
    .restart local v4       #modem_keyCode:I
    goto :goto_4c

    .line 956
    .end local v4           #modem_keyCode:I
    .restart local v10       #modem_keyCode:I
    :sswitch_6a
    invoke-virtual {p0}, Lcom/android/sprintmenu/TerminalMode;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 957
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "pineone"

    const-string v1, "KeyEvent.KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v0, "secondary"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 960
    .local v7, i:I
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mkeyStringType:Ljava/lang/String;

    const-string v1, "DEBUG_SCR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 962
    iput v6, p0, Lcom/android/sprintmenu/TerminalMode;->mCurrKey:I

    .line 963
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/sprintmenu/TerminalMode;->mCurrTime:J

    .line 965
    const/4 v0, 0x4

    if-ne v6, v0, :cond_94

    .line 966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->bSecondary:Z

    .line 968
    :cond_94
    invoke-virtual {p0}, Lcom/android/sprintmenu/TerminalMode;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_1cb

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_1cb

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_1cb

    .line 970
    const-string v0, "pineone"

    const-string v1, "BackKeyCheck()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->bSecondary:Z

    .line 976
    iget-char v0, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    if-ne v0, v1, :cond_df

    .line 977
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    iget-char v2, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    .line 981
    :goto_d9
    invoke-virtual {p0}, Lcom/android/sprintmenu/TerminalMode;->finish()V

    move v4, v10

    .end local v10           #modem_keyCode:I
    .restart local v4       #modem_keyCode:I
    goto/16 :goto_4c

    .line 979
    .end local v4           #modem_keyCode:I
    .restart local v10       #modem_keyCode:I
    :cond_df
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    iget-char v2, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto :goto_d9

    .line 986
    :cond_fe
    iget-char v0, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12a

    .line 987
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    iget-char v2, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    move v4, v10

    .end local v10           #modem_keyCode:I
    .restart local v4       #modem_keyCode:I
    goto/16 :goto_4c

    .line 989
    .end local v4           #modem_keyCode:I
    .restart local v10       #modem_keyCode:I
    :cond_12a
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    iget-char v2, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    move v4, v10

    .line 991
    .end local v10           #modem_keyCode:I
    .restart local v4       #modem_keyCode:I
    goto/16 :goto_4c

    .line 998
    .end local v4           #modem_keyCode:I
    .end local v7           #i:I
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v10       #modem_keyCode:I
    :cond_14b
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->mNeedQuery:Z

    .line 1000
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/sprintmenu/TerminalMode;->mQueryTimes:I

    .line 1002
    iget-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->alt_key_pressed:Z

    if-eqz v0, :cond_16d

    .line 1004
    const-string v0, "TerminalMode"

    const-string v1, "Previously alt key pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->alt_key_pressed:Z

    .line 1007
    const/16 v0, 0xa

    if-ne v6, v0, :cond_1b7

    .line 1008
    const/16 v6, 0x12

    .line 1015
    :cond_16d
    :goto_16d
    invoke-direct {p0, v6}, Lcom/android/sprintmenu/TerminalMode;->ParseKeyCodeToIPCDefineValue(I)C

    move-result v4

    .line 1016
    .end local v10           #modem_keyCode:I
    .restart local v4       #modem_keyCode:I
    const-string v0, "TerminalMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode input ! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    if-eqz v4, :cond_4c

    .line 1021
    iget-char v0, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4c

    .line 1022
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto/16 :goto_4c

    .line 1009
    .end local v4           #modem_keyCode:I
    .restart local v10       #modem_keyCode:I
    :cond_1b7
    const/16 v0, 0xf

    if-ne v6, v0, :cond_1cb

    .line 1010
    const/16 v6, 0x11

    goto :goto_16d

    .line 1032
    .end local v10           #modem_keyCode:I
    .restart local v4       #modem_keyCode:I
    :cond_1be
    iget-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->bSecondary:Z

    if-nez v0, :cond_1c8

    .line 1033
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_4f

    .line 1035
    :cond_1c8
    const/4 v0, 0x1

    goto/16 :goto_4f

    .end local v4           #modem_keyCode:I
    .restart local v10       #modem_keyCode:I
    :cond_1cb
    move v4, v10

    .end local v10           #modem_keyCode:I
    .restart local v4       #modem_keyCode:I
    goto/16 :goto_4c

    .line 947
    :sswitch_data_1ce
    .sparse-switch
        0x3 -> :sswitch_6a
        0x4 -> :sswitch_6a
        0x39 -> :sswitch_5e
    .end sparse-switch
.end method

.method public displayError()V
    .registers 3

    .prologue
    .line 353
    const-string v0, "Nothing updated!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 354
    return-void
.end method

.method public displaySecondaryTestResult()V
    .registers 3

    .prologue
    .line 358
    const-string v0, "Secondary test completed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 809
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_106

    .line 850
    :goto_9
    return-void

    .line 813
    :sswitch_a
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->ParseKeyCodeToIPCDefineValue(I)C

    move-result v4

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto :goto_9

    .line 818
    :sswitch_2b
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->ParseKeyCodeToIPCDefineValue(I)C

    move-result v4

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto :goto_9

    .line 823
    :sswitch_4c
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->ParseKeyCodeToIPCDefineValue(I)C

    move-result v4

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto :goto_9

    .line 828
    :sswitch_6d
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->ParseKeyCodeToIPCDefineValue(I)C

    move-result v4

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto/16 :goto_9

    .line 833
    :sswitch_8f
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->ParseKeyCodeToIPCDefineValue(I)C

    move-result v4

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto/16 :goto_9

    .line 837
    :sswitch_b1
    const-string v0, "TerminalMode"

    const-string v1, "End Terminal Mode !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-char v0, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e6

    .line 840
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x9

    iget-char v5, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p0

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    .line 844
    :goto_e1
    invoke-virtual {p0}, Lcom/android/sprintmenu/TerminalMode;->finish()V

    goto/16 :goto_9

    .line 842
    :cond_e6
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    iget-char v5, p0, Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p0

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto :goto_e1

    .line 809
    nop

    :sswitch_data_106
    .sparse-switch
        0x7f070009 -> :sswitch_b1
        0x7f070025 -> :sswitch_a
        0x7f070026 -> :sswitch_2b
        0x7f070027 -> :sswitch_4c
        0x7f070028 -> :sswitch_6d
        0x7f070029 -> :sswitch_8f
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter "savedInstanceState"

    .prologue
    .line 679
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 681
    invoke-virtual {p0}, Lcom/android/sprintmenu/TerminalMode;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 682
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "keyString"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 683
    .local v10, keyString:Ljava/lang/String;
    const-string v0, "callType"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-char v3, v0

    .line 685
    .local v3, callType:C
    const-string v0, "TerminalMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iput-object v10, p0, Lcom/android/sprintmenu/TerminalMode;->mkeyStringType:Ljava/lang/String;

    .line 689
    const-string v0, "DEBUG_SCR"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sprintmenu/TerminalMode;->isSecondary:Z

    .line 692
    :cond_3a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sprintmenu/TerminalMode;->mPrevKey:I

    .line 693
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/sprintmenu/TerminalMode;->mPrevTime:J

    .line 694
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sprintmenu/TerminalMode;->mCurrKey:I

    .line 695
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/sprintmenu/TerminalMode;->mCurrTime:J

    .line 697
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->setContentView(I)V

    .line 700
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mWindowManager:Landroid/view/WindowManager;

    .line 701
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mIWindowManager:Landroid/view/IWindowManager;

    .line 703
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 705
    .local v8, inflate:Landroid/view/LayoutInflater;
    const v0, 0x7f030010

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;

    .line 706
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mWindowHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/sprintmenu/TerminalMode$2;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/TerminalMode$2;-><init>(Lcom/android/sprintmenu/TerminalMode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 724
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->phone:Lcom/android/internal/telephony/Phone;

    .line 725
    new-instance v0, Lcom/android/sprintmenu/TerminalMode$OemCommands;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/sprintmenu/TerminalMode$OemCommands;-><init>(Lcom/android/sprintmenu/TerminalMode;Lcom/android/sprintmenu/TerminalMode$1;)V

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    .line 726
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->list:Landroid/widget/ListView;

    .line 727
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 729
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mLayout1:Landroid/widget/LinearLayout;

    .line 731
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mKeyValue:Landroid/widget/EditText;

    .line 732
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mKeyValue:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 733
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mKeyValue:Landroid/widget/EditText;

    const-string v1, "Touch Here"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->KeyValueInputDisplay(Z)V

    .line 739
    const-string v0, "DEBUG_SCR"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 740
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    .end local v3           #callType:C
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    .line 754
    :goto_102
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/android/sprintmenu/TerminalMode$3;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/TerminalMode$3;-><init>(Lcom/android/sprintmenu/TerminalMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 790
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 791
    .local v7, enter_button:Landroid/view/View;
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 792
    .local v11, left_button:Landroid/view/View;
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 793
    .local v13, right_button:Landroid/view/View;
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 794
    .local v14, up_button:Landroid/view/View;
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 795
    .local v6, down_button:Landroid/view/View;
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/TerminalMode;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 797
    .local v12, ok_button:Landroid/view/View;
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    invoke-virtual {v13, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    invoke-virtual {v14, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    invoke-virtual {v12, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    return-void

    .line 741
    .end local v6           #down_button:Landroid/view/View;
    .end local v7           #enter_button:Landroid/view/View;
    .end local v11           #left_button:Landroid/view/View;
    .end local v12           #ok_button:Landroid/view/View;
    .end local v13           #right_button:Landroid/view/View;
    .end local v14           #up_button:Landroid/view/View;
    .restart local v3       #callType:C
    :cond_149
    const-string v0, "DATA_ADV"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 742
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    .end local v3           #callType:C
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto :goto_102

    .line 743
    .restart local v3       #callType:C
    :cond_174
    const-string v0, "NAMBASIC"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 744
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    .end local v3           #callType:C
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto/16 :goto_102

    .line 745
    .restart local v3       #callType:C
    :cond_1a0
    const-string v0, "TESTMODE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 746
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    .end local v3           #callType:C
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto/16 :goto_102

    .line 747
    .restart local v3       #callType:C
    :cond_1cc
    const-string v0, "NAMSIMPLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f8

    .line 748
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    .end local v3           #callType:C
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto/16 :goto_102

    .line 749
    .restart local v3       #callType:C
    :cond_1f8
    const-string v0, "TEST_CALL"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    .line 750
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V

    goto/16 :goto_102

    .line 752
    :cond_21e
    const-string v0, "TerminalMode"

    const-string v1, "err -strange value"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_102
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 921
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 922
    return-void
.end method

.method protected onPause()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 882
    invoke-direct {p0}, Lcom/android/sprintmenu/TerminalMode;->updateModemStatus()V

    .line 884
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 885
    iget-boolean v1, p0, Lcom/android/sprintmenu/TerminalMode;->isSecondary:Z

    if-eqz v1, :cond_23

    .line 887
    :try_start_b
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/sprintmenu/TerminalMode;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 888
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/sprintmenu/TerminalMode;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_23} :catch_36

    .line 895
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_35

    .line 896
    iget-boolean v1, p0, Lcom/android/sprintmenu/TerminalMode;->bAddedView:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 898
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 899
    iput-boolean v5, p0, Lcom/android/sprintmenu/TerminalMode;->bAddedView:Z

    .line 902
    :cond_35
    return-void

    .line 890
    :catch_36
    move-exception v0

    .line 891
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_23
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 906
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 907
    iget-boolean v1, p0, Lcom/android/sprintmenu/TerminalMode;->isSecondary:Z

    if-eqz v1, :cond_1f

    .line 909
    :try_start_7
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/sprintmenu/TerminalMode;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 910
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/sprintmenu/TerminalMode;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1f} :catch_23

    .line 916
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/android/sprintmenu/TerminalMode;->Update()V

    .line 917
    return-void

    .line 912
    :catch_23
    move-exception v0

    .line 913
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 854
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 856
    const-string v0, "TerminalMode"

    const-string v1, "stop called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return-void
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "property"
    .parameter "value"

    .prologue
    .line 347
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method
