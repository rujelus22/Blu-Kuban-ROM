.class final Lcom/dropbox/android/widget/Z;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/widget/W;)V
    .registers 2
    .parameter

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/dropbox/android/widget/Z;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .parameter

    .prologue
    .line 340
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 341
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 342
    return-object v0
.end method
