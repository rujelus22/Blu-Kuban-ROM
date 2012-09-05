.class Lcom/android/browser/BookmarkUtils$2$1;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BookmarkUtils$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BookmarkUtils$2;


# direct methods
.method constructor <init>(Lcom/android/browser/BookmarkUtils$2;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/browser/BookmarkUtils$2$1;->this$0:Lcom/android/browser/BookmarkUtils$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delChildFolder(J)V
    .registers 22
    .parameter "id"

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/BookmarkUtils$2$1;->this$0:Lcom/android/browser/BookmarkUtils$2;

    iget-object v3, v3, Lcom/android/browser/BookmarkUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 285
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v3

    .line 287
    .local v4, projection:[Ljava/lang/String;
    const-string v3, "parent = ? and folder = ? and deleted =  ?"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, selection1:Ljava/lang/String;
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 289
    .local v6, selectionArg1:[Ljava/lang/String;
    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 290
    .local v14, c1:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8a

    .line 291
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 292
    const/4 v15, 0x0

    .local v15, i:I
    :goto_6c
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v15, v3, :cond_8a

    .line 293
    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 294
    .local v16, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 292
    add-int/lit8 v15, v15, 0x1

    goto :goto_6c

    .line 298
    .end local v15           #i:I
    .end local v16           #uri:Landroid/net/Uri;
    :cond_8a
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 300
    const-string v3, "parent = ? and folder = ? and deleted =  ?"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 301
    .local v10, selection:Ljava/lang/String;
    const/4 v3, 0x3

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v3

    const/4 v3, 0x1

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v3

    const/4 v3, 0x2

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v3

    .line 302
    .local v11, selectionArg:[Ljava/lang/String;
    sget-object v8, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 303
    .local v13, c:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_ff

    .line 304
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 305
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_e9
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v15, v3, :cond_118

    .line 306
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/browser/BookmarkUtils$2$1;->delChildFolder(J)V

    .line 307
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 305
    add-int/lit8 v15, v15, 0x1

    goto :goto_e9

    .line 311
    .end local v15           #i:I
    :cond_ff
    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 312
    .restart local v16       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/BookmarkUtils$2$1;->this$0:Lcom/android/browser/BookmarkUtils$2;

    iget-object v3, v3, Lcom/android/browser/BookmarkUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    .end local v16           #uri:Landroid/net/Uri;
    :cond_118
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 315
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 319
    iget-object v1, p0, Lcom/android/browser/BookmarkUtils$2$1;->this$0:Lcom/android/browser/BookmarkUtils$2;

    iget-wide v1, v1, Lcom/android/browser/BookmarkUtils$2;->val$id:J

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BookmarkUtils$2$1;->delChildFolder(J)V

    .line 320
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/BookmarkUtils$2$1;->this$0:Lcom/android/browser/BookmarkUtils$2;

    iget-wide v2, v2, Lcom/android/browser/BookmarkUtils$2;->val$id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 321
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/browser/BookmarkUtils$2$1;->this$0:Lcom/android/browser/BookmarkUtils$2;

    iget-object v1, v1, Lcom/android/browser/BookmarkUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    return-void
.end method
