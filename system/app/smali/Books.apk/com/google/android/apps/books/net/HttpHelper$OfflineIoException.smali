.class public final Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
.super Lcom/google/android/apps/books/net/HttpHelper$WrappedIoException;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfflineIoException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/net/HttpHelper$WrappedIoException;-><init>(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "cause"

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$WrappedIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    return-void
.end method
