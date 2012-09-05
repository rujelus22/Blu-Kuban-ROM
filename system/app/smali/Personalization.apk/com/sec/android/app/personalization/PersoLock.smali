.class public Lcom/sec/android/app/personalization/PersoLock;
.super Landroid/app/Dialog;
.source "PersoLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/personalization/PersoLock$OemCommands;
    }
.end annotation


# instance fields
.field final REQ_GET_LOCK_STATUS:C

.field final REQ_LOCK_MODE:C

.field final REQ_UNLOCK_MODE:C

.field private mCPEntry:Landroid/widget/EditText;

.field private mCPText:Landroid/widget/TextView;

.field private mControlKeyEntry:Landroid/widget/EditText;

.field private mCpStatus:Landroid/widget/TextView;

.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field public mIsLock:I

.field private mMccMncEntry:Landroid/widget/EditText;

.field private mNSPEntry:Landroid/widget/EditText;

.field private mNSPText:Landroid/widget/TextView;

.field private mNpStatus:Landroid/widget/TextView;

.field private mNspStatus:Landroid/widget/TextView;

.field private mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

.field public mParentActivity:Landroid/app/Activity;

.field public mPersoType:I

.field private mPersoTypeText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSpStatus:Landroid/widget/TextView;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnlockText:Landroid/widget/TextView;

.field private mlockButton:Landroid/widget/Button;

.field mlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 456
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-char v1, p0, Lcom/sec/android/app/personalization/PersoLock;->REQ_UNLOCK_MODE:C

    .line 38
    const/4 v0, 0x1

    iput-char v0, p0, Lcom/sec/android/app/personalization/PersoLock;->REQ_LOCK_MODE:C

    .line 39
    const/4 v0, 0x2

    iput-char v0, p0, Lcom/sec/android/app/personalization/PersoLock;->REQ_GET_LOCK_STATUS:C

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    .line 50
    iput v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    .line 51
    iput v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mIsLock:I

    .line 338
    new-instance v0, Lcom/sec/android/app/personalization/PersoLock$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/personalization/PersoLock$1;-><init>(Lcom/sec/android/app/personalization/PersoLock;)V

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mHandler:Landroid/os/Handler;

    .line 503
    new-instance v0, Lcom/sec/android/app/personalization/PersoLock$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/personalization/PersoLock$2;-><init>(Lcom/sec/android/app/personalization/PersoLock;)V

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mlockListener:Landroid/view/View$OnClickListener;

    .line 789
    new-instance v0, Lcom/sec/android/app/personalization/PersoLock$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/personalization/PersoLock$3;-><init>(Lcom/sec/android/app/personalization/PersoLock;)V

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 457
    return-void
.end method

.method private SendGetStatusData()V
    .registers 5

    .prologue
    .line 739
    const-string v1, "SendGetStatusData"

    invoke-direct {p0, v1}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    .line 740
    const/4 v0, 0x0

    .line 742
    .local v0, data:[B
    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->PersoGetStatusData()[B

    move-result-object v0

    .line 744
    if-nez v0, :cond_14

    .line 746
    const-string v1, "err - data is NULL"

    invoke-direct {p0, v1}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    .line 752
    :goto_13
    return-void

    .line 750
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_13
.end method

.method private SendLockData()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 683
    const/4 v7, 0x0

    .line 685
    .local v7, data:[B
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    packed-switch v0, :pswitch_data_e6

    .line 705
    const-string v0, "err - switch;default"

    invoke-direct {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    .line 710
    :goto_c
    if-nez v7, :cond_d7

    .line 712
    const-string v0, "err - data is NULL"

    invoke-direct {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    .line 718
    :goto_13
    return-void

    .line 688
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->PersoNWLockData(CCLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 690
    goto :goto_c

    .line 692
    :pswitch_3a
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->PersoSUBLockData(CCLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 694
    goto :goto_c

    .line 696
    :pswitch_6a
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->PersoSPLockData(CCLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 698
    goto/16 :goto_c

    .line 700
    :pswitch_9b
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/personalization/PersoLock;->mCPEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->PersoCPLockData(CCLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 702
    goto/16 :goto_c

    .line 716
    :cond_d7
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_13

    .line 685
    :pswitch_data_e6
    .packed-switch 0x5
        :pswitch_14
        :pswitch_3a
        :pswitch_6a
        :pswitch_9b
    .end packed-switch
.end method

.method private SendUnLockData()V
    .registers 5

    .prologue
    .line 723
    const/4 v0, 0x0

    .line 725
    .local v0, data:[B
    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    iget v2, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    int-to-char v2, v2

    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->PersoUnLockData(CLjava/lang/String;)[B

    move-result-object v0

    .line 727
    if-nez v0, :cond_1c

    .line 729
    const-string v1, "err - data is NULL"

    invoke-direct {p0, v1}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    .line 735
    :goto_1b
    return-void

    .line 733
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_1b
.end method

.method private ShowLockPanel()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    .line 552
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoTypeText:Landroid/widget/TextView;

    .line 553
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPText:Landroid/widget/TextView;

    .line 554
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mCPText:Landroid/widget/TextView;

    .line 556
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPEntry:Landroid/widget/EditText;

    .line 561
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mCPEntry:Landroid/widget/EditText;

    .line 563
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e3

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mCPText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mCPEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 597
    :goto_8a
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 601
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 603
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mlockButton:Landroid/widget/Button;

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mlockButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mDismissButton:Landroid/widget/Button;

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mDismissButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 611
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusText:Landroid/widget/TextView;

    .line 612
    return-void

    .line 570
    :cond_e3
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    if-ne v0, v1, :cond_109

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mCPEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mCPText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPText:Landroid/widget/TextView;

    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_8a

    .line 579
    :cond_109
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    if-ne v0, v1, :cond_130

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mCPEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mCPText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPText:Landroid/widget/TextView;

    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_8a

    .line 586
    :cond_130
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v0, v2, :cond_14d

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNSPEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mCPEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_8a

    .line 595
    :cond_14d
    const-string v0, "Err Unknown type"

    invoke-direct {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    goto/16 :goto_8a
.end method

.method private ShowStatusPanel()V
    .registers 3

    .prologue
    .line 667
    const-string v0, "ShowStatusPanel"

    invoke-direct {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    .line 669
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoTypeText:Landroid/widget/TextView;

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoTypeText:Landroid/widget/TextView;

    const-string v1, "Personalizatiob Status"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mDismissButton:Landroid/widget/Button;

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mDismissButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    invoke-direct {p0}, Lcom/sec/android/app/personalization/PersoLock;->SendGetStatusData()V

    .line 677
    return-void
.end method

.method private ShowUnLockPanel()V
    .registers 3

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    .line 621
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoTypeText:Landroid/widget/TextView;

    .line 622
    const v0, 0x7f050015

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mUnlockText:Landroid/widget/TextView;

    .line 624
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a2

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoTypeText:Landroid/widget/TextView;

    const v1, 0x7f040012

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mUnlockText:Landroid/widget/TextView;

    const v1, 0x7f040016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 647
    :goto_48
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 650
    const v0, 0x7f050013

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 652
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mlockButton:Landroid/widget/Button;

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mlockButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mDismissButton:Landroid/widget/Button;

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mDismissButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 660
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusText:Landroid/widget/TextView;

    .line 661
    return-void

    .line 629
    :cond_a2
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    if-ne v0, v1, :cond_bd

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoTypeText:Landroid/widget/TextView;

    const v1, 0x7f040013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mUnlockText:Landroid/widget/TextView;

    const v1, 0x7f040017

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_48

    .line 634
    :cond_bd
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d9

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoTypeText:Landroid/widget/TextView;

    const v1, 0x7f040014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mUnlockText:Landroid/widget/TextView;

    const v1, 0x7f040018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_48

    .line 639
    :cond_d9
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    iget-object v1, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f6

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPersoTypeText:Landroid/widget/TextView;

    const v1, 0x7f040015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mUnlockText:Landroid/widget/TextView;

    const v1, 0x7f040019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_48

    .line 645
    :cond_f6
    const-string v0, "Err Unknown type"

    invoke-direct {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    goto/16 :goto_48
.end method

.method static synthetic access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/personalization/PersoLock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/personalization/PersoLock;->indicateError()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/personalization/PersoLock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/personalization/PersoLock;->SendLockData()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/personalization/PersoLock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/personalization/PersoLock;->indicateBusy()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/personalization/PersoLock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/personalization/PersoLock;->SendUnLockData()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/personalization/PersoLock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/personalization/PersoLock;->hideAlert()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/personalization/PersoLock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/personalization/PersoLock;->indicateSuccess()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNpStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/personalization/PersoLock;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/app/personalization/PersoLock;->mNpStatus:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mNspStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/personalization/PersoLock;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/app/personalization/PersoLock;->mNspStatus:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mSpStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/personalization/PersoLock;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/app/personalization/PersoLock;->mSpStatus:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mCpStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/personalization/PersoLock;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/app/personalization/PersoLock;->mCpStatus:Landroid/widget/TextView;

    return-object p1
.end method

.method private hideAlert()V
    .registers 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 787
    return-void
.end method

.method private indicateBusy()V
    .registers 3

    .prologue
    .line 755
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mIsLock:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 760
    :goto_d
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 762
    return-void

    .line 758
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f04000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d
.end method

.method private indicateError()V
    .registers 3

    .prologue
    .line 765
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mIsLock:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 766
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f04000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 770
    :goto_d
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    return-void

    .line 768
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f04000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d
.end method

.method private indicateSuccess()V
    .registers 3

    .prologue
    .line 775
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mIsLock:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f04000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 780
    :goto_d
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 782
    return-void

    .line 778
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f04000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_d
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 798
    const-string v0, "Personalization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimNetworklock] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 463
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 464
    new-instance v0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/personalization/PersoLock$OemCommands;-><init>(Lcom/sec/android/app/personalization/PersoLock;Lcom/sec/android/app/personalization/PersoLock$1;)V

    iput-object v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mOem:Lcom/sec/android/app/personalization/PersoLock$OemCommands;

    .line 466
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mIsLock:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 468
    const-string v0, "mIsLock - REQ_GET_LOCK_STATUS"

    invoke-direct {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V

    .line 470
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->setContentView(I)V

    .line 471
    invoke-direct {p0}, Lcom/sec/android/app/personalization/PersoLock;->ShowStatusPanel()V

    .line 486
    :goto_24
    return-void

    .line 474
    :cond_25
    iget v0, p0, Lcom/sec/android/app/personalization/PersoLock;->mIsLock:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 476
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->setContentView(I)V

    .line 477
    invoke-direct {p0}, Lcom/sec/android/app/personalization/PersoLock;->ShowLockPanel()V

    goto :goto_24

    .line 482
    :cond_33
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/personalization/PersoLock;->setContentView(I)V

    .line 483
    invoke-direct {p0}, Lcom/sec/android/app/personalization/PersoLock;->ShowUnLockPanel()V

    goto :goto_24
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 495
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 496
    const/4 v0, 0x1

    .line 499
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 490
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 491
    return-void
.end method
