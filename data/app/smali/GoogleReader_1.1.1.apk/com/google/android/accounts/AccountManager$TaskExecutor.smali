.class Lcom/google/android/accounts/AccountManager$TaskExecutor;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskExecutor"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/accounts/AccountManager$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/accounts/AccountManager$TaskExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 120
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    return-void
.end method
