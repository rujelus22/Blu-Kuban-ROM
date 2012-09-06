.class public Lcom/google/research/handwriting/gui/ContinuousWritingManager;
.super Ljava/lang/Object;
.source "ContinuousWritingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;,
        Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;
    }
.end annotation


# static fields
.field private static final FEEDBACK_ONKEY_CONT:Ljava/lang/String; = "onkey-cont"

.field public static final PLACEHOLDER:Ljava/lang/String; = "\u2026"

.field public static final TAG:Ljava/lang/String; = "ContinuousWritingManager"


# instance fields
.field private callbacks:Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;

.field protected recoCounter:I

.field recognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->recoCounter:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/google/research/handwriting/gui/ContinuousWritingManager;)Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->callbacks:Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;

    return-object v0
.end method


# virtual methods
.method public setCallback(Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;)V
    .registers 2
    .parameter "callbacks"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->callbacks:Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;

    .line 31
    return-void
.end method

.method public setRecognizer(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)V
    .registers 2
    .parameter "recognizer"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->recognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    .line 27
    return-void
.end method

.method public declared-synchronized startRecognition(Lcom/google/research/handwriting/base/StrokeList;)I
    .registers 6
    .parameter "strokes"

    .prologue
    const/4 v0, 0x0

    .line 59
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 60
    const-string v2, "ContinuousWritingManager"

    const-string v3, "Gracefully answering empty reco request ;-)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_5c

    .line 79
    :goto_f
    monitor-exit p0

    return v0

    .line 63
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getPreContext()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 64
    const-string v2, ""

    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getPostContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/research/handwriting/base/StrokeList;->setContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_26
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getPostContext()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 68
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getPreContext()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lcom/google/research/handwriting/base/StrokeList;->setContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_3b
    iget v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->recoCounter:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->recoCounter:I

    .line 72
    .local v0, id:I
    new-instance v1, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;-><init>(Lcom/google/research/handwriting/gui/ContinuousWritingManager;ILcom/google/research/handwriting/base/StrokeList;)V

    .line 74
    .local v1, recoTask:Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->recognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;

    move-result-object v2

    instance-of v2, v2, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;

    if-eqz v2, :cond_5f

    .line 75
    new-instance v2, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;

    invoke-direct {v2}, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_5b
    .catchall {:try_start_11 .. :try_end_5b} :catchall_5c

    goto :goto_f

    .line 59
    .end local v0           #id:I
    .end local v1           #recoTask:Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;
    :catchall_5c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 77
    .restart local v0       #id:I
    .restart local v1       #recoTask:Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;
    :cond_5f
    const/4 v2, 0x0

    :try_start_60
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_5c

    goto :goto_f
.end method
