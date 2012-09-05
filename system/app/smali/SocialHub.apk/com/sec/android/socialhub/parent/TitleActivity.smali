.class public Lcom/sec/android/socialhub/parent/TitleActivity;
.super Lcom/sec/android/socialhub/parent/IntentCheckActivity;
.source "TitleActivity.java"


# instance fields
.field protected bEnableZeroCount:Z

.field protected bIsShowingPopup:Z

.field private bIsSupportByte:Z

.field private bOver:Z

.field private bParenthesis:Z

.field private bShowDiscard:Z

.field private bShowDiscardForce:Z

.field private bShowDiscardToast:Z

.field private hasSelection:Z

.field protected isOver:Z

.field protected mButton:Landroid/widget/Button;

.field protected mEditText:Landroid/widget/EditText;

.field private mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

.field public mKeyListner:Landroid/text/TextWatcher;

.field protected mLimitLength:J

.field private mMode:I

.field protected mTitleBar:Landroid/view/ViewGroup;

.field protected myCount:Landroid/widget/TextView;

.field protected myProgress:Landroid/widget/ProgressBar;

.field protected myTitle:Landroid/widget/TextView;

.field private support:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/IntentCheckActivity;-><init>()V

    .line 33
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myTitle:Landroid/widget/TextView;

    .line 34
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myCount:Landroid/widget/TextView;

    .line 35
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myProgress:Landroid/widget/ProgressBar;

    .line 36
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mTitleBar:Landroid/view/ViewGroup;

    .line 46
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->support:Z

    .line 48
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    .line 49
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mLimitLength:J

    .line 55
    iput v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mMode:I

    .line 57
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->hasSelection:Z

    .line 59
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bIsSupportByte:Z

    .line 61
    iput-boolean v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->isOver:Z

    .line 63
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bOver:Z

    .line 65
    iput-boolean v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bParenthesis:Z

    .line 67
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bShowDiscard:Z

    .line 68
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bShowDiscardToast:Z

    .line 69
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bShowDiscardForce:Z

    .line 70
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bEnableZeroCount:Z

    .line 72
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bIsShowingPopup:Z

    .line 78
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    .line 349
    new-instance v0, Lcom/sec/android/socialhub/parent/TitleActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/TitleActivity$1;-><init>(Lcom/sec/android/socialhub/parent/TitleActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mKeyListner:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/parent/TitleActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->hasSelection:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/parent/TitleActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->hasSelection:Z

    return p1
.end method


# virtual methods
.method public buttonCheck()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 317
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    if-nez v2, :cond_c

    .line 334
    :cond_b
    :goto_b
    return-void

    .line 320
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->getCurrentCount()I

    move-result v2

    int-to-long v0, v2

    .line 322
    .local v0, size:J
    cmp-long v2, v0, v5

    if-lez v2, :cond_2e

    iget-wide v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mLimitLength:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2e

    .line 323
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 327
    :goto_20
    iget-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bEnableZeroCount:Z

    if-ne v2, v4, :cond_b

    .line 329
    cmp-long v2, v0, v5

    if-nez v2, :cond_b

    .line 331
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_b

    .line 325
    :cond_2e
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method

.method public checkLimitation(J)V
    .registers 4
    .parameter "length"

    .prologue
    .line 186
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/TitleActivity;->setCount(I)V

    .line 187
    return-void
.end method

.method protected checkShowDiscardPopup()Z
    .registers 3

    .prologue
    .line 677
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 679
    .local v0, cnt:I
    if-lez v0, :cond_e

    .line 681
    const/4 v1, 0x1

    .line 684
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method protected drawCount(Ljava/lang/String;)V
    .registers 6
    .parameter "count"

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bParenthesis:Z

    if-eqz v0, :cond_1a

    .line 533
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myCount:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 534
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myCount:Landroid/widget/TextView;

    const-string v1, "(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :cond_19
    :goto_19
    return-void

    .line 538
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myCount:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 539
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method

.method public getCount()I
    .registers 5

    .prologue
    .line 545
    iget v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mMode:I

    packed-switch v0, :pswitch_data_16

    .line 553
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 548
    :pswitch_7
    iget-wide v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mLimitLength:J

    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->getCurrentCount()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_6

    .line 551
    :pswitch_11
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->getCurrentCount()I

    move-result v0

    goto :goto_6

    .line 545
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_11
        :pswitch_7
    .end packed-switch
.end method

.method public getCurrentCount()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 210
    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bIsSupportByte:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 212
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    if-nez v1, :cond_b

    .line 216
    :cond_a
    :goto_a
    return v0

    .line 212
    :cond_b
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_a

    .line 216
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_a
.end method

.method public hideTitleProgress()V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 568
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 571
    :cond_b
    return-void
.end method

.method protected isShowingDiscardPopup()Z
    .registers 2

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bIsShowingPopup:Z

    return v0
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 642
    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bShowDiscard:Z

    if-ne v1, v2, :cond_1f

    .line 644
    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bShowDiscardForce:Z

    if-ne v1, v2, :cond_f

    .line 646
    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bShowDiscardToast:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/parent/TitleActivity;->showDiscardPopup(Z)V

    .line 666
    :goto_e
    return-void

    .line 650
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->checkShowDiscardPopup()Z

    move-result v0

    .line 652
    .local v0, show:Z
    if-ne v0, v2, :cond_1b

    .line 654
    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bShowDiscardToast:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/parent/TitleActivity;->showDiscardPopup(Z)V

    goto :goto_e

    .line 658
    :cond_1b
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->onBackPressed()V

    goto :goto_e

    .line 664
    .end local v0           #show:Z
    :cond_1f
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->onBackPressed()V

    goto :goto_e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/TitleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_e

    .line 98
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mKeyListner:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    :cond_e
    return-void
.end method

.method protected onDiscard(Z)V
    .registers 5
    .parameter "bShowToast"

    .prologue
    const/4 v2, 0x0

    .line 623
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 624
    const v0, 0x7f0800bb

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 626
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->finish()V

    .line 632
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_16

    .line 637
    :cond_15
    :goto_15
    return-void

    .line 634
    :cond_16
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_15

    .line 636
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_15
.end method

.method protected onDisplayDiscardPopup()V
    .registers 1

    .prologue
    .line 616
    return-void
.end method

.method public onHandleText(Ljava/lang/String;Ljava/lang/CharSequence;III)V
    .registers 11
    .parameter "before"
    .parameter "text"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    if-nez v2, :cond_f

    .line 288
    const-string v2, "TitleActivity"

    const-string v3, "onTextChanged()"

    const-string v4, "mEditText is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_e
    return-void

    .line 292
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->getCurrentCount()I

    move-result v2

    int-to-long v0, v2

    .line 294
    .local v0, size:J
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/parent/TitleActivity;->checkLimitation(J)V

    .line 296
    iget-wide v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mLimitLength:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_34

    .line 298
    iget-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bOver:Z

    if-nez v2, :cond_27

    .line 300
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bOver:Z

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->onOverLimit()V

    .line 304
    :cond_27
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    if-eqz v2, :cond_30

    .line 305
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->buttonCheck()V

    goto :goto_e

    .line 309
    :cond_34
    iput-boolean v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bOver:Z

    goto :goto_30
.end method

.method public onOverLimit()V
    .registers 6

    .prologue
    .line 195
    const-string v0, "TitleActivity"

    const-string v1, "onOverLimit()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limit - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mLimitLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method protected onSelectionChanged(IIII)V
    .registers 9
    .parameter "start"
    .parameter "after"
    .parameter "before_end"
    .parameter "after_end"

    .prologue
    .line 343
    const-string v0, "TitleActivity"

    const-string v1, "onSelectionChanged()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before_end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", after_end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public setCount(I)V
    .registers 10
    .parameter "count"

    .prologue
    const v7, 0x7f0800dc

    const/4 v6, 0x1

    .line 474
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myTitle:Landroid/widget/TextView;

    if-nez v2, :cond_12

    .line 476
    const-string v2, "TitleActivity"

    const-string v3, "setCount()"

    const-string v4, "myTitle is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :goto_11
    return-void

    .line 480
    :cond_12
    iget v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mMode:I

    packed-switch v2, :pswitch_data_8e

    goto :goto_11

    .line 516
    :pswitch_18
    if-lez p1, :cond_85

    .line 518
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/parent/TitleActivity;->drawCount(Ljava/lang/String;)V

    goto :goto_11

    .line 484
    :pswitch_22
    if-lez p1, :cond_56

    .line 486
    const-wide/16 v0, 0x0

    .line 487
    .local v0, showCount:J
    iget-wide v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mLimitLength:J

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 489
    iget-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bIsSupportByte:Z

    if-ne v2, v6, :cond_4e

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/sec/android/socialhub/parent/TitleActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/parent/TitleActivity;->drawCount(Ljava/lang/String;)V

    goto :goto_11

    .line 495
    :cond_4e
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/parent/TitleActivity;->drawCount(Ljava/lang/String;)V

    goto :goto_11

    .line 501
    .end local v0           #showCount:J
    :cond_56
    iget-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bIsSupportByte:Z

    if-ne v2, v6, :cond_7b

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mLimitLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/sec/android/socialhub/parent/TitleActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/parent/TitleActivity;->drawCount(Ljava/lang/String;)V

    goto :goto_11

    .line 507
    :cond_7b
    iget-wide v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mLimitLength:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/parent/TitleActivity;->drawCount(Ljava/lang/String;)V

    goto :goto_11

    .line 522
    :cond_85
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/parent/TitleActivity;->drawCount(Ljava/lang/String;)V

    goto :goto_11

    .line 480
    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_22
    .end packed-switch
.end method

.method public setCountTextView(Landroid/widget/TextView;Z)V
    .registers 5
    .parameter "textview"
    .parameter "parenthesis"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myCount:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 169
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_b
    iput-boolean p2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bParenthesis:Z

    .line 174
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myCount:Landroid/widget/TextView;

    .line 175
    return-void
.end method

.method public setEnableButtonZero(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bEnableZeroCount:Z

    .line 142
    return-void
.end method

.method public setLayout(I)V
    .registers 9
    .parameter "layout"

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/parent/TitleActivity;->setContentView(I)V

    .line 398
    iget-boolean v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->support:Z

    if-eqz v4, :cond_5c

    .line 402
    :try_start_7
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x7

    const v6, 0x7f03001c

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 403
    const v4, 0x7f0b0088

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/parent/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myTitle:Landroid/widget/TextView;

    .line 404
    const v4, 0x7f0b0089

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/parent/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myCount:Landroid/widget/TextView;

    .line 405
    const v4, 0x7f0b008a

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/parent/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myProgress:Landroid/widget/ProgressBar;

    .line 407
    const-string v4, "com.android.internal.R$id"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "title_container"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 409
    .local v0, container_id:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mTitleBar:Landroid/view/ViewGroup;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_56} :catch_57

    .line 431
    .end local v0           #container_id:I
    :goto_56
    return-void

    .line 411
    :catch_57
    move-exception v1

    .line 413
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    .line 421
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 422
    .local v3, view:Landroid/view/View;
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 423
    .local v2, title:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mTitleBar:Landroid/view/ViewGroup;

    .line 424
    const-string v4, "TitleActivity"

    const-string v5, "onCreate()"

    const-string v6, "it does not support custom title bar!!"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_7c} :catch_7d

    goto :goto_56

    .line 426
    .end local v2           #title:Landroid/view/View;
    .end local v3           #view:Landroid/view/View;
    :catch_7d
    move-exception v1

    .line 428
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56
.end method

.method public setLimitationEditText(Landroid/widget/EditText;JI)V
    .registers 7
    .parameter "edit"
    .parameter "length"
    .parameter "type"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    .line 235
    iput-wide p2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mLimitLength:J

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bOver:Z

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->getCurrentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/TitleActivity;->setCount(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mKeyListner:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mKeyListner:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 252
    return-void
.end method

.method public setLimitationEditText(Landroid/widget/EditText;JILandroid/widget/Button;)V
    .registers 6
    .parameter "edit"
    .parameter "length"
    .parameter "type"
    .parameter "button"

    .prologue
    .line 263
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/parent/TitleActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 265
    iput-object p5, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->buttonCheck()V

    .line 267
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .parameter "what"

    .prologue
    .line 161
    iput p1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mMode:I

    .line 163
    return-void
.end method

.method public setShowDiscardPopup(ZZZ)V
    .registers 4
    .parameter "bShow"
    .parameter "bToast"
    .parameter "bForce"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bShowDiscard:Z

    .line 112
    iput-boolean p2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bShowDiscardToast:Z

    .line 113
    iput-boolean p3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bShowDiscardForce:Z

    .line 114
    return-void
.end method

.method public setSupportByte(Z)V
    .registers 2
    .parameter "support"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bIsSupportByte:Z

    .line 201
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 5
    .parameter "title"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myTitle:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 443
    const-string v0, "TitleActivity"

    const-string v1, "setTitle()"

    const-string v2, "myTitle is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/IntentCheckActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 450
    :goto_10
    return-void

    .line 448
    :cond_11
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method public setTitleBarVisibility(Z)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 148
    if-eqz p1, :cond_d

    .line 149
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mTitleBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    :cond_c
    :goto_c
    return-void

    .line 151
    :cond_d
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mTitleBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_c
.end method

.method public setUse(Z)V
    .registers 4
    .parameter "bUse"

    .prologue
    .line 124
    if-eqz p1, :cond_e

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->support:Z

    .line 132
    :goto_d
    return-void

    .line 130
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->support:Z

    goto :goto_d
.end method

.method public setVisibleCount(I)V
    .registers 5
    .parameter "what"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myTitle:Landroid/widget/TextView;

    if-nez v0, :cond_e

    .line 461
    const-string v0, "TitleActivity"

    const-string v1, "setVisibleCount()"

    const-string v2, "myTitle is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_d
    return-void

    .line 464
    :cond_e
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d
.end method

.method protected showDiscardPopup(Z)V
    .registers 6
    .parameter "bShowToast"

    .prologue
    .line 580
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;-><init>(Landroid/content/Context;)V

    .line 582
    .local v0, dialog:Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;
    move v1, p1

    .line 584
    .local v1, showToast:Z
    const v2, 0x104000a

    new-instance v3, Lcom/sec/android/socialhub/parent/TitleActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/socialhub/parent/TitleActivity$2;-><init>(Lcom/sec/android/socialhub/parent/TitleActivity;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 593
    const/high16 v2, 0x104

    new-instance v3, Lcom/sec/android/socialhub/parent/TitleActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/parent/TitleActivity$3;-><init>(Lcom/sec/android/socialhub/parent/TitleActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 603
    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubDiscardDialog;->show()Landroid/app/AlertDialog;

    .line 605
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bIsShowingPopup:Z

    .line 607
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->onDisplayDiscardPopup()V

    .line 608
    return-void
.end method

.method public showTitleProgress()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 560
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->myProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 562
    :cond_a
    return-void
.end method
