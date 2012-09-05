.class public Lcom/android/common/io/MoreCloseables;
.super Ljava/lang/Object;
.source "MoreCloseables.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .registers 1
    .parameter "cursor"

    .prologue
    .line 29
    if-eqz p0, :cond_5

    .line 30
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 32
    :cond_5
    return-void
.end method
