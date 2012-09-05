.class public final Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;
.super Lcom/google/android/apps/books/net/HttpHelper$WrappedIoException;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerIoException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mRetryMillis:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "detailMessage"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/net/HttpHelper$WrappedIoException;-><init>(Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;->mRetryMillis:Ljava/lang/Long;

    .line 352
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "detailMessage"
    .parameter "cause"

    .prologue
    .line 355
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$WrappedIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;->mRetryMillis:Ljava/lang/Long;

    .line 357
    return-void
.end method
