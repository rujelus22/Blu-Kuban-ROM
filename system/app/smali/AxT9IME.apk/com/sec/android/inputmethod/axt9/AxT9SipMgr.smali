.class public Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
.super Ljava/lang/Object;
.source "AxT9SipMgr.java"


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private final TAG:Ljava/lang/String;

.field private mBkInputMethodType:I

.field mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mEditorType:I

.field private mInputMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodType:I

.field private mInputMode:I

.field private mInputModeCurrentIndex:I

.field mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

.field private mLatestTextInputMode:I

.field private mMaxNumEditorTypeEmailNUrl:I

.field private mMaxNumInputModeNumberNSymbol:I

.field private mMaxNumInputModeText:I

.field private mMmsRecipientLastInputMode:I

.field private mPreInputMethodType:I

.field private mTCursorHandleKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTKeypadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandPhoneNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTLandTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTMonthKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadEmailSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadEmoticonKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTPhonepadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mTYearDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

.field private mpreInputMode:I

.field privateImeOptionsTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 8
    .parameter "axT9IME"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->DEBUG:Z

    .line 37
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->INFO:Z

    .line 38
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->ERROR:Z

    .line 39
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->TAG:Ljava/lang/String;

    .line 87
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMode:I

    .line 91
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMaxNumEditorTypeEmailNUrl:I

    .line 92
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMaxNumInputModeText:I

    .line 93
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMaxNumInputModeNumberNSymbol:I

    .line 95
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputModeCurrentIndex:I

    .line 96
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mpreInputMode:I

    .line 97
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mLatestTextInputMode:I

    .line 99
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMmsRecipientLastInputMode:I

    .line 152
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mEditorType:I

    .line 235
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mBkInputMethodType:I

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    .line 2816
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    .line 242
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 243
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeInputMethodList()I

    .line 244
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 246
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_4b
    const-string v0, "qwertykeyboard"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->parseImTypeValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    .line 250
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    if-ne v0, v3, :cond_59

    .line 252
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    .line 254
    :cond_59
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mPreInputMethodType:I

    .line 261
    return-void
.end method

.method private getCurrentRequestedKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .registers 8
    .parameter "inputmode"

    .prologue
    const v5, 0x7f050010

    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    const/4 v2, 0x0

    .line 610
    .local v2, vInputMethodType:I
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_26

    .line 613
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v5, 0x7f050016

    invoke-direct {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTMonthKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 615
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTMonthKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 617
    if-nez v0, :cond_24

    .line 619
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_24
    move-object v1, v0

    .line 698
    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .local v1, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :goto_25
    return-object v1

    .line 623
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_47

    .line 626
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v5, 0x7f05000d

    invoke-direct {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTYearDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 628
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTYearDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 630
    if-nez v0, :cond_45

    .line 632
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_45
    move-object v1, v0

    .line 635
    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v1       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    goto :goto_25

    .line 636
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_79

    .line 638
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 639
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 640
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 647
    :goto_61
    if-nez v0, :cond_6b

    .line 649
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_6b
    move-object v1, v0

    .line 652
    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v1       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    goto :goto_25

    .line 642
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_6d
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 643
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadIpAddressKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_61

    .line 653
    :cond_79
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9a

    .line 655
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v5, 0x7f05000b

    invoke-direct {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTCursorHandleKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 656
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTCursorHandleKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 658
    if-nez v0, :cond_98

    .line 660
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_98
    move-object v1, v0

    .line 663
    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v1       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    goto :goto_25

    .line 666
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_9a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    .line 668
    packed-switch p1, :pswitch_data_dc

    .line 693
    :goto_a1
    if-nez v0, :cond_ab

    .line 695
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_ab
    move-object v1, v0

    .line 698
    .end local v0           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v1       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    goto/16 :goto_25

    .line 671
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v0       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :pswitch_ae
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearLastKey()V

    .line 672
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 673
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLandTextLanguageKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v0

    goto :goto_a1

    .line 675
    :cond_c0
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getTextLanguageKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v0

    .line 677
    goto :goto_a1

    .line 679
    :pswitch_c5
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 680
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLandNumberKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v0

    goto :goto_a1

    .line 682
    :cond_d2
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getNumberKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v0

    .line 684
    goto :goto_a1

    .line 686
    :pswitch_d7
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getSymbolKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v0

    .line 687
    goto :goto_a1

    .line 668
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_ae
        :pswitch_c5
        :pswitch_d7
    .end packed-switch
.end method

.method private getKeyboardXmlResId(I)I
    .registers 8
    .parameter "inputMethodType"

    .prologue
    const v2, 0x7f05003e

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1563
    const/4 v1, -0x1

    .line 1566
    .local v1, resourceId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageID()S

    move-result v0

    .line 1567
    .local v0, currentInputLanguageID:S
    sget-boolean v3, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    if-eqz v3, :cond_11

    .line 1568
    const/4 v0, 0x7

    .line 1570
    :cond_11
    sparse-switch v0, :sswitch_data_16a

    .line 1701
    if-ne p1, v5, :cond_14c

    .line 1702
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isComCodeBSE()Z

    move-result v2

    if-eqz v2, :cond_147

    .line 1703
    const v1, 0x7f050036

    .line 1715
    :cond_21
    :goto_21
    const/4 v2, 0x3

    if-ne p1, v2, :cond_15a

    .line 1716
    const/high16 v1, 0x7f05

    .line 1723
    :cond_26
    :goto_26
    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 1727
    :cond_29
    return v1

    .line 1575
    :sswitch_2a
    if-ne p1, v5, :cond_30

    .line 1576
    const v1, 0x7f050033

    goto :goto_21

    .line 1577
    :cond_30
    if-ne p1, v4, :cond_36

    .line 1578
    const v1, 0x7f050005

    goto :goto_21

    .line 1579
    :cond_36
    if-nez p1, :cond_21

    .line 1580
    const v1, 0x7f050011

    goto :goto_21

    .line 1584
    :sswitch_3c
    if-ne p1, v5, :cond_54

    .line 1585
    const-string v3, "CH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    move v1, v2

    :goto_4f
    goto :goto_21

    :cond_50
    const v1, 0x7f050036

    goto :goto_4f

    .line 1587
    :cond_54
    if-ne p1, v4, :cond_5a

    .line 1588
    const v1, 0x7f050006

    goto :goto_21

    .line 1589
    :cond_5a
    if-nez p1, :cond_21

    .line 1590
    const v1, 0x7f050014

    goto :goto_21

    .line 1595
    :sswitch_60
    if-ne p1, v5, :cond_78

    .line 1596
    const-string v3, "CH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    move v1, v2

    :goto_73
    goto :goto_21

    :cond_74
    const v1, 0x7f05002f

    goto :goto_73

    .line 1598
    :cond_78
    if-ne p1, v4, :cond_7e

    .line 1599
    const v1, 0x7f050003

    goto :goto_21

    .line 1600
    :cond_7e
    if-nez p1, :cond_21

    .line 1601
    const v1, 0x7f050009

    goto :goto_21

    .line 1607
    :sswitch_84
    if-ne p1, v5, :cond_8a

    .line 1608
    const v1, 0x7f05003b

    goto :goto_21

    .line 1609
    :cond_8a
    if-ne p1, v4, :cond_90

    .line 1610
    const v1, 0x7f050007

    goto :goto_21

    .line 1611
    :cond_90
    if-nez p1, :cond_21

    .line 1612
    const v1, 0x7f05001b

    goto :goto_21

    .line 1616
    :sswitch_96
    if-ne p1, v5, :cond_9c

    .line 1617
    const v1, 0x7f05003d

    goto :goto_21

    .line 1618
    :cond_9c
    if-ne p1, v4, :cond_a2

    .line 1619
    const v1, 0x7f050008

    goto :goto_21

    .line 1620
    :cond_a2
    if-nez p1, :cond_21

    .line 1621
    const v1, 0x7f050020

    goto/16 :goto_21

    .line 1625
    :sswitch_a9
    if-ne p1, v5, :cond_b0

    .line 1626
    const v1, 0x7f050032

    goto/16 :goto_21

    .line 1627
    :cond_b0
    if-ne p1, v4, :cond_b7

    .line 1628
    const v1, 0x7f050004

    goto/16 :goto_21

    .line 1629
    :cond_b7
    if-nez p1, :cond_21

    .line 1630
    const v1, 0x7f05000f

    goto/16 :goto_21

    .line 1634
    :sswitch_be
    if-ne p1, v5, :cond_c5

    .line 1635
    const v1, 0x7f050037

    goto/16 :goto_21

    .line 1636
    :cond_c5
    if-eq p1, v4, :cond_21

    .line 1638
    if-nez p1, :cond_21

    .line 1639
    const v1, 0x7f050015

    goto/16 :goto_21

    .line 1643
    :sswitch_ce
    if-ne p1, v5, :cond_d5

    .line 1644
    const v1, 0x7f050031

    goto/16 :goto_21

    .line 1645
    :cond_d5
    if-ne p1, v4, :cond_dc

    .line 1646
    const v1, 0x7f050003

    goto/16 :goto_21

    .line 1647
    :cond_dc
    if-nez p1, :cond_21

    .line 1648
    const v1, 0x7f050009

    goto/16 :goto_21

    .line 1652
    :sswitch_e3
    if-ne p1, v5, :cond_ea

    .line 1653
    const v1, 0x7f050035

    goto/16 :goto_21

    .line 1654
    :cond_ea
    if-ne p1, v4, :cond_f1

    .line 1655
    const v1, 0x7f050003

    goto/16 :goto_21

    .line 1656
    :cond_f1
    if-nez p1, :cond_21

    .line 1657
    const v1, 0x7f050009

    goto/16 :goto_21

    .line 1661
    :sswitch_f8
    if-ne p1, v5, :cond_ff

    .line 1662
    const v1, 0x7f050038

    goto/16 :goto_21

    .line 1663
    :cond_ff
    if-ne p1, v4, :cond_106

    .line 1664
    const v1, 0x7f050003

    goto/16 :goto_21

    .line 1665
    :cond_106
    if-nez p1, :cond_21

    .line 1666
    const v1, 0x7f050009

    goto/16 :goto_21

    .line 1670
    :sswitch_10d
    if-ne p1, v5, :cond_114

    .line 1671
    const v1, 0x7f05003c

    goto/16 :goto_21

    .line 1672
    :cond_114
    if-ne p1, v4, :cond_11b

    .line 1673
    const v1, 0x7f050003

    goto/16 :goto_21

    .line 1674
    :cond_11b
    if-nez p1, :cond_21

    .line 1675
    const v1, 0x7f050009

    goto/16 :goto_21

    .line 1679
    :sswitch_122
    if-ne p1, v5, :cond_129

    .line 1680
    const v1, 0x7f050030

    goto/16 :goto_21

    .line 1681
    :cond_129
    if-ne p1, v4, :cond_130

    .line 1682
    const v1, 0x7f050003

    goto/16 :goto_21

    .line 1683
    :cond_130
    if-nez p1, :cond_21

    .line 1684
    const v1, 0x7f05000a

    goto/16 :goto_21

    .line 1692
    :sswitch_137
    if-ne p1, v5, :cond_13e

    .line 1693
    const v1, 0x7f05003e

    goto/16 :goto_21

    .line 1694
    :cond_13e
    if-eq p1, v4, :cond_21

    .line 1696
    if-nez p1, :cond_21

    .line 1697
    const v1, 0x7f050009

    goto/16 :goto_21

    .line 1705
    :cond_147
    const v1, 0x7f05002f

    goto/16 :goto_21

    .line 1707
    :cond_14c
    if-ne p1, v4, :cond_153

    .line 1708
    const v1, 0x7f050003

    goto/16 :goto_21

    .line 1709
    :cond_153
    if-nez p1, :cond_21

    .line 1710
    const v1, 0x7f050009

    goto/16 :goto_21

    .line 1717
    :cond_15a
    const/4 v2, 0x4

    if-ne p1, v2, :cond_162

    .line 1718
    const v1, 0x7f050001

    goto/16 :goto_26

    .line 1719
    :cond_162
    const/4 v2, 0x5

    if-ne p1, v2, :cond_26

    .line 1720
    const v1, 0x7f050002

    goto/16 :goto_26

    .line 1570
    :sswitch_data_16a
    .sparse-switch
        0x2 -> :sswitch_122
        0x5 -> :sswitch_137
        0x6 -> :sswitch_ce
        0x7 -> :sswitch_a9
        0x8 -> :sswitch_2a
        0xb -> :sswitch_e3
        0xc -> :sswitch_3c
        0xe -> :sswitch_137
        0x10 -> :sswitch_60
        0x12 -> :sswitch_be
        0x14 -> :sswitch_f8
        0x19 -> :sswitch_84
        0x1d -> :sswitch_10d
        0x22 -> :sswitch_96
        0x24 -> :sswitch_137
        0x59 -> :sswitch_137
        0x61 -> :sswitch_84
        0x80 -> :sswitch_137
    .end sparse-switch
.end method

.method private getLandNumberKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .registers 8
    .parameter "inputMethod"

    .prologue
    const v5, 0x7f070076

    const v3, 0x7f050018

    const v4, 0x7f05003a

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v1

    packed-switch v1, :pswitch_data_134

    .line 784
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_29

    .line 786
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_13e

    .line 804
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 808
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 811
    :cond_2b
    :goto_2b
    return-object v0

    .line 705
    :pswitch_2c
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_3c

    .line 706
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050019

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 709
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 710
    goto :goto_2b

    .line 737
    :pswitch_3f
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDecimalNumber()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 738
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_57

    .line 739
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050010

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 741
    :cond_57
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_2b

    .line 742
    :cond_5a
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedNumber()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 743
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_72

    .line 744
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001d

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 746
    :cond_72
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_2b

    .line 747
    :cond_75
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedDecimalNumber()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 748
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_8d

    .line 749
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001c

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 751
    :cond_8d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_2b

    .line 752
    :cond_90
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassFlagNullNumber()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 753
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_a5

    .line 754
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 756
    :cond_a5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_2b

    .line 758
    :cond_a8
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_b5

    .line 759
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 761
    :cond_b5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 763
    goto/16 :goto_2b

    .line 765
    :pswitch_b9
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDateTime()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 766
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_d1

    .line 767
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05000e

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 769
    :cond_d1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_2b

    .line 770
    :cond_d5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDate()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 771
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_ed

    .line 772
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05000c

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 774
    :cond_ed
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_2b

    .line 775
    :cond_f1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassTime()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 776
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_109

    .line 777
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001f

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 779
    :cond_109
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_2b

    .line 788
    :pswitch_10d
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_29

    .line 791
    :pswitch_118
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f070077

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_29

    .line 795
    :pswitch_126
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f070084

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_29

    .line 703
    :pswitch_data_134
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_2c
        :pswitch_b9
    .end packed-switch

    .line 786
    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_10d
        :pswitch_118
        :pswitch_126
    .end packed-switch
.end method

.method private getLandTextLanguageKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .registers 8
    .parameter "inputMethodType"

    .prologue
    const v2, 0x7f07007f

    .line 1905
    const/4 v1, 0x0

    .line 1920
    .local v1, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getKeyboardXmlResId(I)I

    move-result v3

    .line 1923
    .local v3, xmlLayoutResId:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    .line 1925
    .local v0, inputClass:I
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v4

    packed-switch v4, :pswitch_data_68

    .line 1959
    :pswitch_15
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v4, :cond_22

    .line 1960
    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v4, v5, v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1962
    :cond_22
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1966
    :goto_24
    if-nez v1, :cond_26

    .line 1970
    :cond_26
    return-object v1

    .line 1936
    :pswitch_27
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v4

    if-eqz v4, :cond_32

    const v2, 0x7f070080

    .line 1939
    .local v2, modeId:I
    :cond_32
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v4, :cond_3f

    .line 1940
    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v4, v5, v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1942
    :cond_3f
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1943
    goto :goto_24

    .line 1945
    .end local v2           #modeId:I
    :pswitch_42
    const v2, 0x7f070082

    .line 1946
    .restart local v2       #modeId:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v4, :cond_52

    .line 1947
    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v4, v5, v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1949
    :cond_52
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1950
    goto :goto_24

    .line 1952
    .end local v2           #modeId:I
    :pswitch_55
    const v2, 0x7f070081

    .line 1953
    .restart local v2       #modeId:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v4, :cond_65

    .line 1954
    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v4, v5, v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1956
    :cond_65
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1957
    goto :goto_24

    .line 1925
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_27
        :pswitch_15
        :pswitch_55
        :pswitch_42
    .end packed-switch
.end method

.method private getNumberKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .registers 7
    .parameter "inputMethod"

    .prologue
    const v3, 0x7f070076

    const v4, 0x7f05003a

    .line 815
    const/4 v0, 0x0

    .line 817
    .local v0, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v1

    packed-switch v1, :pswitch_data_174

    .line 925
    packed-switch p1, :pswitch_data_17e

    .line 995
    :cond_13
    :goto_13
    :pswitch_13
    return-object v0

    .line 819
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_24

    .line 820
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050019

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 822
    :cond_24
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 823
    goto :goto_13

    .line 847
    :pswitch_27
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDecimalNumber()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 848
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_3f

    .line 849
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050010

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 851
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 852
    goto :goto_13

    .line 853
    :cond_42
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedNumber()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 854
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_5a

    .line 855
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001d

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 857
    :cond_5a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 858
    goto :goto_13

    .line 859
    :cond_5d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedDecimalNumber()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 860
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_75

    .line 861
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001c

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 863
    :cond_75
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSignedDecimalNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 864
    goto :goto_13

    .line 865
    :cond_78
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassFlagNullNumber()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 893
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_90

    .line 894
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050018

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 896
    :cond_90
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberOnlyKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_13

    .line 903
    :pswitch_93
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDateTime()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 904
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_ab

    .line 905
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05000e

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 907
    :cond_ab
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 908
    goto/16 :goto_13

    .line 909
    :cond_af
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassTime()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 910
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_c7

    .line 911
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05001f

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 913
    :cond_c7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 914
    goto/16 :goto_13

    .line 915
    :cond_cb
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDate()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 916
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_e3

    .line 917
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f05000c

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 919
    :cond_e3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadDateKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 920
    goto/16 :goto_13

    .line 933
    :pswitch_e7
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_fd

    .line 935
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_18e

    .line 953
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 957
    :cond_fd
    :goto_fd
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 959
    goto/16 :goto_13

    .line 937
    :pswitch_101
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_fd

    .line 940
    :pswitch_10b
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f070077

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_fd

    .line 944
    :pswitch_118
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f070084

    invoke-direct {v1, v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_fd

    .line 967
    :pswitch_125
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_135

    .line 968
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050017

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 970
    :cond_135
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadNumberKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 972
    goto/16 :goto_13

    .line 974
    :pswitch_139
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_148

    .line 975
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/high16 v3, 0x7f05

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 977
    :cond_148
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 978
    goto/16 :goto_13

    .line 980
    :pswitch_14c
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_15c

    .line 981
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050001

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 983
    :cond_15c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 984
    goto/16 :goto_13

    .line 986
    :pswitch_160
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v1, :cond_170

    .line 987
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v3, 0x7f050002

    invoke-direct {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 989
    :cond_170
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_13

    .line 817
    :pswitch_data_174
    .packed-switch 0x2
        :pswitch_27
        :pswitch_14
        :pswitch_93
    .end packed-switch

    .line 925
    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_125
        :pswitch_13
        :pswitch_e7
        :pswitch_139
        :pswitch_14c
        :pswitch_160
    .end packed-switch

    .line 935
    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_101
        :pswitch_10b
        :pswitch_118
    .end packed-switch
.end method

.method private getSymbolKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .registers 14
    .parameter "vInputMethodType"

    .prologue
    const/4 v11, 0x3

    const v10, 0x7f070077

    const v7, 0x7f070076

    const v9, 0x7f05001e

    const v8, 0x7f05003a

    .line 2109
    const/4 v0, 0x0

    .line 2111
    .local v0, SymbolKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    iget v3, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2112
    .local v3, inputType:I
    and-int/lit8 v1, v3, 0xf

    .line 2113
    .local v1, inputClass:I
    and-int/lit16 v4, v3, 0xff0

    .line 2114
    .local v4, inputVariation:I
    const v5, 0xfff000

    and-int v2, v3, v5

    .line 2116
    .local v2, inputFlag:I
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_77

    .line 2152
    if-ne v1, v11, :cond_3d

    .line 2153
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_3a

    .line 2155
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f05001a

    invoke-direct {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2157
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2341
    :cond_3c
    :goto_3c
    return-object v0

    .line 2165
    :cond_3d
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_53

    .line 2167
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_1de

    .line 2185
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2189
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3c

    .line 2169
    :pswitch_56
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_53

    .line 2172
    :pswitch_60
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v10}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_53

    .line 2176
    :pswitch_6a
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070084

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_53

    .line 2193
    :cond_77
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v11, :cond_96

    .line 2194
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_93

    .line 2195
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f05001a

    invoke-direct {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2198
    :cond_93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3c

    .line 2200
    :cond_96
    const/4 v5, 0x2

    if-ne p1, v5, :cond_d3

    .line 2207
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_af

    .line 2209
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_1e8

    .line 2227
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2231
    :cond_af
    :goto_af
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_3c

    .line 2211
    :pswitch_b2
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_af

    .line 2214
    :pswitch_bc
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v10}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_af

    .line 2218
    :pswitch_c6
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070084

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_af

    .line 2233
    :cond_d3
    if-nez p1, :cond_15d

    .line 2255
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_e2

    .line 2257
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_1f2

    .line 2293
    :cond_e2
    :goto_e2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_3c

    .line 2259
    :pswitch_e6
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_e2

    .line 2262
    :pswitch_f0
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v9, v10}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_e2

    .line 2265
    :pswitch_fa
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070078

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_e2

    .line 2268
    :pswitch_107
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070079

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_e2

    .line 2271
    :pswitch_114
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsEmoticonUsable()Z

    move-result v5

    if-eqz v5, :cond_129

    .line 2272
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f07007b

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_e2

    .line 2274
    :cond_129
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f07007a

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_e2

    .line 2278
    :pswitch_136
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f07007c

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_e2

    .line 2281
    :pswitch_143
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f07007d

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_e2

    .line 2284
    :pswitch_150
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f07007e

    invoke-direct {v5, v6, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_e2

    .line 2295
    :cond_15d
    const/4 v5, 0x1

    if-ne p1, v5, :cond_19b

    .line 2296
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_176

    .line 2298
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_206

    .line 2316
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2320
    :cond_176
    :goto_176
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_3c

    .line 2300
    :pswitch_17a
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_176

    .line 2303
    :pswitch_184
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v5, v6, v8, v10}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_176

    .line 2307
    :pswitch_18e
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f070084

    invoke-direct {v5, v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_176

    .line 2321
    :cond_19b
    if-ne p1, v11, :cond_1b0

    .line 2322
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_1ac

    .line 2323
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/high16 v7, 0x7f05

    invoke-direct {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2325
    :cond_1ac
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_3c

    .line 2326
    :cond_1b0
    const/4 v5, 0x4

    if-ne p1, v5, :cond_1c7

    .line 2327
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_1c3

    .line 2328
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f050001

    invoke-direct {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2330
    :cond_1c3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_3c

    .line 2331
    :cond_1c7
    const/4 v5, 0x5

    if-ne p1, v5, :cond_3c

    .line 2332
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v5, :cond_1da

    .line 2333
    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const v7, 0x7f050002

    invoke-direct {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2335
    :cond_1da
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_3c

    .line 2167
    :pswitch_data_1de
    .packed-switch 0x1
        :pswitch_56
        :pswitch_60
        :pswitch_6a
    .end packed-switch

    .line 2209
    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_bc
        :pswitch_c6
    .end packed-switch

    .line 2257
    :pswitch_data_1f2
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_f0
        :pswitch_fa
        :pswitch_107
        :pswitch_114
        :pswitch_136
        :pswitch_143
        :pswitch_150
    .end packed-switch

    .line 2298
    :pswitch_data_206
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_184
        :pswitch_18e
    .end packed-switch
.end method

.method private getTextLanguageKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .registers 11
    .parameter "inputMethodType"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1976
    const/4 v0, 0x0

    .line 1977
    .local v0, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getKeyboardXmlResId(I)I

    move-result v2

    .line 1980
    .local v2, xmlLayoutResId:I
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    packed-switch v3, :pswitch_data_1b8

    .line 2101
    :cond_11
    :goto_11
    :pswitch_11
    if-nez v0, :cond_13

    .line 2105
    :cond_13
    return-object v0

    .line 1982
    :pswitch_14
    if-ne p1, v5, :cond_35

    .line 1983
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v3

    if-eqz v3, :cond_31

    const v1, 0x7f070080

    .line 1984
    .local v1, modeId:I
    :goto_21
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_2e

    .line 1985
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1987
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_11

    .line 1983
    .end local v1           #modeId:I
    :cond_31
    const v1, 0x7f07007f

    goto :goto_21

    .line 1988
    :cond_35
    if-ne p1, v4, :cond_4a

    .line 1989
    const v1, 0x7f07006d

    .line 1990
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_47

    .line 1991
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1993
    :cond_47
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_11

    .line 1994
    .end local v1           #modeId:I
    :cond_4a
    if-nez p1, :cond_6b

    .line 1995
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v3

    if-eqz v3, :cond_67

    const v1, 0x7f070071

    .line 1996
    .restart local v1       #modeId:I
    :goto_57
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_64

    .line 1997
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 1999
    :cond_64
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_11

    .line 1995
    .end local v1           #modeId:I
    :cond_67
    const v1, 0x7f070070

    goto :goto_57

    .line 2000
    :cond_6b
    if-ne p1, v6, :cond_80

    .line 2001
    const v1, 0x7f070070

    .line 2002
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_7d

    .line 2003
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2005
    :cond_7d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_11

    .line 2006
    .end local v1           #modeId:I
    :cond_80
    if-ne p1, v7, :cond_96

    .line 2007
    const v1, 0x7f070070

    .line 2008
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_92

    .line 2009
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2011
    :cond_92
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2012
    .end local v1           #modeId:I
    :cond_96
    if-ne p1, v8, :cond_11

    .line 2013
    const v1, 0x7f070070

    .line 2014
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_a8

    .line 2015
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2017
    :cond_a8
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2021
    .end local v1           #modeId:I
    :pswitch_ac
    if-ne p1, v5, :cond_c2

    .line 2022
    const v1, 0x7f070082

    .line 2023
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_be

    .line 2024
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2026
    :cond_be
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2027
    .end local v1           #modeId:I
    :cond_c2
    if-ne p1, v4, :cond_d8

    .line 2028
    const v1, 0x7f07006e

    .line 2029
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_d4

    .line 2030
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2032
    :cond_d4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2033
    .end local v1           #modeId:I
    :cond_d8
    if-nez p1, :cond_ee

    .line 2034
    const v1, 0x7f070072

    .line 2035
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_ea

    .line 2036
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2038
    :cond_ea
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2039
    .end local v1           #modeId:I
    :cond_ee
    if-ne p1, v6, :cond_104

    .line 2040
    const v1, 0x7f070070

    .line 2041
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_100

    .line 2042
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2044
    :cond_100
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2045
    .end local v1           #modeId:I
    :cond_104
    if-ne p1, v7, :cond_11a

    .line 2046
    const v1, 0x7f070070

    .line 2047
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_116

    .line 2048
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2050
    :cond_116
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2051
    .end local v1           #modeId:I
    :cond_11a
    if-ne p1, v8, :cond_11

    .line 2052
    const v1, 0x7f070070

    .line 2053
    .restart local v1       #modeId:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_12c

    .line 2054
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2056
    :cond_12c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2060
    .end local v1           #modeId:I
    :pswitch_130
    const v1, 0x7f070081

    .line 2061
    .restart local v1       #modeId:I
    if-ne p1, v5, :cond_149

    .line 2062
    const v1, 0x7f070081

    .line 2063
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_145

    .line 2064
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2066
    :cond_145
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2067
    :cond_149
    if-ne p1, v4, :cond_15f

    .line 2068
    const v1, 0x7f07006f

    .line 2069
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_15b

    .line 2070
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2072
    :cond_15b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2073
    :cond_15f
    if-nez p1, :cond_175

    .line 2074
    const v1, 0x7f070073

    .line 2075
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_171

    .line 2076
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2078
    :cond_171
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2079
    :cond_175
    if-ne p1, v6, :cond_18b

    .line 2080
    const v1, 0x7f070070

    .line 2081
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_187

    .line 2082
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2084
    :cond_187
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2085
    :cond_18b
    if-ne p1, v7, :cond_1a1

    .line 2086
    const v1, 0x7f070070

    .line 2087
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_19d

    .line 2088
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2090
    :cond_19d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 2091
    :cond_1a1
    if-ne p1, v8, :cond_11

    .line 2092
    const v1, 0x7f070070

    .line 2093
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-nez v3, :cond_1b3

    .line 2094
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {v3, v4, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2096
    :cond_1b3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_11

    .line 1980
    nop

    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_130
        :pswitch_ac
    .end packed-switch
.end method

.method private isHandwriting(I)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 2683
    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private makeInputMethodList()I
    .registers 7

    .prologue
    .line 2345
    const-string v2, "qwertykeyboard;12phonepad;handwritingbox1;handwritingbox2;"

    .line 2346
    .local v2, list:Ljava/lang/String;
    const-string v0, ";"

    .line 2347
    .local v0, delimiter:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2349
    .local v3, st:Ljava/util/StringTokenizer;
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2351
    :cond_e
    :goto_e
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2352
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->parseImTypeValue(Ljava/lang/String;)I

    move-result v1

    .line 2353
    .local v1, im:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_e

    .line 2354
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 2358
    .end local v1           #im:I
    :cond_2b
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    return v4
.end method


# virtual methods
.method public getBkInputMethodType()I
    .registers 2

    .prologue
    .line 1034
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mBkInputMethodType:I

    return v0
.end method

.method public getDefaultInputmethod()I
    .registers 6

    .prologue
    .line 2875
    const/4 v0, 0x0

    .line 2876
    .local v0, inputmethod:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    const-string v4, "defaultInputmethod"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2883
    .local v2, methodValue:Ljava/lang/String;
    if-nez v2, :cond_f

    move v1, v0

    .line 2901
    .end local v0           #inputmethod:I
    .local v1, inputmethod:I
    :goto_e
    return v1

    .line 2887
    .end local v1           #inputmethod:I
    .restart local v0       #inputmethod:I
    :cond_f
    const-string v3, "phonepad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2888
    const/4 v0, 0x1

    :goto_18
    move v1, v0

    .line 2901
    .end local v0           #inputmethod:I
    .restart local v1       #inputmethod:I
    goto :goto_e

    .line 2889
    .end local v1           #inputmethod:I
    .restart local v0       #inputmethod:I
    :cond_1a
    const-string v3, "qwerty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2890
    const/4 v0, 0x2

    goto :goto_18

    .line 2891
    :cond_24
    const-string v3, "handwritingbox1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2892
    const/4 v0, 0x3

    goto :goto_18

    .line 2893
    :cond_2e
    const-string v3, "handwritingbox2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2894
    const/4 v0, 0x4

    goto :goto_18

    .line 2895
    :cond_38
    const-string v3, "handwritingfull"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2896
    const/4 v0, 0x5

    goto :goto_18

    .line 2898
    :cond_42
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getDefaultInputmode()I
    .registers 6

    .prologue
    .line 2853
    const/4 v0, 0x0

    .line 2854
    .local v0, inputmode:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    const-string v4, "defaultInputmode"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2855
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_f

    move v1, v0

    .line 2871
    .end local v0           #inputmode:I
    .local v1, inputmode:I
    :goto_e
    return v1

    .line 2859
    .end local v1           #inputmode:I
    .restart local v0       #inputmode:I
    :cond_f
    const-string v3, "korean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2860
    const/4 v0, 0x1

    :goto_18
    move v1, v0

    .line 2871
    .end local v0           #inputmode:I
    .restart local v1       #inputmode:I
    goto :goto_e

    .line 2861
    .end local v1           #inputmode:I
    .restart local v0       #inputmode:I
    :cond_1a
    const-string v3, "english"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2862
    const/4 v0, 0x2

    goto :goto_18

    .line 2863
    :cond_24
    const-string v3, "symbol"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2864
    const/4 v0, 0x3

    goto :goto_18

    .line 2865
    :cond_2e
    const-string v3, "numeric"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2866
    const/4 v0, 0x4

    goto :goto_18

    .line 2868
    :cond_38
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getEditortype()I
    .registers 2

    .prologue
    .line 1167
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mEditorType:I

    return v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    return-object v0
.end method

.method public getInputMethodListSize()I
    .registers 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInputMethodType()I
    .registers 2

    .prologue
    .line 1018
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    return v0
.end method

.method public getInputMode()I
    .registers 2

    .prologue
    .line 1100
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMode:I

    return v0
.end method

.method public getInputType()I
    .registers 6

    .prologue
    .line 2905
    const/4 v0, 0x0

    .line 2906
    .local v0, inputType:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    const-string v4, "inputType"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2907
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_f

    move v1, v0

    .line 2924
    .end local v0           #inputType:I
    .local v1, inputType:I
    :goto_e
    return v1

    .line 2911
    .end local v1           #inputType:I
    .restart local v0       #inputType:I
    :cond_f
    const-string v3, "ipAddress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2912
    const/4 v0, 0x1

    :cond_18
    :goto_18
    move v1, v0

    .line 2924
    .end local v0           #inputType:I
    .restart local v1       #inputType:I
    goto :goto_e

    .line 2913
    .end local v1           #inputType:I
    .restart local v0       #inputType:I
    :cond_1a
    const-string v3, "option"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2914
    const/4 v0, 0x2

    goto :goto_18

    .line 2917
    :cond_24
    const-string v3, "mmsRecipient"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2918
    const/4 v0, 0x4

    goto :goto_18

    .line 2919
    :cond_2e
    const-string v3, "month_edittext"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2920
    const/4 v0, 0x5

    goto :goto_18

    .line 2921
    :cond_38
    const-string v3, "YearDateTime_edittext"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2922
    const/4 v0, 0x6

    goto :goto_18
.end method

.method public getLatestTextInputMode()I
    .registers 2

    .prologue
    .line 1134
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mLatestTextInputMode:I

    return v0
.end method

.method public getMmsRecipientLastInputMode()I
    .registers 2

    .prologue
    .line 2957
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMmsRecipientLastInputMode:I

    return v0
.end method

.method public getRealInputMethodType()I
    .registers 4

    .prologue
    .line 2689
    const/4 v0, 0x2

    .line 2690
    .local v0, inputMethod:I
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_16

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_16

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 2693
    :cond_16
    const/4 v0, 0x0

    .line 2756
    :goto_17
    return v0

    .line 2698
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    .line 2699
    const/4 v0, 0x0

    goto :goto_17

    .line 2701
    :cond_21
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    .line 2738
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2743
    const/4 v0, 0x2

    goto :goto_17

    .line 2703
    :pswitch_34
    const/4 v0, 0x0

    .line 2704
    goto :goto_17

    .line 2712
    :pswitch_36
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2720
    const/4 v0, 0x2

    goto :goto_17

    .line 2725
    :cond_40
    const/4 v0, 0x0

    .line 2734
    goto :goto_17

    .line 2749
    :cond_42
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    goto :goto_17

    .line 2701
    nop

    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_36
        :pswitch_34
        :pswitch_36
    .end packed-switch
.end method

.method public getpreInputMode()I
    .registers 2

    .prologue
    .line 1123
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mpreInputMode:I

    return v0
.end method

.method public initPrivateImeOptions(Ljava/lang/String;)Z
    .registers 10
    .parameter "imeOptions"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2819
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->clear()V

    .line 2821
    if-nez p1, :cond_b

    move v5, v6

    .line 2849
    :goto_a
    return v5

    .line 2826
    :cond_b
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v7, ";"

    invoke-direct {v1, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    .local v1, st1:Ljava/util/StringTokenizer;
    :cond_12
    :goto_12
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 2828
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 2829
    .local v3, token:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v7, "="

    invoke-direct {v2, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    .local v2, st2:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 2831
    .local v0, key:Ljava/lang/String;
    :goto_2d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 2832
    .local v4, value:Ljava/lang/String;
    :goto_37
    if-eqz v0, :cond_12

    if-eqz v4, :cond_12

    .line 2833
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v7, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .end local v0           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_41
    move-object v0, v5

    .line 2830
    goto :goto_2d

    .restart local v0       #key:Ljava/lang/String;
    :cond_43
    move-object v4, v5

    .line 2831
    goto :goto_37

    .line 2837
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #st2:Ljava/util/StringTokenizer;
    .end local v3           #token:Ljava/lang/String;
    :cond_45
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->privateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4f

    move v5, v6

    .line 2839
    goto :goto_a

    .line 2849
    :cond_4f
    const/4 v5, 0x1

    goto :goto_a
.end method

.method public isHandwriting()Z
    .registers 3

    .prologue
    .line 2676
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2677
    .local v0, inputMethodType:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    :cond_d
    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isNumberMode()Z
    .registers 3

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSymbolMode()Z
    .registers 3

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isTextMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1087
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    if-eq v1, v0, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public makeKeyboards()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 272
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 273
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 274
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 275
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 276
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 281
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 282
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 283
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 284
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 285
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 286
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 289
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 290
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 291
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 292
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 293
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 294
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 295
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 301
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 302
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 303
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 304
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 305
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 306
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 312
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 313
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 314
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 316
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTMonthKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 317
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTYearDateTimeKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 318
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTCursorHandleKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 319
    return-void
.end method

.method public parseImTypeValue(Ljava/lang/String;)I
    .registers 4
    .parameter "inputMethod"

    .prologue
    .line 2364
    const-string v1, "12phonepad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2365
    const/4 v0, 0x0

    .line 2380
    .local v0, im:I
    :goto_9
    return v0

    .line 2366
    .end local v0           #im:I
    :cond_a
    const-string v1, "20keypad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2367
    const/4 v0, 0x1

    .restart local v0       #im:I
    goto :goto_9

    .line 2368
    .end local v0           #im:I
    :cond_14
    const-string v1, "qwertykeyboard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2369
    const/4 v0, 0x2

    .restart local v0       #im:I
    goto :goto_9

    .line 2370
    .end local v0           #im:I
    :cond_1e
    const-string v1, "handwritingbox1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2371
    const/4 v0, 0x3

    .restart local v0       #im:I
    goto :goto_9

    .line 2372
    .end local v0           #im:I
    :cond_28
    const-string v1, "handwritingbox2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2373
    const/4 v0, 0x4

    .restart local v0       #im:I
    goto :goto_9

    .line 2374
    .end local v0           #im:I
    :cond_32
    const-string v1, "handwritingfull"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2375
    const/4 v0, 0x5

    .restart local v0       #im:I
    goto :goto_9

    .line 2377
    .end local v0           #im:I
    :cond_3c
    const/4 v0, -0x1

    .restart local v0       #im:I
    goto :goto_9
.end method

.method public setBkInputMethodType(I)V
    .registers 2
    .parameter "inputMethodType"

    .prologue
    .line 1083
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mBkInputMethodType:I

    .line 1084
    return-void
.end method

.method public setCurrentRequestedKeyboardNull(I)V
    .registers 9
    .parameter "inputmode"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 469
    .local v0, vInputMethodType:I
    packed-switch p1, :pswitch_data_190

    .line 604
    :cond_c
    :goto_c
    return-void

    .line 471
    :pswitch_d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 472
    if-ne v0, v3, :cond_c

    .line 473
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_20

    .line 474
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 475
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_29

    .line 476
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 477
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 478
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 484
    :cond_32
    if-ne v0, v3, :cond_4f

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_3d

    .line 486
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 487
    :cond_3d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_46

    .line 488
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 489
    :cond_46
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 490
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 492
    :cond_4f
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6d

    .line 493
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_5b

    .line 494
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 495
    :cond_5b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_64

    .line 496
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 497
    :cond_64
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 498
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 500
    :cond_6d
    if-nez v0, :cond_8a

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_78

    .line 502
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 503
    :cond_78
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_81

    .line 504
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 505
    :cond_81
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 506
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlT9Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto :goto_c

    .line 508
    :cond_8a
    if-ne v0, v4, :cond_90

    .line 509
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 510
    :cond_90
    if-ne v0, v5, :cond_96

    .line 511
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 512
    :cond_96
    if-ne v0, v6, :cond_c

    .line 513
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 520
    :pswitch_9c
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearLastKey()V

    .line 521
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 522
    if-ne v0, v3, :cond_c

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_b5

    .line 524
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 525
    :cond_b5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_bf

    .line 526
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 527
    :cond_bf
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 528
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 534
    :cond_c9
    if-ne v0, v3, :cond_e9

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_d5

    .line 536
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 537
    :cond_d5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_df

    .line 538
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 539
    :cond_df
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 540
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 542
    :cond_e9
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10a

    .line 543
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_f6

    .line 544
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 545
    :cond_f6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_100

    .line 546
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 547
    :cond_100
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 548
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 550
    :cond_10a
    if-nez v0, :cond_12a

    .line 551
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_116

    .line 552
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 553
    :cond_116
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_120

    .line 554
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 555
    :cond_120
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 556
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadUrlKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 558
    :cond_12a
    if-ne v0, v4, :cond_130

    .line 559
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 560
    :cond_130
    if-ne v0, v5, :cond_136

    .line 561
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 562
    :cond_136
    if-ne v0, v6, :cond_c

    .line 563
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 570
    :pswitch_13c
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 571
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 572
    :cond_148
    if-ne v0, v4, :cond_14e

    .line 573
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 574
    :cond_14e
    if-ne v0, v5, :cond_154

    .line 575
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 576
    :cond_154
    if-ne v0, v6, :cond_15a

    .line 577
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 579
    :cond_15a
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadPhoneKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 583
    :pswitch_15e
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 584
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 586
    :cond_16a
    if-ne v0, v3, :cond_170

    .line 587
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 588
    :cond_170
    if-nez v0, :cond_176

    .line 589
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 590
    :cond_176
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17d

    .line 591
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 592
    :cond_17d
    if-ne v0, v4, :cond_183

    .line 593
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox1Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 594
    :cond_183
    if-ne v0, v5, :cond_189

    .line 595
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrBox2Kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 596
    :cond_189
    if-ne v0, v6, :cond_c

    .line 597
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTHwrFullKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    goto/16 :goto_c

    .line 469
    nop

    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_d
        :pswitch_9c
        :pswitch_13c
        :pswitch_15e
    .end packed-switch
.end method

.method public setEditorType(I)V
    .registers 2
    .parameter "nType"

    .prologue
    .line 1171
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mEditorType:I

    .line 1172
    return-void
.end method

.method public setInputMethod(I)V
    .registers 2
    .parameter "inputMethod"

    .prologue
    .line 1079
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    .line 1080
    return-void
.end method

.method public setInputMethodType(I)V
    .registers 8
    .parameter "nList"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1043
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v3

    if-eq v3, p1, :cond_49

    move v0, v1

    .line 1045
    .local v0, shouldInitSymbolPageNumber:Z
    :goto_a
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting(I)Z

    move-result v3

    if-nez v3, :cond_18

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_18
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting(I)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting(I)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1047
    :cond_26
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 1050
    :cond_2c
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1051
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    .line 1065
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_41

    .line 1066
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCurrentNumberSymbolsPageNumber(I)V

    .line 1075
    :cond_41
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 1076
    return-void

    .end local v0           #shouldInitSymbolPageNumber:Z
    :cond_49
    move v0, v2

    .line 1043
    goto :goto_a

    .line 1057
    .restart local v0       #shouldInitSymbolPageNumber:Z
    :cond_4b
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v2

    if-eq v2, v5, :cond_3a

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3a

    .line 1061
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMethodType:I

    goto :goto_3a
.end method

.method public setInputMode(I)V
    .registers 3
    .parameter "nMode"

    .prologue
    .line 1107
    const/4 v0, 0x2

    if-eq v0, p1, :cond_15

    const/4 v0, 0x3

    if-eq v0, p1, :cond_15

    const/4 v0, 0x5

    if-eq v0, p1, :cond_15

    const/4 v0, 0x4

    if-eq v0, p1, :cond_15

    const/4 v0, 0x7

    if-eq v0, p1, :cond_15

    const/4 v0, 0x6

    if-eq v0, p1, :cond_15

    .line 1110
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setLatestTextInputMode(I)V

    .line 1112
    :cond_15
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mInputMode:I

    .line 1113
    return-void
.end method

.method public setInputView(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V
    .registers 2
    .parameter "keyboardView"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    .line 267
    return-void
.end method

.method public setKeyboardInputMode(I)V
    .registers 8
    .parameter "inputMode"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 333
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_8

    .line 334
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 336
    :cond_8
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_e

    .line 337
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyNumberSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 339
    :cond_e
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_14

    .line 340
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 342
    :cond_14
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_1a

    .line 343
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmailSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 345
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmoticonKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_20

    .line 346
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTPhonepadEmoticonKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 348
    :cond_20
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_26

    .line 349
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTKeypadSymbolKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 351
    :cond_26
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_2c

    .line 352
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTLandQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 354
    :cond_2c
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    if-eqz v2, :cond_32

    .line 355
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mTQwertyTextKb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 403
    :cond_32
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 405
    if-ltz p1, :cond_a3

    const/4 v2, 0x4

    if-gt p1, v2, :cond_a3

    .line 406
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 412
    :goto_3f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    .line 413
    .local v0, editorType:I
    if-ltz v0, :cond_48

    const/4 v2, 0x3

    if-le v0, v2, :cond_4c

    .line 415
    :cond_48
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    .line 418
    :cond_4c
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getCurrentRequestedKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v1

    .line 420
    .local v1, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    if-eqz v1, :cond_6e

    .line 421
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 422
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getMinWidth()I

    move-result v3

    if-le v2, v3, :cond_6e

    .line 424
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setCurrentRequestedKeyboardNull(I)V

    .line 425
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getCurrentRequestedKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v1

    .line 436
    :cond_6e
    :goto_6e
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 437
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 439
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeInputMode(I)V

    .line 441
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeKDBNum(I)V

    .line 446
    if-eqz v1, :cond_9d

    .line 447
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getMinWidth()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getHeight()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setKeyboardSize(SS)V

    .line 450
    :cond_9d
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setPreviewEnabled(Z)V

    .line 462
    return-void

    .line 409
    .end local v0           #editorType:I
    .end local v1           #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_a3
    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_3f

    .line 428
    .restart local v0       #editorType:I
    .restart local v1       #keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_a7
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getMinWidth()I

    move-result v3

    if-ge v2, v3, :cond_6e

    .line 430
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setCurrentRequestedKeyboardNull(I)V

    .line 431
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getCurrentRequestedKeyboard(I)Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    move-result-object v1

    goto :goto_6e
.end method

.method public setLatestTextInputMode(I)V
    .registers 2
    .parameter "Mode"

    .prologue
    .line 1138
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mLatestTextInputMode:I

    .line 1139
    return-void
.end method

.method public setMmsRecipientLastInputMode(I)V
    .registers 2
    .parameter "mmsRecipientLastInputMode"

    .prologue
    .line 2953
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mMmsRecipientLastInputMode:I

    .line 2954
    return-void
.end method

.method public setPreInputMethodType(I)V
    .registers 2
    .parameter "preinputmethodtype"

    .prologue
    .line 1038
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mPreInputMethodType:I

    .line 1039
    return-void
.end method

.method public setpreInputMode(I)V
    .registers 2
    .parameter "Mode"

    .prologue
    .line 1127
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->mpreInputMode:I

    .line 1128
    return-void
.end method
