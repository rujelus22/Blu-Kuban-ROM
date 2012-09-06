.class public final Ldbxyzptlk/i/h;
.super Lcom/dropbox/android/util/aL;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/i/g;

.field private b:Ljava/util/Set;

.field private c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ldbxyzptlk/i/g;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Ldbxyzptlk/i/h;->a:Ldbxyzptlk/i/g;

    .line 180
    invoke-direct {p0, p2}, Lcom/dropbox/android/util/aL;-><init>(Landroid/database/Cursor;)V

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/i/h;->b:Ljava/util/Set;

    .line 181
    invoke-direct {p0}, Ldbxyzptlk/i/h;->b()V

    .line 182
    return-void
.end method

.method static synthetic a(Ldbxyzptlk/i/h;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Ldbxyzptlk/i/h;->b:Ljava/util/Set;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 239
    invoke-virtual {p0}, Ldbxyzptlk/i/h;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 240
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t track closed cursors"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 247
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ldbxyzptlk/i/h;->moveToPosition(I)Z

    .line 248
    :cond_17
    :goto_17
    invoke-virtual {p0}, Ldbxyzptlk/i/h;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 249
    invoke-static {p0}, Ldbxyzptlk/i/g;->a(Landroid/database/Cursor;)Ldbxyzptlk/i/i;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_17

    .line 251
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 255
    :cond_27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/i/i;

    .line 256
    iget-object v3, p0, Ldbxyzptlk/i/h;->a:Ldbxyzptlk/i/g;

    invoke-virtual {v3, v0, p0}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;Ldbxyzptlk/i/h;)V

    goto :goto_2b

    .line 259
    :cond_3d
    iput-object v1, p0, Ldbxyzptlk/i/h;->c:Ljava/util/Set;

    .line 261
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Ldbxyzptlk/i/h;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/i/i;

    .line 210
    iget-object v2, p0, Ldbxyzptlk/i/h;->a:Ldbxyzptlk/i/g;

    invoke-virtual {v2, v0, p0}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/h;)V

    goto :goto_6

    .line 212
    :cond_18
    iget-object v0, p0, Ldbxyzptlk/i/h;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 213
    return-void
.end method

.method public final close()V
    .registers 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/dropbox/android/util/aL;->close()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/i/h;->b:Ljava/util/Set;

    .line 219
    invoke-virtual {p0}, Ldbxyzptlk/i/h;->a()V

    .line 220
    return-void
.end method

.method public final registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/dropbox/android/util/aL;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    iget-object v0, p0, Ldbxyzptlk/i/h;->b:Ljava/util/Set;

    if-eqz v0, :cond_c

    .line 226
    iget-object v0, p0, Ldbxyzptlk/i/h;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_c
    return-void
.end method

.method public final requery()Z
    .registers 2

    .prologue
    .line 200
    invoke-virtual {p0}, Ldbxyzptlk/i/h;->a()V

    .line 201
    invoke-super {p0}, Lcom/dropbox/android/util/aL;->requery()Z

    move-result v0

    .line 202
    if-eqz v0, :cond_c

    .line 203
    invoke-direct {p0}, Ldbxyzptlk/i/h;->b()V

    .line 205
    :cond_c
    return v0
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/dropbox/android/util/aL;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 233
    iget-object v0, p0, Ldbxyzptlk/i/h;->b:Ljava/util/Set;

    if-eqz v0, :cond_c

    .line 234
    iget-object v0, p0, Ldbxyzptlk/i/h;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 236
    :cond_c
    return-void
.end method
