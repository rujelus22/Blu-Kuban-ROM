.class public Lcom/google/android/apps/books/model/ServiceCallbackScheduler;
.super Ljava/lang/Object;
.source "ServiceCallbackScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/ServiceCallbackScheduler$1;,
        Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCallable:Lcom/google/android/apps/books/model/ServiceCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/model/ServiceCallable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/google/android/apps/books/model/ServiceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/model/ServiceCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mExcecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static synthetic access$100(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mCallable:Lcom/google/android/apps/books/model/ServiceCallable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mCallback:Lcom/google/android/apps/books/model/ServiceCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Ljava/util/concurrent/Executor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mExcecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
