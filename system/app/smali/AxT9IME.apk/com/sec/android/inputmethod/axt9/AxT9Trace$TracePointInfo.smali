.class Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;
.super Ljava/lang/Object;
.source "AxT9Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TracePointInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9Trace;

.field public x:J

.field public y:J


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9Trace;FF)V
    .registers 6
    .parameter
    .parameter "x"
    .parameter "y"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9Trace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    float-to-long v0, p2

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->x:J

    .line 36
    float-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->y:J

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9Trace;Landroid/view/MotionEvent;)V
    .registers 5
    .parameter
    .parameter "me"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9Trace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->x:J

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->y:J

    .line 33
    return-void
.end method


# virtual methods
.method public set(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "me"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->x:J

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Trace$TracePointInfo;->y:J

    .line 42
    return-void
.end method
