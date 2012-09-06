.class Lcom/android/inputmethod/latin/UserDictionary$2;
.super Ljava/lang/Thread;
.source "UserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/UserDictionary;

.field private final synthetic val$client:Landroid/content/ContentProviderClient;

.field private final synthetic val$values:Landroid/content/ContentValues;

.field private final synthetic val$word:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/UserDictionary;Ljava/lang/String;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->this$0:Lcom/android/inputmethod/latin/UserDictionary;

    iput-object p3, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$client:Landroid/content/ContentProviderClient;

    iput-object p4, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$word:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$values:Landroid/content/ContentValues;

    .line 180
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$client:Landroid/content/ContentProviderClient;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/inputmethod/latin/UserDictionary;->access$0()[Ljava/lang/String;

    move-result-object v2

    .line 185
    const-string v3, "word=? and ((locale IS NULL) or (locale=?))"

    .line 186
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$word:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x1

    iget-object v11, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->this$0:Lcom/android/inputmethod/latin/UserDictionary;

    #getter for: Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/inputmethod/latin/UserDictionary;->access$1(Lcom/android/inputmethod/latin/UserDictionary;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    .line 184
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 187
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_62

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 188
    const-string v0, "locale"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, locale:Ljava/lang/String;
    if-eqz v9, :cond_61

    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->this$0:Lcom/android/inputmethod/latin/UserDictionary;

    #getter for: Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/inputmethod/latin/UserDictionary;->access$1(Lcom/android/inputmethod/latin/UserDictionary;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 191
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 193
    .local v7, id:J
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 195
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$client:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$values:Landroid/content/ContentValues;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #id:J
    .end local v9           #locale:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_61
    :goto_61
    return-void

    .line 199
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_62
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$client:Landroid/content/ContentProviderClient;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/inputmethod/latin/UserDictionary$2;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_61

    .line 201
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_6c
    move-exception v0

    goto :goto_61
.end method
