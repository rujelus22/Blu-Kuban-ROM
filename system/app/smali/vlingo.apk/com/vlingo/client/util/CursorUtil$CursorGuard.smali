.class public Lcom/vlingo/client/util/CursorUtil$CursorGuard;
.super Landroid/database/CursorWrapper;
.source "CursorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/util/CursorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorGuard"
.end annotation


# instance fields
.field private cursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 92
    iput-object p1, p0, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->cursor:Landroid/database/Cursor;

    .line 93
    return-void
.end method

.method private cursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public static isValid(Landroid/database/Cursor;)Z
    .registers 2
    .parameter "cursor"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->cursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_7
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->cursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->cursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public moveToLast()Z
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->cursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public moveToNext()Z
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->cursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public moveToPosition(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->cursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public moveToPrevious()Z
    .registers 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/vlingo/client/util/CursorUtil$CursorGuard;->cursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
