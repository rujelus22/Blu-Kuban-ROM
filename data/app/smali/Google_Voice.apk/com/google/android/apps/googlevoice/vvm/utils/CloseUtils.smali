.class public Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;
.super Ljava/lang/Object;
.source "CloseUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .registers 1
    .parameter "cursor"

    .prologue
    .line 34
    if-eqz p0, :cond_5

    .line 35
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_5
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .parameter "closeable"

    .prologue
    .line 23
    if-eqz p0, :cond_5

    .line 25
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 30
    :cond_5
    :goto_5
    return-void

    .line 26
    :catch_6
    move-exception v0

    goto :goto_5
.end method
