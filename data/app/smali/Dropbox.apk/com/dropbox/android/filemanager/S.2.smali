.class public Lcom/dropbox/android/filemanager/S;
.super Lcom/dropbox/android/util/aF;
.source "panda.py"


# instance fields
.field private final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/android/util/aF;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object p3, p0, Lcom/dropbox/android/filemanager/S;->t:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private c(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 5
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dropbox/android/filemanager/S;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/provider/E;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/dropbox/android/provider/C;

    const-string v2, "_up_folder"

    invoke-direct {v1, v0, v2}, Lcom/dropbox/android/provider/C;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 49
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/S;->f()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/S;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/filemanager/S;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/S;->h:[Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/S;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/android/filemanager/S;->j:[Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/android/filemanager/S;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_39

    .line 30
    new-instance v0, Ldbxyzptlk/i/h;

    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/v;->b()Ldbxyzptlk/i/g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Ldbxyzptlk/i/h;-><init>(Ldbxyzptlk/i/g;Landroid/database/Cursor;)V

    .line 33
    iget-object v1, p0, Lcom/dropbox/android/filemanager/S;->t:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 34
    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/S;->c(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 38
    :cond_30
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 39
    iget-object v1, p0, Lcom/dropbox/android/filemanager/S;->f:Ldbxyzptlk/a/e;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/filemanager/S;->a(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    .line 41
    :goto_38
    return-object v0

    :cond_39
    move-object v0, v1

    goto :goto_38
.end method
