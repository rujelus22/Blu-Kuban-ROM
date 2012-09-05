.class public Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;
.super Ljava/io/IOException;
.source "SessionKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/SessionKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionKeyExpiredException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "cause"

    .prologue
    .line 718
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 720
    return-void
.end method
