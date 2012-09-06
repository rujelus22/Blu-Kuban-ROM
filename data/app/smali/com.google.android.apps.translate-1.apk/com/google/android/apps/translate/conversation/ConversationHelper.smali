.class public Lcom/google/android/apps/translate/conversation/ConversationHelper;
.super Ljava/lang/Object;
.source "ConversationHelper.java"

# interfaces
.implements Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView$Callback;
.implements Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;,
        Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;
    }
.end annotation


# static fields
.field private static final ALWAYS_SHOW_MENU_ITEMS:Z = true

.field private static final DEBUG:Z = false

.field private static final DUMMY_OUTPUT:Ljava/lang/String; = "-----"

.field private static final TAG:Ljava/lang/String; = "ConversationHelper"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

.field private mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

.field private mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

.field private mEntries:I

.field private mListView:Landroid/widget/ListView;

.field private mNetworkTtsCallback:Lcom/google/android/apps/translate/NetworkTts$Callback;

.field private mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

.field private mTts:Lcom/google/android/apps/translate/MyTts;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;-><init>(Lcom/google/android/apps/translate/conversation/ConversationHelper;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mAdapter:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mEntries:I

    .line 60
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/conversation/ConversationHelper$1;-><init>(Lcom/google/android/apps/translate/conversation/ConversationHelper;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mNetworkTtsCallback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/conversation/ConversationHelper;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/conversation/ConversationHelper;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/conversation/ConversationHelper;Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->doTextTranslateSync(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/conversation/ConversationHelper;)Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mAdapter:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/conversation/ConversationHelper;Ljava/lang/String;Lcom/google/android/apps/translate/Language;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->doTtsSync(Ljava/lang/String;Lcom/google/android/apps/translate/Language;)V

    return-void
.end method

.method private canSpeak(Ljava/lang/String;)Z
    .registers 5
    .parameter "shortName"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mTts:Lcom/google/android/apps/translate/MyTts;

    if-nez v1, :cond_6

    .line 388
    const/4 v0, 0x0

    .line 393
    :goto_5
    return v0

    .line 391
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mTts:Lcom/google/android/apps/translate/MyTts;

    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->languageShortNameToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/MyTts;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v0

    .line 392
    .local v0, isAvailable:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is TTS available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private debugPrintAdapter()V
    .registers 7

    .prologue
    .line 424
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mAdapter:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->getCount()I

    move-result v0

    .line 425
    .local v0, count:I
    const-string v3, "ConversationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "debugPrintAdapter count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v0, :cond_e7

    .line 427
    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mAdapter:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

    .line 428
    .local v2, item:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;
    const-string v3, "ConversationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==== item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v3, "ConversationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputLanguage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v3, "ConversationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outputLanguage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v3, "ConversationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v3, "ConversationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outputText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v3, "ConversationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasTts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->hasTts:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v3, "ConversationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sourceLeft="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->sourceLeft:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    .line 436
    .end local v2           #item:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;
    :cond_e7
    return-void
.end method

.method private doTextTranslateAsync(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
    .registers 4
    .parameter "entry"

    .prologue
    .line 286
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/translate/conversation/ConversationHelper$2;-><init>(Lcom/google/android/apps/translate/conversation/ConversationHelper;Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V

    .line 293
    .local v0, translateRunnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 294
    return-void
.end method

.method private doTextTranslateSync(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
    .registers 16
    .parameter "entry"

    .prologue
    const/4 v13, 0x1

    .line 297
    const-string v9, "ConversationHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doTextTranslateSync entry.outputText="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputLanguage:Lcom/google/android/apps/translate/Language;

    .line 299
    .local v1, from:Lcom/google/android/apps/translate/Language;
    iget-object v7, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputLanguage:Lcom/google/android/apps/translate/Language;

    .line 300
    .local v7, to:Lcom/google/android/apps/translate/Language;
    iget-object v6, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputText:Ljava/lang/String;

    .line 307
    .local v6, text:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    monitor-enter v10

    .line 308
    :try_start_24
    const-string v9, "ConversationHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doTextTranslateSync from="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " text="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v9, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    invoke-interface {v9, v1, v7}, Lcom/google/android/apps/translate/TranslateManager;->setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 310
    iget-object v9, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    invoke-interface {v9, v6}, Lcom/google/android/apps/translate/TranslateManager;->doTranslate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, result:Ljava/lang/String;
    monitor-exit v10
    :try_end_5c
    .catchall {:try_start_24 .. :try_end_5c} :catchall_99

    .line 312
    const/4 v8, 0x0

    .line 318
    .local v8, translatedResult:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/translate/Translate;->getResultCode(Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, error:I
    if-nez v0, :cond_9c

    .line 324
    const-string v9, "\t"

    const/4 v10, 0x3

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, items:[Ljava/lang/String;
    array-length v9, v2

    if-le v9, v13, :cond_6f

    .line 326
    aget-object v8, v2, v13

    .line 334
    .end local v2           #items:[Ljava/lang/String;
    :cond_6f
    :goto_6f
    iget-object v9, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    if-eqz v9, :cond_78

    .line 335
    iget-object v9, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v9}, Lcom/google/android/apps/translate/editor/EditPanelView;->onTranslationDone()V

    .line 340
    :cond_78
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 341
    const-string v9, "-----"

    iput-object v9, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputText:Ljava/lang/String;

    .line 342
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->hasTts:Z

    .line 343
    const-string v8, "null"

    .line 351
    :goto_87
    const-string v9, "translated text: "

    invoke-static {v9, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget v4, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->position:I

    .line 354
    .local v4, pospos:I
    iget-object v9, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    new-instance v10, Lcom/google/android/apps/translate/conversation/ConversationHelper$3;

    invoke-direct {v10, p0}, Lcom/google/android/apps/translate/conversation/ConversationHelper$3;-><init>(Lcom/google/android/apps/translate/conversation/ConversationHelper;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 364
    return-void

    .line 311
    .end local v0           #error:I
    .end local v4           #pospos:I
    .end local v5           #result:Ljava/lang/String;
    .end local v8           #translatedResult:Ljava/lang/String;
    :catchall_99
    move-exception v9

    :try_start_9a
    monitor-exit v10
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v9

    .line 329
    .restart local v0       #error:I
    .restart local v5       #result:Ljava/lang/String;
    .restart local v8       #translatedResult:Ljava/lang/String;
    :cond_9c
    iget-object v10, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    iget-object v11, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    const/4 v9, -0x2

    if-ne v0, v9, :cond_ad

    sget v9, Lcom/google/android/apps/translate/R$string;->msg_network_error:I

    :goto_a5
    invoke-virtual {v11, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/google/android/apps/translate/Util;->showLongToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_6f

    :cond_ad
    sget v9, Lcom/google/android/apps/translate/R$string;->msg_translation_error:I

    goto :goto_a5

    .line 345
    :cond_b0
    iget-object v3, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputLanguage:Lcom/google/android/apps/translate/Language;

    .line 346
    .local v3, lang:Lcom/google/android/apps/translate/Language;
    iput-object v8, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputText:Ljava/lang/String;

    .line 347
    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->canSpeak(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->hasTts:Z

    .line 349
    invoke-direct {p0, v8, v3}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->doTtsAsync(Ljava/lang/String;Lcom/google/android/apps/translate/Language;)V

    goto :goto_87
.end method

.method private doTtsAsync(Ljava/lang/String;Lcom/google/android/apps/translate/Language;)V
    .registers 5
    .parameter "result"
    .parameter "lang"

    .prologue
    .line 367
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/translate/conversation/ConversationHelper$4;-><init>(Lcom/google/android/apps/translate/conversation/ConversationHelper;Ljava/lang/String;Lcom/google/android/apps/translate/Language;)V

    .line 374
    .local v0, ttsRunnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->post(Ljava/lang/Runnable;)Z

    .line 375
    return-void
.end method

.method private doTtsSync(Ljava/lang/String;Lcom/google/android/apps/translate/Language;)V
    .registers 4
    .parameter "result"
    .parameter "lang"

    .prologue
    .line 378
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 384
    :cond_4
    :goto_4
    return-void

    .line 381
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->canSpeak(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    invoke-direct {p0, p2, p1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->speak(Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private final getLanguages()Lcom/google/android/apps/translate/Languages;
    .registers 4

    .prologue
    .line 420
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    return-object v0
.end method

.method private speak(Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V
    .registers 8
    .parameter "language"
    .parameter "text"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_speaking:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mTts:Lcom/google/android/apps/translate/MyTts;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Util;->languageShortNameToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mNetworkTtsCallback:Lcom/google/android/apps/translate/NetworkTts$Callback;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/apps/translate/MyTts;->speak(Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/apps/translate/NetworkTts$Callback;)V

    .line 401
    return-void
.end method


# virtual methods
.method addNewTranslateEntry(Ljava/lang/String;ZLcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V
    .registers 10
    .parameter "inputText"
    .parameter "overwriteInputSource"
    .parameter "srcLang"
    .parameter "trgLang"
    .parameter "isLeft"

    .prologue
    .line 268
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "ConversationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNewTranslateEntry recognitionResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;-><init>(Lcom/google/android/apps/translate/conversation/ConversationHelper;)V

    .line 272
    .local v0, entry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;
    iput-object p1, v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputText:Ljava/lang/String;

    .line 273
    iput-object p3, v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputLanguage:Lcom/google/android/apps/translate/Language;

    .line 274
    iput-object p4, v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputLanguage:Lcom/google/android/apps/translate/Language;

    .line 275
    iput-boolean p5, v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->sourceLeft:Z

    .line 276
    iget v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mEntries:I

    iput v1, v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->position:I

    .line 277
    iget v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mEntries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mEntries:I

    .line 279
    iget-object v1, v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->inputText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 280
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->doTextTranslateAsync(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V

    .line 282
    :cond_3d
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mAdapter:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->addTranslationEntry(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V

    .line 283
    return-void
.end method

.method getConversationAdapter()Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mAdapter:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

    return-object v0
.end method

.method getConversationPanelView()Lcom/google/android/apps/translate/conversation/ConversationPanel;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    return-object v0
.end method

.method getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method init(Lcom/google/android/apps/translate/conversation/ConversationPanel;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V
    .registers 11
    .parameter "view"
    .parameter "from"
    .parameter "to"
    .parameter "inputText"

    .prologue
    .line 109
    const-string v0, "ConversationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inputText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    .line 111
    invoke-static {p2}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v0

    if-eqz v0, :cond_80

    const/4 v3, 0x0

    .line 112
    .local v3, leftLang:Lcom/google/android/apps/translate/Language;
    :goto_35
    move-object v4, p3

    .line 113
    .local v4, rightLang:Lcom/google/android/apps/translate/Language;
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->initParameters(Lcom/google/android/apps/translate/conversation/ConversationHelper;Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-direct {p0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->getLanguages()Lcom/google/android/apps/translate/Languages;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->setLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->getLeftLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v3

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->getRightLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v4

    .line 118
    iget v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mEntries:I

    if-nez v0, :cond_7f

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    if-eqz v4, :cond_7f

    invoke-virtual {v4}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 124
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->addNewTranslateEntry(Ljava/lang/String;ZLcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V

    .line 126
    :cond_7f
    return-void

    .end local v3           #leftLang:Lcom/google/android/apps/translate/Language;
    .end local v4           #rightLang:Lcom/google/android/apps/translate/Language;
    :cond_80
    move-object v3, p2

    .line 111
    goto :goto_35
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    if-nez v1, :cond_5

    .line 264
    :cond_4
    :goto_4
    return-void

    .line 250
    :cond_5
    sparse-switch p1, :sswitch_data_1e

    goto :goto_4

    .line 253
    :sswitch_9
    const/16 v1, 0x65

    if-eq p2, v1, :cond_4

    .line 257
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1c

    if-eqz p3, :cond_1c

    invoke-static {p3}, Lcom/google/android/apps/translate/VoiceInputHelper;->getRecognitionResult(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, result:Ljava/lang/String;
    :goto_16
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onVoiceRecognitionResult(Ljava/lang/String;)V

    goto :goto_4

    .line 257
    .end local v0           #result:Ljava/lang/String;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_16

    .line 250
    :sswitch_data_1e
    .sparse-switch
        0x64 -> :sswitch_9
        0xb5 -> :sswitch_9
    .end sparse-switch
.end method

.method onCreate(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/TranslateApplication;

    .line 88
    .local v0, app:Lcom/google/android/apps/translate/TranslateApplication;
    invoke-virtual {v0}, Lcom/google/android/apps/translate/TranslateApplication;->getTranslateManager()Lcom/google/android/apps/translate/TranslateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    .line 89
    invoke-virtual {v0}, Lcom/google/android/apps/translate/TranslateApplication;->getMyTts()Lcom/google/android/apps/translate/MyTts;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mTts:Lcom/google/android/apps/translate/MyTts;

    .line 90
    return-void
.end method

.method onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 443
    const-string v0, "ConversationHelper"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget v0, Lcom/google/android/apps/translate/R$menu;->conversation_activity_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method onDestroy()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    if-eqz v0, :cond_9

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onDestroy()V

    .line 235
    :cond_9
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    if-eqz v0, :cond_b

    .line 471
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 473
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 457
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 458
    .local v0, id:I
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_feedback:I

    if-ne v0, v2, :cond_13

    .line 459
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->sendFeedback(Landroid/app/Activity;Z)V

    .line 465
    :goto_12
    return v1

    .line 461
    :cond_13
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_settings:I

    if-ne v0, v2, :cond_26

    .line 462
    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/google/android/apps/translate/SettingsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_12

    .line 465
    :cond_26
    const/4 v1, 0x0

    goto :goto_12
.end method

.method onPause()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onPause()V

    .line 142
    :cond_9
    return-void
.end method

.method onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 449
    const-string v0, "ConversationHelper"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method onResume()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->onResume()V

    .line 148
    :cond_9
    return-void
.end method

.method onStart()V
    .registers 2

    .prologue
    .line 228
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Translate;->setAcceptLanguage(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onTts(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
    .registers 4
    .parameter "itemEntry"

    .prologue
    .line 416
    iget-object v0, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputText:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputLanguage:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->doTtsAsync(Ljava/lang/String;Lcom/google/android/apps/translate/Language;)V

    .line 417
    return-void
.end method

.method onVoiceInput(Lcom/google/android/apps/translate/Language;IILcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 7
    .parameter "inputLanguage"
    .parameter "requestCode"
    .parameter "resourceId"
    .parameter "im"

    .prologue
    .line 404
    const-string v0, "ConversationHelper"

    const-string v1, "onVoiceInput"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    if-eqz p1, :cond_16

    .line 406
    const-string v0, "ConversationHelper"

    const-string v1, "onVoiceInput => getVoiceInput"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->getVoiceInput(ILcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 412
    :goto_15
    return-void

    .line 409
    :cond_16
    const-string v0, "ConversationHelper"

    const-string v1, "onVoiceInput => onActivityResult"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_15
.end method

.method refreshLanguageList()V
    .registers 3

    .prologue
    .line 238
    const-string v0, "ConversationHelper"

    const-string v1, "refreshLanguageList"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->refreshLanguageList()V

    .line 240
    return-void
.end method

.method setCurrentConfirmView(Lcom/google/android/apps/translate/editor/EditPanelView;)V
    .registers 2
    .parameter "confirmView"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;

    .line 244
    return-void
.end method

.method setListView(Landroid/widget/ListView;)V
    .registers 5
    .parameter "listView"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mListView:Landroid/widget/ListView;

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 131
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mConversationPanel:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->getIntroView()Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, introView:Landroid/view/View;
    if-eqz v0, :cond_1b

    .line 134
    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 136
    :cond_1b
    return-void
.end method
