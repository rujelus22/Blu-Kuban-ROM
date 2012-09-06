.class public LCV;
.super Landroid/os/Handler;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/apps/docs/editors/text/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 3
    .parameter

    .prologue
    .line 6712
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6713
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LCV;->a:Ljava/lang/ref/WeakReference;

    .line 6714
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 6736
    iget-boolean v0, p0, LCV;->a:Z

    if-nez v0, :cond_a

    .line 6737
    invoke-virtual {p0, p0}, LCV;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6738
    const/4 v0, 0x1

    iput-boolean v0, p0, LCV;->a:Z

    .line 6740
    :cond_a
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 6743
    const/4 v0, 0x0

    iput-boolean v0, p0, LCV;->a:Z

    .line 6744
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 6718
    iget-boolean v0, p0, LCV;->a:Z

    if-eqz v0, :cond_5

    .line 6733
    :cond_4
    :goto_4
    return-void

    .line 6722
    :cond_5
    invoke-virtual {p0, p0}, LCV;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6724
    iget-object v0, p0, LCV;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/text/TextView;

    .line 6726
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->c(Lcom/google/android/apps/docs/editors/text/TextView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6727
    iget-object v1, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v1, :cond_1f

    .line 6728
    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)V

    .line 6731
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, LCV;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method
