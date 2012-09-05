.class public Lcom/sec/android/inputmethod/axt9/AxT9Trace;
.super Ljava/lang/Object;
.source "AxT9Trace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final INFO:Z

.field private final TAG:Ljava/lang/String;

.field public mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field public m_MovePoint:Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

.field public m_TracePointInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public m_bTraceMode:Z

.field public m_keyIndex:I

.field public m_nPointCnt:I


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->DEBUG:Z

    .line 13
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->INFO:Z

    .line 14
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->ERROR:Z

    .line 15
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_bTraceMode:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_TracePointInfo:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    invoke-direct {v0, p0, v2, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Trace;FF)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_MovePoint:Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    .line 56
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 57
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_nPointCnt:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_keyIndex:I

    .line 59
    return-void
.end method


# virtual methods
.method public addTracePoint(Landroid/view/MotionEvent;I)Z
    .registers 6
    .parameter "me"
    .parameter "touchState"

    .prologue
    const/4 v2, 0x0

    .line 102
    if-nez p2, :cond_a

    .line 103
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_nPointCnt:I

    .line 104
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_TracePointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    :cond_a
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_nPointCnt:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_22

    .line 108
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_TracePointInfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Trace;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_nPointCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_nPointCnt:I

    .line 116
    :goto_20
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_22
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_TracePointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_TracePointInfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9Trace;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method public checkFilteringMoveEvent(Landroid/view/MotionEvent;I)Z
    .registers 9
    .parameter "me"
    .parameter "keyIndex"

    .prologue
    const/16 v5, 0x14

    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_MovePoint:Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    iget-wide v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->x:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    long-to-int v1, v1

    if-ge v1, v5, :cond_25

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_MovePoint:Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    iget-wide v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->y:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    long-to-int v1, v1

    if-lt v1, v5, :cond_2b

    .line 122
    :cond_25
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_MovePoint:Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    invoke-virtual {v1, p1}, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->set(Landroid/view/MotionEvent;)V

    .line 131
    :goto_2a
    return v0

    .line 126
    :cond_2b
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_keyIndex:I

    if-eq p2, v1, :cond_32

    .line 127
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_keyIndex:I

    goto :goto_2a

    .line 131
    :cond_32
    const/4 v0, 0x1

    goto :goto_2a
.end method

.method public moveTrace(Landroid/view/MotionEvent;I)Z
    .registers 5
    .parameter "me"
    .parameter "keyIndex"

    .prologue
    const/4 v0, 0x1

    .line 78
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_bTraceMode:Z

    if-nez v1, :cond_7

    .line 79
    const/4 v0, 0x0

    .line 84
    :cond_6
    :goto_6
    return v0

    .line 81
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->checkFilteringMoveEvent(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->addTracePoint(Landroid/view/MotionEvent;I)Z

    goto :goto_6
.end method

.method public pressTrace(Landroid/view/MotionEvent;I)Z
    .registers 9
    .parameter "me"
    .parameter "keyIndex"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 63
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_bTraceMode:Z

    if-nez v1, :cond_8

    move v5, v0

    .line 73
    :goto_7
    return v5

    .line 66
    :cond_8
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_keyIndex:I

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->addTracePoint(Landroid/view/MotionEvent;I)Z

    .line 69
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_MovePoint:Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->set(Landroid/view/MotionEvent;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_MovePoint:Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    iget-wide v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->x:J

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_MovePoint:Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    iget-wide v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->y:J

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->XT9AddTracePoint(JJZ)Z

    goto :goto_7
.end method

.method public releaseTrace(Landroid/view/MotionEvent;I)Z
    .registers 10
    .parameter "me"
    .parameter "keyIndex"

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_bTraceMode:Z

    if-nez v0, :cond_6

    .line 97
    :goto_5
    return v5

    .line 91
    :cond_6
    const/4 v6, 0x1

    .local v6, i:I
    :goto_7
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_nPointCnt:I

    if-ge v6, v0, :cond_27

    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_TracePointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    iget-wide v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->x:J

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_TracePointInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;

    iget-wide v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->y:J

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->XT9AddTracePoint(JJZ)Z

    .line 91
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 95
    :cond_27
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-long v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-long v3, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->XT9AddTracePoint(JJZ)Z

    .line 96
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace;->m_nPointCnt:I

    .line 97
    const/4 v5, 0x1

    goto :goto_5
.end method
