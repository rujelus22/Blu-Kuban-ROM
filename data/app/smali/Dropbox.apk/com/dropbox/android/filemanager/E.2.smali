.class public final Lcom/dropbox/android/filemanager/E;
.super Lcom/dropbox/android/util/aF;
.source "panda.py"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/android/util/aF;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/E;->f()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/E;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/filemanager/E;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/E;->h:[Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/E;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/android/filemanager/E;->j:[Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/android/filemanager/E;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_20

    .line 23
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 24
    iget-object v1, p0, Lcom/dropbox/android/filemanager/E;->f:Ldbxyzptlk/a/e;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/filemanager/E;->a(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    .line 26
    :cond_20
    return-object v0
.end method
