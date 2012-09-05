.class public Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;
.super Lcom/google/android/apps/books/net/HttpHelper$WrappedIoException;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientIoException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mRetry:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 4
    .parameter "detailMessage"
    .parameter "cause"
    .parameter "shouldRetry"

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$WrappedIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    iput-boolean p3, p0, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;->mRetry:Z

    .line 389
    return-void
.end method


# virtual methods
.method public shouldRetry()Z
    .registers 2

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;->mRetry:Z

    return v0
.end method
