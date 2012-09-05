.class Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Run"
.end annotation


# instance fields
.field private bRunning:Z

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;


# direct methods
.method private constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 3
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->bRunning:Z

    .line 702
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 2

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->bRunning:Z

    return v0
.end method

.method public run()V
    .registers 1

    .prologue
    .line 707
    return-void
.end method

.method public setRunning(Z)V
    .registers 2
    .parameter "running"

    .prologue
    .line 705
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->bRunning:Z

    return-void
.end method
