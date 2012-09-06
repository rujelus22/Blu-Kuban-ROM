.class Lcom/android/inputmethod/deprecated/VoiceProxy$5;
.super Ljava/lang/Object;
.source "VoiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/deprecated/VoiceProxy;->switchToRecognitionStatusView(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

.field private final synthetic val$configuration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/deprecated/VoiceProxy;Landroid/content/res/Configuration;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iput-object p2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->val$configuration:Landroid/content/res/Configuration;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 572
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    const/4 v8, 0x1

    #setter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mRecognizing:Z
    invoke-static {v7, v8}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$5(Lcom/android/inputmethod/deprecated/VoiceProxy;Z)V

    .line 573
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;
    invoke-static {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$2(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->newView()V

    .line 574
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;
    invoke-static {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$2(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->getView()Landroid/view/View;

    move-result-object v6

    .line 576
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 577
    .local v4, p:Landroid/view/ViewParent;
    if-eqz v4, :cond_28

    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_28

    .line 578
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #p:Landroid/view/ViewParent;
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 581
    :cond_28
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v3

    .line 587
    .local v3, keyboardView:Landroid/view/View;
    if-eqz v3, :cond_6f

    .line 588
    const v7, 0x7f070045

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 590
    .local v5, popupLayout:Landroid/view/View;
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$0(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 591
    .local v1, displayHeight:I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 592
    .local v0, currentHeight:I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 593
    .local v2, keyboardHeight:I
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mMinimumVoiceRecognitionViewHeightPixel:I
    invoke-static {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$6(Lcom/android/inputmethod/deprecated/VoiceProxy;)I

    move-result v7

    if-gt v7, v2, :cond_63

    .line 594
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mMinimumVoiceRecognitionViewHeightPixel:I
    invoke-static {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$6(Lcom/android/inputmethod/deprecated/VoiceProxy;)I

    move-result v7

    if-le v7, v0, :cond_91

    .line 595
    :cond_63
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 596
    iget-object v8, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mMinimumVoiceRecognitionViewHeightPixel:I
    invoke-static {v8}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$6(Lcom/android/inputmethod/deprecated/VoiceProxy;)I

    move-result v8

    .line 595
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 602
    .end local v0           #currentHeight:I
    .end local v1           #displayHeight:I
    .end local v2           #keyboardHeight:I
    .end local v5           #popupLayout:Landroid/view/View;
    :cond_6f
    :goto_6f
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$0(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/inputmethod/latin/LatinIME;->setInputView(Landroid/view/View;)V

    .line 603
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$0(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME;->updateInputViewShown()V

    .line 605
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->val$configuration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_90

    .line 606
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->this$0:Lcom/android/inputmethod/deprecated/VoiceProxy;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;
    invoke-static {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy;->access$2(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$5;->val$configuration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 608
    :cond_90
    return-void

    .line 597
    .restart local v0       #currentHeight:I
    .restart local v1       #displayHeight:I
    .restart local v2       #keyboardHeight:I
    .restart local v5       #popupLayout:Landroid/view/View;
    :cond_91
    if-gt v2, v0, :cond_97

    .line 598
    div-int/lit8 v7, v1, 0x6

    if-le v2, v7, :cond_6f

    .line 599
    :cond_97
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6f
.end method
