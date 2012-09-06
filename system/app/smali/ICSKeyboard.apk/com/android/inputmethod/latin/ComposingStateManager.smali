.class public Lcom/android/inputmethod/latin/ComposingStateManager;
.super Ljava/lang/Object;
.source "ComposingStateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/latin/ComposingStateManager;


# instance fields
.field private mAutoCorrectionIndicatorOn:Z

.field private mIsComposing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/ComposingStateManager;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->sInstance:Lcom/android/inputmethod/latin/ComposingStateManager;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/ComposingStateManager;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->sInstance:Lcom/android/inputmethod/latin/ComposingStateManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isAutoCorrectionIndicatorOn()Z
    .registers 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFinishComposingText()V
    .registers 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z

    if-eqz v0, :cond_16

    .line 49
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_10

    .line 50
    sget-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->TAG:Ljava/lang/String;

    const-string v1, "Finish composing text."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 55
    :cond_16
    monitor-exit p0

    return-void

    .line 48
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStartComposingText()V
    .registers 3

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z

    if-nez v0, :cond_16

    .line 39
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_10

    .line 40
    sget-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->TAG:Ljava/lang/String;

    const-string v1, "Start composing text."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 45
    :cond_16
    monitor-exit p0

    return-void

    .line 38
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoCorrectionIndicatorOn(Z)V
    .registers 5
    .parameter "on"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mIsComposing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-nez v0, :cond_7

    .line 68
    :goto_5
    monitor-exit p0

    return-void

    .line 64
    :cond_7
    :try_start_7
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_1f

    .line 65
    sget-object v0, Lcom/android/inputmethod/latin/ComposingStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set auto correction Indicator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1f
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_22

    goto :goto_5

    .line 63
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
