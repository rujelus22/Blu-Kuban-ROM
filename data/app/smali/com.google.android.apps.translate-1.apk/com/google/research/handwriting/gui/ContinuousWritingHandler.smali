.class public Lcom/google/research/handwriting/gui/ContinuousWritingHandler;
.super Ljava/lang/Object;
.source "ContinuousWritingHandler.java"

# interfaces
.implements Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    }
.end annotation


# static fields
.field public static final PLACEHOLDER:Ljava/lang/String; = "\u2026"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mContinuousWritingInternalEditing:Z

.field private mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

.field private mIcLock:Ljava/lang/Object;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

.field public final recoQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mContinuousWritingInternalEditing:Z

    .line 169
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public declared-synchronized addToQueue(ILcom/google/research/handwriting/base/StrokeList;ZC)V
    .registers 13
    .parameter "id"
    .parameter "strokes"
    .parameter "useAppendChar"
    .parameter "appendChar"

    .prologue
    .line 180
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CWH.addtoQueue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToQueue: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nstrokes ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v7, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    new-instance v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;

    sget-object v3, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;-><init>(Lcom/google/research/handwriting/gui/ContinuousWritingHandler;ILcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;ZC)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CWH.addtoQueue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToQueue: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " done "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nstrokes ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_2 .. :try_end_a6} :catchall_a8

    .line 185
    monitor-exit p0

    return-void

    .line 180
    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public drawRecoQueue()V
    .registers 14

    .prologue
    const/high16 v12, 0x40a0

    const/4 v11, 0x0

    .line 188
    const/4 v8, 0x0

    .line 189
    .local v8, offsetX:F
    const v2, 0x3e4ccccd

    .line 190
    .local v2, scale:F
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 191
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    if-eqz v0, :cond_61

    .line 194
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v4}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v10, 0x3e4ccccd

    mul-float/2addr v4, v10

    invoke-virtual {v0, v11, v11, v3, v4}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->clearRegion(FFFF)V

    .line 197
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;

    .line 198
    .local v9, rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    iget-object v1, v9, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 199
    .local v1, toDraw:Lcom/google/research/handwriting/base/StrokeList;
    new-instance v6, Lcom/google/research/handwriting/base/BoundingBox;

    invoke-direct {v6, v1}, Lcom/google/research/handwriting/base/BoundingBox;-><init>(Lcom/google/research/handwriting/base/StrokeList;)V

    .line 200
    .local v6, bb:Lcom/google/research/handwriting/base/BoundingBox;
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v6}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v3

    sub-float v3, v8, v3

    invoke-virtual {v6}, Lcom/google/research/handwriting/base/BoundingBox;->top()F

    move-result v4

    sub-float v4, v12, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawStrokeList(Lcom/google/research/handwriting/base/StrokeList;FFFLandroid/graphics/Paint;)V

    .line 202
    invoke-virtual {v6}, Lcom/google/research/handwriting/base/BoundingBox;->right()F

    move-result v0

    invoke-virtual {v6}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v3

    sub-float/2addr v0, v3

    add-float/2addr v0, v12

    add-float/2addr v8, v0

    .line 203
    goto :goto_31

    .line 205
    .end local v1           #toDraw:Lcom/google/research/handwriting/base/StrokeList;
    .end local v6           #bb:Lcom/google/research/handwriting/base/BoundingBox;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    :cond_61
    return-void
.end method

.method public isInternalContinuousWritingEditing()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mContinuousWritingInternalEditing:Z

    return v0
.end method

.method public declared-synchronized numRecognitionsInBackground()I
    .registers 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRecognitionDone(ILcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)V
    .registers 25
    .parameter "id"
    .parameter "result"
    .parameter "strokes"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mIcLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_397

    .line 57
    const/4 v15, 0x2

    :try_start_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CWH.onRecognitionDone"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Starting for id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " recoQueue: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "nstrokes = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8a

    .line 60
    const/4 v15, 0x3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CWH.onRecognitionDone"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "RecoQueue is empty. Returning."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    monitor-exit v16
    :try_end_88
    .catchall {:try_start_9 .. :try_end_88} :catchall_3e9

    .line 143
    :goto_88
    monitor-exit p0

    return-void

    .line 64
    :cond_8a
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_92
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_100

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;

    .line 65
    .local v11, rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    iget v15, v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->id:I

    move/from16 v0, p1

    if-ne v15, v0, :cond_92

    .line 66
    if-eqz p2, :cond_f8

    invoke-virtual/range {p2 .. p2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getWords()Lcom/google/research/handwriting/gui/SuggestedWords;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v15

    if-lez v15, :cond_f8

    .line 67
    const/4 v15, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CWH.onRecognitionDone"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Found RR for id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " best word: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getWords()Lcom/google/research/handwriting/gui/SuggestedWords;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_f8
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->result:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    .line 71
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 76
    .end local v11           #rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    :cond_100
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->setContinuousWritingInternalEditing(Z)V

    .line 77
    const-string v12, ""

    .line 78
    .local v12, textToUse:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;

    .line 80
    .restart local v11       #rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v15}, Lcom/google/research/handwriting/gui/UIHandler;->getBookKeeper()Lcom/google/research/handwriting/gui/BookKeeper;

    move-result-object v3

    .line 81
    .local v3, bookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;
    :goto_11a
    iget-object v15, v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->result:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    sget-object v17, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-object/from16 v0, v17

    if-eq v15, v0, :cond_20d

    .line 82
    iget-object v15, v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->result:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    if-eqz v15, :cond_1dd

    iget-object v15, v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->result:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {v15}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getWords()Lcom/google/research/handwriting/gui/SuggestedWords;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v15

    if-lez v15, :cond_1dd

    .line 83
    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/BookKeeper;->contentsAsString()Ljava/lang/String;

    move-result-object v15

    const-string v17, "\u2026"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 84
    .local v9, posOfPlaceHolder:I
    iget-object v15, v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->result:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {v15}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getWords()Lcom/google/research/handwriting/gui/SuggestedWords;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 85
    .local v14, word:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->isUseAppendChar()Z

    move-result v15

    if-eqz v15, :cond_39a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-char v0, v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->appendChar:C

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, appendChar:Ljava/lang/String;
    :goto_171
    const/4 v15, 0x3

    sget-object v17, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "posOfPlaceHolder = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " word = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " appendChar = \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->result:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v9, v9, v15, v0}, Lcom/google/research/handwriting/gui/BookKeeper;->update(IILjava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V

    .line 89
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 91
    .end local v2           #appendChar:Ljava/lang/String;
    .end local v9           #posOfPlaceHolder:I
    .end local v14           #word:Ljava/lang/String;
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_39e

    .line 93
    const/4 v15, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CWH.onRecognitionDone"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "recoQueue empty"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_20d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3aa

    .line 100
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\u2026"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 110
    :goto_22c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v15}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 111
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v17, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct/range {v17 .. v17}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    .line 113
    .local v4, exText:Landroid/view/inputmethod/ExtractedText;
    if-eqz v4, :cond_3ec

    iget-object v15, v4, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v15, :cond_3ec

    .line 114
    iget-object v15, v4, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, exTextString:Ljava/lang/String;
    :goto_252
    const/4 v15, 0x3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CWH.onRecognitionDone"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "exText: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " text to use: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v15, "\u2026"

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 121
    .restart local v9       #posOfPlaceHolder:I
    const/4 v15, 0x3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CWH.onRecognitionDone"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "posOfPlaceHolder = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    if-ltz v9, :cond_3f0

    .line 123
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v17, "\u2026"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-interface {v15, v9, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v10

    .line 125
    .local v10, res:Z
    const/4 v15, 0x3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CWH.onRecognitionDone"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setSelection: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v10           #res:Z
    :goto_30e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v12, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v15}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 132
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 133
    .local v13, wantedText:Ljava/lang/String;
    const-string v15, "\u2026"

    invoke-virtual {v13, v15, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 134
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v17, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct/range {v17 .. v17}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v6

    .line 136
    .local v6, exTextWaiting:Landroid/view/inputmethod/ExtractedText;
    const/4 v15, 0x3

    sget-object v17, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ExText = Wanted? "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " == "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v15}, Lcom/google/research/handwriting/gui/UIHandler;->updateTranslatedText()V

    .line 138
    monitor-exit v16
    :try_end_377
    .catchall {:try_start_8a .. :try_end_377} :catchall_3e9

    .line 141
    :try_start_377
    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->drawRecoQueue()V

    .line 142
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "CWH.onRecognitionDone"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Ending"

    invoke-static/range {v15 .. v17}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_395
    .catchall {:try_start_377 .. :try_end_395} :catchall_397

    goto/16 :goto_88

    .line 56
    .end local v3           #bookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;
    .end local v4           #exText:Landroid/view/inputmethod/ExtractedText;
    .end local v5           #exTextString:Ljava/lang/String;
    .end local v6           #exTextWaiting:Landroid/view/inputmethod/ExtractedText;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #posOfPlaceHolder:I
    .end local v11           #rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    .end local v12           #textToUse:Ljava/lang/String;
    .end local v13           #wantedText:Ljava/lang/String;
    :catchall_397
    move-exception v15

    monitor-exit p0

    throw v15

    .line 85
    .restart local v3       #bookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #posOfPlaceHolder:I
    .restart local v11       #rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    .restart local v12       #textToUse:Ljava/lang/String;
    .restart local v14       #word:Ljava/lang/String;
    :cond_39a
    :try_start_39a
    const-string v2, ""

    goto/16 :goto_171

    .line 96
    .end local v9           #posOfPlaceHolder:I
    .end local v14           #word:Ljava/lang/String;
    :cond_39e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->recoQueue:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    check-cast v11, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;

    .restart local v11       #rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    goto/16 :goto_11a

    .line 103
    :cond_3aa
    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/BookKeeper;->contentsAsString()Ljava/lang/String;

    move-result-object v15

    const-string v17, "\u2026"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 104
    .local v8, pos:I
    const/4 v15, 0x3

    sget-object v17, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Deleting placeholder from bookkeeper:  pos = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v15, "\u2026"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v8

    const-string v17, ""

    sget-object v18, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v8, v15, v0, v1}, Lcom/google/research/handwriting/gui/BookKeeper;->update(IILjava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V

    goto/16 :goto_22c

    .line 138
    .end local v3           #bookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #pos:I
    .end local v11           #rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    .end local v12           #textToUse:Ljava/lang/String;
    :catchall_3e9
    move-exception v15

    monitor-exit v16
    :try_end_3eb
    .catchall {:try_start_39a .. :try_end_3eb} :catchall_3e9

    :try_start_3eb
    throw v15
    :try_end_3ec
    .catchall {:try_start_3eb .. :try_end_3ec} :catchall_397

    .line 116
    .restart local v3       #bookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;
    .restart local v4       #exText:Landroid/view/inputmethod/ExtractedText;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v11       #rr:Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
    .restart local v12       #textToUse:Ljava/lang/String;
    :cond_3ec
    :try_start_3ec
    const-string v5, ""

    .restart local v5       #exTextString:Ljava/lang/String;
    goto/16 :goto_252

    .line 127
    .restart local v9       #posOfPlaceHolder:I
    :cond_3f0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "CWH.onRecognitionDone"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v17, "STRANGE! Placeholder not in text field"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_410
    .catchall {:try_start_3ec .. :try_end_410} :catchall_3e9

    goto/16 :goto_30e
.end method

.method public setContinuousWritingInternalEditing(Z)V
    .registers 2
    .parameter "t"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mContinuousWritingInternalEditing:Z

    .line 44
    return-void
.end method

.method public setCurrentInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .registers 2
    .parameter "inputConnection"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 216
    return-void
.end method

.method public setHandwritingOverlayView(Lcom/google/research/handwriting/gui/HandwritingOverlayView;)V
    .registers 2
    .parameter "handwritingOverlayView"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    .line 40
    return-void
.end method

.method public setIclock(Ljava/lang/Object;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mIcLock:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public setUIHandler(Lcom/google/research/handwriting/gui/UIHandler;)V
    .registers 2
    .parameter "uIHandler"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    .line 52
    return-void
.end method
