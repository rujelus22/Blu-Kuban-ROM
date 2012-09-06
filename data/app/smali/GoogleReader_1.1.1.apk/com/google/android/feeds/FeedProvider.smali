.class public final Lcom/google/android/feeds/FeedProvider;
.super Ljava/lang/Object;
.source "FeedProvider.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method private static createAnnotatedCursor(Landroid/database/Cursor;Landroid/os/Bundle;)Lcom/google/android/feeds/AnnotatedCursor;
    .registers 5
    .parameter "cursor"
    .parameter "extras"

    .prologue
    .line 49
    instance-of v2, p0, Landroid/database/CrossProcessCursor;

    if-eqz v2, :cond_e

    .line 50
    move-object v0, p0

    check-cast v0, Landroid/database/CrossProcessCursor;

    move-object v1, v0

    .line 51
    .local v1, crossProcessCursor:Landroid/database/CrossProcessCursor;
    new-instance v2, Lcom/google/android/feeds/AnnotatedCrossProcessCursor;

    invoke-direct {v2, v1, p1}, Lcom/google/android/feeds/AnnotatedCrossProcessCursor;-><init>(Landroid/database/CrossProcessCursor;Landroid/os/Bundle;)V

    .line 55
    .end local v1           #crossProcessCursor:Landroid/database/CrossProcessCursor;
    :goto_d
    return-object v2

    .line 52
    :cond_e
    if-eqz p0, :cond_16

    .line 53
    new-instance v2, Lcom/google/android/feeds/AnnotatedCursor;

    invoke-direct {v2, p0, p1}, Lcom/google/android/feeds/AnnotatedCursor;-><init>(Landroid/database/Cursor;Landroid/os/Bundle;)V

    goto :goto_d

    .line 55
    :cond_16
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static errorCursor(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/Throwable;Landroid/content/Intent;)Landroid/database/Cursor;
    .registers 6
    .parameter "cursor"
    .parameter "extras"
    .parameter "t"
    .parameter "solution"

    .prologue
    .line 98
    if-nez p1, :cond_a

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bundle is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_a
    if-nez p2, :cond_14

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Throwable is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_14
    const-string v0, "com.google.feeds.cursor.extra.ERROR"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    if-eqz p3, :cond_20

    .line 106
    const-string v0, "com.google.feeds.cursor.extra.SOLUTION"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    :cond_20
    invoke-static {p0, p1}, Lcom/google/android/feeds/FeedProvider;->feedCursor(Landroid/database/Cursor;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static evaluate(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 1
    .parameter

    .prologue
    .line 42
    if-eqz p0, :cond_5

    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 45
    :cond_5
    return-object p0
.end method

.method public static feedCursor(Landroid/database/Cursor;Landroid/os/Bundle;)Landroid/database/Cursor;
    .registers 3
    .parameter "cursor"
    .parameter "extras"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/android/feeds/FeedProvider;->evaluate(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/feeds/FeedProvider;->createAnnotatedCursor(Landroid/database/Cursor;Landroid/os/Bundle;)Lcom/google/android/feeds/AnnotatedCursor;

    move-result-object v0

    return-object v0
.end method
