.class public Lcom/sec/android/widgetapp/apnews/engine/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    .line 107
    return-void
.end method


# virtual methods
.method public getIntValue(Ljava/lang/String;)I
    .registers 11
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 212
    const/4 v7, 0x0

    .line 213
    .local v7, result:I
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "PREF_VALUE"

    aput-object v3, v2, v8

    const-string v3, "PREF_KEY = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2b

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 221
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 223
    :cond_28
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_2b
    return v7
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .registers 12
    .parameter "key"
    .parameter "dfint"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 229
    const/4 v7, 0x0

    .line 230
    .local v7, result:I
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "PREF_VALUE"

    aput-object v3, v2, v8

    const-string v3, "PREF_KEY = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 238
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 242
    :goto_28
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    :goto_2b
    return v7

    .line 240
    :cond_2c
    move v7, p2

    goto :goto_28

    .line 245
    :cond_2e
    move v7, p2

    goto :goto_2b
.end method

.method public getLongValue(Ljava/lang/String;)J
    .registers 12
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 282
    const-wide/16 v7, 0x0

    .line 283
    .local v7, result:J
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "PREF_VALUE"

    aput-object v3, v2, v9

    const-string v3, "PREF_KEY = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 289
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2c

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 291
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 293
    :cond_29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_2c
    return-wide v7
.end method

.method public getLongValue(Ljava/lang/String;J)J
    .registers 14
    .parameter "key"
    .parameter "dfint"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 299
    const-wide/16 v7, 0x0

    .line 300
    .local v7, result:J
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "PREF_VALUE"

    aput-object v3, v2, v9

    const-string v3, "PREF_KEY = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 306
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2f

    .line 307
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 308
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 312
    :goto_29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 317
    :goto_2c
    return-wide v7

    .line 310
    :cond_2d
    move-wide v7, p2

    goto :goto_29

    .line 315
    :cond_2f
    move-wide v7, p2

    goto :goto_2c
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .registers 15
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 180
    const/4 v7, 0x0

    .line 181
    .local v7, existRow:Z
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "PREF_VALUE"

    aput-object v3, v2, v10

    const-string v3, "PREF_KEY = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 187
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_28

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 189
    const/4 v7, 0x1

    .line 191
    :cond_25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_28
    if-eqz v7, :cond_4a

    .line 195
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v9, updateValues:Landroid/content/ContentValues;
    const-string v0, "PREF_VALUE"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    const-string v2, "PREF_KEY = ?"

    new-array v3, v11, [Ljava/lang/String;

    aput-object p1, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 209
    .end local v9           #updateValues:Landroid/content/ContentValues;
    :goto_49
    return-void

    .line 204
    :cond_4a
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v8, initialValues:Landroid/content/ContentValues;
    const-string v0, "PREF_KEY"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "PREF_VALUE"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_49
.end method

.method public setLongValue(Ljava/lang/String;J)V
    .registers 16
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 251
    const/4 v7, 0x0

    .line 252
    .local v7, existRow:Z
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "PREF_VALUE"

    aput-object v3, v2, v10

    const-string v3, "PREF_KEY = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 258
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_28

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 260
    const/4 v7, 0x1

    .line 262
    :cond_25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_28
    if-eqz v7, :cond_4a

    .line 266
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v9, updateValues:Landroid/content/ContentValues;
    const-string v0, "PREF_VALUE"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    const-string v2, "PREF_KEY = ?"

    new-array v3, v11, [Ljava/lang/String;

    aput-object p1, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    .end local v9           #updateValues:Landroid/content/ContentValues;
    :goto_49
    return-void

    .line 274
    :cond_4a
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v8, initialValues:Landroid/content/ContentValues;
    const-string v0, "PREF_KEY"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "PREF_VALUE"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_49
.end method
