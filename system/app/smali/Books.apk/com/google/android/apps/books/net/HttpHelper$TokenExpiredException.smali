.class public final Lcom/google/android/apps/books/net/HttpHelper$TokenExpiredException;
.super Lcom/google/android/apps/books/net/HttpHelper$AuthIoException;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenExpiredException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "cause"

    .prologue
    .line 434
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$AuthIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    return-void
.end method
