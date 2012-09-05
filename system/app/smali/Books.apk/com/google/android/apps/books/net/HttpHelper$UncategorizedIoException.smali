.class public final Lcom/google/android/apps/books/net/HttpHelper$UncategorizedIoException;
.super Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UncategorizedIoException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "detailMessage"
    .parameter "cause"

    .prologue
    .line 469
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 470
    return-void
.end method
