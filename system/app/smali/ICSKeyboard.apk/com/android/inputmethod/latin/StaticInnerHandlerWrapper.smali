.class public Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.super Landroid/os/Handler;
.source "StaticInnerHandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private final mOuterInstanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;,"Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper<TT;>;"
    .local p1, outerInstance:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 30
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outerInstance is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->mOuterInstanceRef:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;)V
    .registers 5
    .parameter
    .parameter "looper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;,"Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper<TT;>;"
    .local p1, outerInstance:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outerInstance is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->mOuterInstanceRef:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method


# virtual methods
.method public getOuterInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;,"Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper<TT;>;"
    iget-object v0, p0, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->mOuterInstanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
