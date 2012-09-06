.class final Lcom/dropbox/android/filemanager/o;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/filemanager/h;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .parameter

    .prologue
    .line 77
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 79
    return-object v0
.end method
