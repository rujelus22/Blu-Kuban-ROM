.class public abstract Lcom/android/emailcommon/utility/EmailAsyncTask;
.super Ljava/lang/Object;
.source "EmailAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;,
        Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private volatile mCancelled:Z

.field private final mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field private final mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 39
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/utility/EmailAsyncTask;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mCancelled:Z

    return v0
.end method


# virtual methods
.method final varargs callDoInBackgroundForTest([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final callOnCancelledForTest(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->onCancelled(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method final callOnPostExecuteForTest(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->onPostExecute(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method final unregisterSelf()V
    .registers 2

    .prologue
    .line 145
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    #calls: Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->remove(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->access$200(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 148
    :cond_9
    return-void
.end method
