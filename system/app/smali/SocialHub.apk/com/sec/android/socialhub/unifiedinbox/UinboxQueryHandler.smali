.class public final Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "UinboxQueryHandler.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field mIQuery:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;

.field private mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "arg0"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 22
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mIQuery:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 32
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mSelection:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .registers 4
    .parameter "arg0"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 22
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mIQuery:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 32
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mSelection:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 44
    iput-object p2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 109
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 112
    :cond_c
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 65
    const-string v0, "UinboxListQueryHandler"

    const-string v1, "onQuerycomplete()"

    const-string v3, "is called"

    invoke-static {v0, v1, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-nez p3, :cond_2c

    .line 69
    const-string v0, "UnifiedInbox"

    const-string v1, "onQuerycomplete()"

    const-string v3, "Cursor is null! so, restart query"

    invoke-static {v0, v1, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mSelection:Ljava/lang/String;

    const-string v7, "_order, account_id asc"

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "UinboxListQueryHandler"

    const-string v1, "onQuerycomplete()"

    const-string v2, "query end"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_2b
    return-void

    .line 81
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_37

    .line 83
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 84
    iput-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 87
    :cond_37
    iput-object p3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 89
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    if-eqz v0, :cond_4c

    .line 92
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mIQuery:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;

    if-eqz v0, :cond_46

    .line 94
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mIQuery:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;

    invoke-interface {v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;->onQueryComplete()V

    .line 97
    :cond_46
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_2b

    .line 101
    :cond_4c
    const-string v0, "UinboxListQueryHandler"

    const-string v1, "onQueryComplete()"

    const-string v2, "adpater is null!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 59
    check-cast p1, Landroid/widget/SimpleCursorAdapter;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 60
    return-void
.end method

.method public setOnQuery(Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;)V
    .registers 2
    .parameter "param"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mIQuery:Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler$IQuery;

    .line 50
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .registers 2
    .parameter "selection"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxQueryHandler;->mSelection:Ljava/lang/String;

    .line 55
    return-void
.end method
