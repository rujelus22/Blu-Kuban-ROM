.class public Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;
.super Lcom/google/android/apps/docs/editors/kix/spans/SelectionSpan;
.source "CursorTracker.java"


# instance fields
.field private final a:I

.field private a:J

.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/CursorTracker;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

    .line 43
    invoke-direct {p0, p2}, Lcom/google/android/apps/docs/editors/kix/spans/SelectionSpan;-><init>(I)V

    .line 33
    iput v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->b:I

    .line 34
    iput v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->c:I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a:J

    .line 44
    iput p2, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a:I

    .line 45
    iput-object p3, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a:J

    .line 65
    iput p1, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->b:I

    .line 66
    iput p2, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->c:I

    .line 68
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 69
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/kix/CursorTracker;->a(Lcom/google/android/apps/docs/editors/kix/CursorTracker;)Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()Landroid/text/Editable;

    move-result-object v2

    .line 71
    invoke-interface {v2, p0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 72
    const/16 v3, 0x11

    invoke-interface {v2, p0, v0, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 73
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->b:I

    iget v1, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->c:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Z
    .registers 5

    .prologue
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/docs/editors/kix/CursorTracker$Session;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
