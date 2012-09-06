.class public Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;
.super Landroid/widget/LinearLayout;
.source "VoiceTranslateItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceTranslateItemView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBubblePaddingPx:I

.field private mCallback:Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView$Callback;

.field private mInputText:Landroid/widget/TextView;

.field private mItemEntry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

.field private mListView:Landroid/widget/ListView;

.field private mPaddingView:Landroid/widget/LinearLayout;

.field private mTranslatedText:Landroid/widget/TextView;

.field private mTtsButton:Landroid/view/View;

.field private mWrapperItem:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method


# virtual methods
.method public addInputText(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
    .registers 7
    .parameter "itemEntry"

    .prologue
    .line 81
    iget-object v0, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputText:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputLanguage:Lcom/google/android/apps/translate/Language;

    if-nez v0, :cond_9

    .line 90
    :cond_8
    :goto_8
    return-void

    .line 85
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mInputText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/apps/translate/Language;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/Util;->setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mItemEntry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mTranslatedText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public addTranslate(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
    .registers 7
    .parameter "itemEntry"

    .prologue
    .line 96
    iget-object v0, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputText:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputLanguage:Lcom/google/android/apps/translate/Language;

    if-nez v0, :cond_9

    .line 108
    :cond_8
    :goto_8
    return-void

    .line 99
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mTranslatedText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputText:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/apps/translate/Language;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/Util;->setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;)V

    .line 105
    iget-boolean v0, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->hasTts:Z

    if-eqz v0, :cond_8

    .line 106
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mItemEntry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

    goto :goto_8
.end method

.method public initParameters(Landroid/app/Activity;Landroid/widget/ListView;)V
    .registers 5
    .parameter "activity"
    .parameter "listView"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mActivity:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mListView:Landroid/widget/ListView;

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/translate/R$dimen;->conversation_bubble_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mBubblePaddingPx:I

    .line 61
    sget v0, Lcom/google/android/apps/translate/R$id;->voice_translate_item:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mWrapperItem:Landroid/widget/FrameLayout;

    .line 62
    sget v0, Lcom/google/android/apps/translate/R$id;->conv_tts_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mTtsButton:Landroid/view/View;

    .line 63
    sget v0, Lcom/google/android/apps/translate/R$id;->s2s_input_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mInputText:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/google/android/apps/translate/R$id;->s2s_translated_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mTranslatedText:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/google/android/apps/translate/R$id;->voice_translate_item_padding:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mPaddingView:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mTtsButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 142
    .local v0, id:I
    sget v1, Lcom/google/android/apps/translate/R$id;->conv_tts_button:I

    if-eq v0, v1, :cond_14

    sget v1, Lcom/google/android/apps/translate/R$id;->voice_translate_item:I

    if-eq v0, v1, :cond_14

    sget v1, Lcom/google/android/apps/translate/R$id;->s2s_input_text:I

    if-eq v0, v1, :cond_14

    sget v1, Lcom/google/android/apps/translate/R$id;->s2s_translated_text:I

    if-ne v0, v1, :cond_29

    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mCallback:Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView$Callback;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mItemEntry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mItemEntry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

    iget-boolean v1, v1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->hasTts:Z

    if-eqz v1, :cond_29

    .line 145
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mCallback:Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView$Callback;

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mItemEntry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

    invoke-interface {v1, v2}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView$Callback;->onTts(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V

    .line 147
    :cond_29
    return-void
.end method

.method public render(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;II)V
    .registers 10
    .parameter "itemEntry"
    .parameter "position"
    .parameter "entries"

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mWrapperItem:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    .local v0, bubbleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v4, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->sourceLeft:Z

    if-eqz v4, :cond_48

    .line 118
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mWrapperItem:Landroid/widget/FrameLayout;

    sget v5, Lcom/google/android/apps/translate/R$drawable;->conversation_bubble_left:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 119
    iget v4, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mBubblePaddingPx:I

    invoke-virtual {v0, v3, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 124
    :goto_19
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mWrapperItem:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    add-int/lit8 v4, p3, -0x1

    if-ne p2, v4, :cond_55

    const/4 v1, 0x1

    .line 126
    .local v1, isLastItem:Z
    :goto_23
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mPaddingView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_57

    :goto_27
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->setMinimumHeight(I)V

    .line 128
    if-eqz v1, :cond_47

    .line 131
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/apps/translate/R$dimen;->s2s_list_top_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 132
    .local v2, topPadding:F
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    float-to-int v4, v2

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->setMinimumHeight(I)V

    .line 134
    .end local v2           #topPadding:F
    :cond_47
    return-void

    .line 121
    .end local v1           #isLastItem:Z
    :cond_48
    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mWrapperItem:Landroid/widget/FrameLayout;

    sget v5, Lcom/google/android/apps/translate/R$drawable;->conversation_bubble_right:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 122
    iget v4, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mBubblePaddingPx:I

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_19

    :cond_55
    move v1, v3

    .line 125
    goto :goto_23

    .line 126
    .restart local v1       #isLastItem:Z
    :cond_57
    const/16 v3, 0x8

    goto :goto_27
.end method

.method public setCallback(Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->mCallback:Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView$Callback;

    .line 75
    return-void
.end method
