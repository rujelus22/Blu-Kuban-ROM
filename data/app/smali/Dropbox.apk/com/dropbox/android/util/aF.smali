.class public Lcom/dropbox/android/util/aF;
.super Ldbxyzptlk/a/a;
.source "panda.py"


# instance fields
.field protected final f:Ldbxyzptlk/a/e;

.field protected g:Landroid/net/Uri;

.field protected h:[Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:[Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field l:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Ldbxyzptlk/a/a;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v0, Ldbxyzptlk/a/e;

    invoke-direct {v0, p0}, Ldbxyzptlk/a/e;-><init>(Ldbxyzptlk/a/d;)V

    iput-object v0, p0, Lcom/dropbox/android/util/aF;->f:Ldbxyzptlk/a/e;

    .line 118
    iput-object p2, p0, Lcom/dropbox/android/util/aF;->g:Landroid/net/Uri;

    .line 119
    iput-object p3, p0, Lcom/dropbox/android/util/aF;->h:[Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/dropbox/android/util/aF;->i:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/dropbox/android/util/aF;->j:[Ljava/lang/String;

    .line 122
    iput-object p6, p0, Lcom/dropbox/android/util/aF;->k:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .registers 4
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/dropbox/android/util/aF;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 81
    if-eqz p1, :cond_b

    .line 82
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_b
    :goto_b
    return-void

    .line 86
    :cond_c
    iget-object v0, p0, Lcom/dropbox/android/util/aF;->l:Landroid/database/Cursor;

    .line 87
    iput-object p1, p0, Lcom/dropbox/android/util/aF;->l:Landroid/database/Cursor;

    .line 89
    invoke-virtual {p0}, Lcom/dropbox/android/util/aF;->k()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 90
    invoke-super {p0, p1}, Ldbxyzptlk/a/a;->b(Ljava/lang/Object;)V

    .line 93
    :cond_19
    if-eqz v0, :cond_b

    if-eq v0, p1, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b
.end method

.method protected final a(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/android/util/aF;->f:Ldbxyzptlk/a/e;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/util/aF;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Ldbxyzptlk/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 214
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dropbox/android/util/aF;->g:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/dropbox/android/util/aF;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dropbox/android/util/aF;->i:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/dropbox/android/util/aF;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dropbox/android/util/aF;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dropbox/android/util/aF;->l:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public final b(Landroid/database/Cursor;)V
    .registers 3
    .parameter

    .prologue
    .line 153
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_b
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/util/aF;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/dropbox/android/util/aF;->f()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/dropbox/android/util/aF;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/util/aF;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/dropbox/android/util/aF;->h:[Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/util/aF;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/android/util/aF;->j:[Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/android/util/aF;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_20

    .line 62
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 63
    iget-object v1, p0, Lcom/dropbox/android/util/aF;->f:Ldbxyzptlk/a/e;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/util/aF;->a(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    .line 65
    :cond_20
    return-object v0
.end method

.method protected final g()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dropbox/android/util/aF;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lcom/dropbox/android/util/aF;->l:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/util/aF;->a(Landroid/database/Cursor;)V

    .line 137
    :cond_9
    invoke-virtual {p0}, Lcom/dropbox/android/util/aF;->t()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/dropbox/android/util/aF;->l:Landroid/database/Cursor;

    if-nez v0, :cond_16

    .line 138
    :cond_13
    invoke-virtual {p0}, Lcom/dropbox/android/util/aF;->o()V

    .line 140
    :cond_16
    return-void
.end method

.method protected final h()V
    .registers 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/dropbox/android/util/aF;->b()Z

    .line 149
    return-void
.end method

.method protected final i()V
    .registers 2

    .prologue
    .line 160
    invoke-super {p0}, Ldbxyzptlk/a/a;->i()V

    .line 163
    invoke-virtual {p0}, Lcom/dropbox/android/util/aF;->h()V

    .line 165
    iget-object v0, p0, Lcom/dropbox/android/util/aF;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/dropbox/android/util/aF;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 166
    iget-object v0, p0, Lcom/dropbox/android/util/aF;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/util/aF;->l:Landroid/database/Cursor;

    .line 169
    return-void
.end method
