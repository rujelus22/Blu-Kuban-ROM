.class public Lcom/dropbox/android/provider/SDKProvider;
.super Landroid/content/ContentProvider;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 20
    return-void
.end method

.method private static a(Landroid/net/Uri;)Lcom/dropbox/android/provider/w;
    .registers 7
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {}, Lcom/dropbox/android/provider/w;->values()[Lcom/dropbox/android/provider/w;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v4, :cond_1e

    aget-object v0, v3, v1

    .line 141
    invoke-virtual {v0}, Lcom/dropbox/android/provider/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 145
    :goto_19
    return-object v0

    .line 140
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 145
    :cond_1e
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/w;->a:Lcom/dropbox/android/provider/w;

    invoke-virtual {v1}, Lcom/dropbox/android/provider/w;->b()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 218
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 211
    if-eqz p0, :cond_6

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_6
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/w;->b:Lcom/dropbox/android/provider/w;

    invoke-virtual {v1}, Lcom/dropbox/android/provider/w;->b()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 222
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-static {}, Lcom/dropbox/android/DropboxApplication;->b()V

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 156
    invoke-static {p1}, Lcom/dropbox/android/provider/SDKProvider;->a(Landroid/net/Uri;)Lcom/dropbox/android/provider/w;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_b

    .line 158
    invoke-virtual {v0}, Lcom/dropbox/android/provider/w;->c()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-static {}, Lcom/dropbox/android/DropboxApplication;->b()V

    .line 187
    invoke-virtual {p0}, Lcom/dropbox/android/provider/SDKProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    invoke-static {p1}, Lcom/dropbox/android/provider/SDKProvider;->a(Landroid/net/Uri;)Lcom/dropbox/android/provider/w;

    move-result-object v1

    .line 189
    invoke-static {v0}, Lcom/dropbox/android/filemanager/a;->b(Landroid/content/Context;)Lcom/dropbox/android/filemanager/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v2

    if-eqz v2, :cond_17

    if-nez v1, :cond_19

    .line 190
    :cond_17
    const/4 v0, 0x0

    .line 194
    :goto_18
    return-object v0

    .line 193
    :cond_19
    invoke-virtual {v1}, Lcom/dropbox/android/provider/w;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/dropbox/android/provider/SDKProvider;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 194
    invoke-virtual {v1, p1, p2, v0}, Lcom/dropbox/android/provider/w;->a(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_18
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-static {}, Lcom/dropbox/android/DropboxApplication;->b()V

    .line 174
    invoke-virtual {p0}, Lcom/dropbox/android/provider/SDKProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 175
    invoke-static {p1}, Lcom/dropbox/android/provider/SDKProvider;->a(Landroid/net/Uri;)Lcom/dropbox/android/provider/w;

    move-result-object v0

    .line 176
    invoke-static {v6}, Lcom/dropbox/android/filemanager/a;->b(Landroid/content/Context;)Lcom/dropbox/android/filemanager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    if-nez v0, :cond_19

    .line 177
    :cond_17
    const/4 v0, 0x0

    .line 181
    :goto_18
    return-object v0

    .line 180
    :cond_19
    invoke-virtual {v0}, Lcom/dropbox/android/provider/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/dropbox/android/provider/SDKProvider;->a(Ljava/lang/String;Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 181
    invoke-virtual/range {v0 .. v6}, Lcom/dropbox/android/provider/w;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_18
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-static {}, Lcom/dropbox/android/DropboxApplication;->b()V

    .line 200
    invoke-virtual {p0}, Lcom/dropbox/android/provider/SDKProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 201
    invoke-static {p1}, Lcom/dropbox/android/provider/SDKProvider;->a(Landroid/net/Uri;)Lcom/dropbox/android/provider/w;

    move-result-object v0

    .line 202
    invoke-static {v5}, Lcom/dropbox/android/filemanager/a;->b(Landroid/content/Context;)Lcom/dropbox/android/filemanager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    if-nez v0, :cond_19

    .line 203
    :cond_17
    const/4 v0, 0x0

    .line 207
    :goto_18
    return v0

    .line 206
    :cond_19
    invoke-virtual {v0}, Lcom/dropbox/android/provider/w;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/dropbox/android/provider/SDKProvider;->a(Ljava/lang/String;Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/provider/w;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    goto :goto_18
.end method
