.class Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;
.super Ljava/lang/Object;
.source "PeriodicTaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/inputmethod/PeriodicTaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field public lastRunTs:J

.field public final runnableTask:Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;


# direct methods
.method constructor <init>(Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;)V
    .registers 4
    .parameter "runnableTask"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;->runnableTask:Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/swype/android/inputmethod/PeriodicTaskRunner$Task;->lastRunTs:J

    .line 93
    return-void
.end method
