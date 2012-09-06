.class public Lcom/google/android/apps/translate/editor/InstantTranslateHandler;
.super Ljava/lang/Object;
.source "InstantTranslateHandler.java"

# interfaces
.implements Lcom/google/android/apps/translate/VoiceInput$UiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;,
        Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;,
        Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TextUpdateHandler;,
        Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    }
.end annotation


# static fields
.field private static final PLACEHOLDER:Ljava/lang/String; = "\u2026"

.field private static final TAG:Ljava/lang/String; = "InstantTranslateHandler"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

.field private mIsStopped:Z

.field private mSourceLanguage:Lcom/google/android/apps/translate/Language;

.field private mSrcHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;

.field private mSrcTextComposing:Landroid/text/SpannableStringBuilder;

.field private mTargetLanguage:Lcom/google/android/apps/translate/Language;

.field private mTranslateComposing:Landroid/text/SpannableStringBuilder;

.field private mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

.field private mTranslateThread:Ljava/lang/Thread;

.field private mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;

    .line 35
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcTextComposing:Landroid/text/SpannableStringBuilder;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mIsStopped:Z

    .line 39
    new-instance v0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;

    .line 41
    new-instance v0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateThread:Ljava/lang/Thread;

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/Language;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->doTextTranslateSync(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcTextComposing:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->setTranslateText(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/Language;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method private doTextTranslateSync(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V
    .registers 16
    .parameter "from"
    .parameter "to"
    .parameter "text"

    .prologue
    .line 294
    iget-boolean v8, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mIsStopped:Z

    if-eqz v8, :cond_5

    .line 337
    :goto_4
    return-void

    .line 297
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 299
    iget-object v8, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    const-string v9, ""

    invoke-virtual {v8, p3, v9}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->handleTranslationResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 307
    :cond_17
    iget-object v9, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    monitor-enter v9

    .line 308
    :try_start_1a
    const-string v8, "InstantTranslateHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doTextTranslateSync from="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " text="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v8, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    invoke-interface {v8, p1, p2}, Lcom/google/android/apps/translate/TranslateManager;->setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 310
    iget-object v8, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Lcom/google/android/apps/translate/TranslateManager;->setInstantTransalte(Z)V

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 312
    .local v5, start:J
    iget-object v8, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    invoke-interface {v8, p3}, Lcom/google/android/apps/translate/TranslateManager;->doTranslate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, result:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 314
    .local v0, end:J
    sub-long v10, v0, v5

    .line 315
    monitor-exit v9
    :try_end_62
    .catchall {:try_start_1a .. :try_end_62} :catchall_81

    .line 316
    const/4 v7, 0x0

    .line 319
    .local v7, translatedResult:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/translate/Translate;->getResultCode(Ljava/lang/String;)I

    move-result v2

    .line 322
    .local v2, error:I
    packed-switch v2, :pswitch_data_9e

    .line 334
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "translation error happened error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 315
    .end local v0           #end:J
    .end local v2           #error:I
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #start:J
    .end local v7           #translatedResult:Ljava/lang/String;
    :catchall_81
    move-exception v8

    :try_start_82
    monitor-exit v9
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v8

    .line 324
    .restart local v0       #end:J
    .restart local v2       #error:I
    .restart local v4       #result:Ljava/lang/String;
    .restart local v5       #start:J
    .restart local v7       #translatedResult:Ljava/lang/String;
    :pswitch_84
    const-string v8, "\t"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, items:[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x1

    if-le v8, v9, :cond_91

    .line 326
    const/4 v8, 0x1

    aget-object v7, v3, v8

    .line 328
    :cond_91
    iget-object v8, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    invoke-virtual {v8, p3, v7}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->handleTranslationResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v8, "translated text: "

    invoke-static {v8, v7}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 322
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_84
    .end packed-switch
.end method

.method static equalsExceptForDots(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 363
    .local v0, lenDiff:I
    if-nez v0, :cond_11

    .line 364
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 370
    .end local p0
    :goto_10
    return v2

    .line 365
    .restart local p0
    :cond_11
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    if-lez v0, :cond_2c

    move-object v2, p1

    :goto_1d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    if-lez v0, :cond_2e

    .end local p0
    :goto_27
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_10

    .end local v1           #sb:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_2c
    move-object v2, p0

    .line 366
    goto :goto_1d

    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_2e
    move-object p0, p1

    .line 368
    goto :goto_27

    .line 370
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_30
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private setTranslateText(Z)V
    .registers 4
    .parameter "setEllipsis"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$2;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method


# virtual methods
.method public commitSourceText()V
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mIsStopped:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    if-nez v0, :cond_9

    .line 267
    :cond_8
    :goto_8
    return-void

    .line 265
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->commit()V

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->commit()V

    goto :goto_8
.end method

.method public getTranslationText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "srcText"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcTextComposing:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public init(Landroid/app/Activity;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 7
    .parameter "activity"
    .parameter "callback"
    .parameter "sourceLanguage"
    .parameter "targetLanguage"

    .prologue
    .line 59
    const-string v0, "InstantTranslateHandler"

    const-string v1, "InstantTranslateHandler#init"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    .line 61
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mActivity:Landroid/app/Activity;

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/TranslateApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/TranslateApplication;->getTranslateManager()Lcom/google/android/apps/translate/TranslateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    .line 64
    iput-object p3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    .line 65
    iput-object p4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mIsStopped:Z

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->reset()V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 69
    const-string v0, "InstantTranslateHandler"

    const-string v1, "InstantTranslateHandler#init => mTranslateThread.start()"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    :goto_37
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->updateSourceText()V

    .line 75
    return-void

    .line 72
    :cond_3d
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->init()V

    goto :goto_37
.end method

.method public onCancelVoice()V
    .registers 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->commitSourceText()V

    .line 287
    return-void
.end method

.method public onError()V
    .registers 1

    .prologue
    .line 291
    return-void
.end method

.method public onVoiceResults(Ljava/util/List;ZZ)V
    .registers 4
    .parameter
    .parameter "canceled"
    .parameter "finished"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, recognitionResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcTextComposing:Landroid/text/SpannableStringBuilder;

    .line 255
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 256
    monitor-exit p0

    return-void

    .line 254
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mIsStopped:Z

    .line 354
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->stop()V

    .line 355
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    if-eqz v0, :cond_11

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->stop()V

    .line 358
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->reset()V

    .line 359
    return-void
.end method

.method public updateSourceText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "newSourceText"

    .prologue
    .line 280
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcTextComposing:Landroid/text/SpannableStringBuilder;

    .line 281
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$SourceTextUpdateHandler;->updateSourceText()V

    .line 282
    return-void
.end method
