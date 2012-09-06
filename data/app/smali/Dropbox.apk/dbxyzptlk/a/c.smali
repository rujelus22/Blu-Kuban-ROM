.class public final Ldbxyzptlk/a/c;
.super Ldbxyzptlk/a/a;
.source "panda.py"


# instance fields
.field final f:Ldbxyzptlk/a/e;

.field g:Landroid/net/Uri;

.field h:[Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:[Ljava/lang/String;

.field k:Ljava/lang/String;

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
    .line 107
    invoke-direct {p0, p1}, Ldbxyzptlk/a/a;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Ldbxyzptlk/a/e;

    invoke-direct {v0, p0}, Ldbxyzptlk/a/e;-><init>(Ldbxyzptlk/a/d;)V

    iput-object v0, p0, Ldbxyzptlk/a/c;->f:Ldbxyzptlk/a/e;

    .line 109
    iput-object p2, p0, Ldbxyzptlk/a/c;->g:Landroid/net/Uri;

    .line 110
    iput-object p3, p0, Ldbxyzptlk/a/c;->h:[Ljava/lang/String;

    .line 111
    iput-object p4, p0, Ldbxyzptlk/a/c;->i:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Ldbxyzptlk/a/c;->j:[Ljava/lang/String;

    .line 113
    iput-object p6, p0, Ldbxyzptlk/a/c;->k:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .registers 4
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Ldbxyzptlk/a/c;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 72
    if-eqz p1, :cond_b

    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_b
    :goto_b
    return-void

    .line 77
    :cond_c
    iget-object v0, p0, Ldbxyzptlk/a/c;->l:Landroid/database/Cursor;

    .line 78
    iput-object p1, p0, Ldbxyzptlk/a/c;->l:Landroid/database/Cursor;

    .line 80
    invoke-virtual {p0}, Ldbxyzptlk/a/c;->k()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 81
    invoke-super {p0, p1}, Ldbxyzptlk/a/a;->b(Ljava/lang/Object;)V

    .line 84
    :cond_19
    if-eqz v0, :cond_b

    if-eq v0, p1, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b
.end method

.method final a(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Ldbxyzptlk/a/c;->f:Ldbxyzptlk/a/e;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Ldbxyzptlk/a/c;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Ldbxyzptlk/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ldbxyzptlk/a/c;->g:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Ldbxyzptlk/a/c;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ldbxyzptlk/a/c;->i:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Ldbxyzptlk/a/c;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ldbxyzptlk/a/c;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ldbxyzptlk/a/c;->l:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ldbxyzptlk/a/c;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 214
    return-void
.end method

.method public final b(Landroid/database/Cursor;)V
    .registers 3
    .parameter

    .prologue
    .line 144
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 145
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_b
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Ldbxyzptlk/a/c;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Ldbxyzptlk/a/c;->f()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 49
    invoke-virtual {p0}, Ldbxyzptlk/a/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/a/c;->g:Landroid/net/Uri;

    iget-object v2, p0, Ldbxyzptlk/a/c;->h:[Ljava/lang/String;

    iget-object v3, p0, Ldbxyzptlk/a/c;->i:Ljava/lang/String;

    iget-object v4, p0, Ldbxyzptlk/a/c;->j:[Ljava/lang/String;

    iget-object v5, p0, Ldbxyzptlk/a/c;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_20

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 54
    iget-object v1, p0, Ldbxyzptlk/a/c;->f:Ldbxyzptlk/a/e;

    invoke-virtual {p0, v0, v1}, Ldbxyzptlk/a/c;->a(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    .line 56
    :cond_20
    return-object v0
.end method

.method protected final g()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Ldbxyzptlk/a/c;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 126
    iget-object v0, p0, Ldbxyzptlk/a/c;->l:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Ldbxyzptlk/a/c;->a(Landroid/database/Cursor;)V

    .line 128
    :cond_9
    invoke-virtual {p0}, Ldbxyzptlk/a/c;->t()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Ldbxyzptlk/a/c;->l:Landroid/database/Cursor;

    if-nez v0, :cond_16

    .line 129
    :cond_13
    invoke-virtual {p0}, Ldbxyzptlk/a/c;->o()V

    .line 131
    :cond_16
    return-void
.end method

.method protected final h()V
    .registers 1

    .prologue
    .line 139
    invoke-virtual {p0}, Ldbxyzptlk/a/c;->b()Z

    .line 140
    return-void
.end method

.method protected final i()V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Ldbxyzptlk/a/a;->i()V

    .line 154
    invoke-virtual {p0}, Ldbxyzptlk/a/c;->h()V

    .line 156
    iget-object v0, p0, Ldbxyzptlk/a/c;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Ldbxyzptlk/a/c;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 157
    iget-object v0, p0, Ldbxyzptlk/a/c;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/a/c;->l:Landroid/database/Cursor;

    .line 160
    return-void
.end method
