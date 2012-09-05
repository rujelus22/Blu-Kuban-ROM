.class public Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;
.super Ljava/lang/Object;
.source "TrimBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/trim/TrimBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrimUndoRedoInfo"
.end annotation


# static fields
.field public static final TRIM_LEFT_END:I = 0x1

.field public static final TRIM_RIGHT_END:I = 0x2


# instance fields
.field private isUndo:Z

.field private time:F

.field private view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

.field private whichEnd:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->isUndo:Z

    .line 491
    return-void
.end method


# virtual methods
.method public getTime()F
    .registers 2

    .prologue
    .line 523
    iget v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->time:F

    return v0
.end method

.method public getVideoClipViewGroup()Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    return-object v0
.end method

.method public getWhichEnd()I
    .registers 2

    .prologue
    .line 515
    iget v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->whichEnd:I

    return v0
.end method

.method public isUndo()Z
    .registers 2

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->isUndo:Z

    return v0
.end method

.method public setTime(F)V
    .registers 3
    .parameter "time"

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->isUndo:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->isUndo:Z

    .line 528
    iput p1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->time:F

    .line 529
    return-void

    .line 527
    :cond_a
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setTrimUndoRedoInfo(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;IF)V
    .registers 6
    .parameter "view"
    .parameter "whichEnd"
    .parameter "time"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 504
    iput p2, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->whichEnd:I

    .line 505
    iput p3, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->time:F

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->isUndo:Z

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " end :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public setView(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 533
    return-void
.end method

.method public setWhichEnd(I)V
    .registers 2
    .parameter "whichEnd"

    .prologue
    .line 536
    iput p1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$TrimUndoRedoInfo;->whichEnd:I

    .line 537
    return-void
.end method
