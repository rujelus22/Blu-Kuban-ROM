.class public Lcom/vlingo/client/util/CursorUtil;
.super Ljava/lang/Object;
.source "CursorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/util/CursorUtil$CursorGuard;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static guard(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "cursor"

    .prologue
    .line 31
    new-instance v0, Lcom/vlingo/client/util/CursorUtil$CursorGuard;

    invoke-direct {v0, p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected static hasRows(Landroid/database/Cursor;)Z
    .registers 2
    .parameter "cursor"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isValid(Landroid/database/Cursor;)Z
    .registers 2
    .parameter "cursor"

    .prologue
    .line 42
    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected static moveToFirst(Landroid/database/Cursor;)Z
    .registers 2
    .parameter "cursor"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
