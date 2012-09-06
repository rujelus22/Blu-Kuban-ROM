.class public final Lcom/dropbox/android/widget/al;
.super Ldbxyzptlk/d/a;
.source "panda.py"


# instance fields
.field protected final j:Z

.field private final k:Z

.field private final l:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;IZZLjava/util/Set;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Ldbxyzptlk/d/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 22
    iput-boolean p4, p0, Lcom/dropbox/android/widget/al;->j:Z

    .line 23
    iput-boolean p5, p0, Lcom/dropbox/android/widget/al;->k:Z

    .line 24
    iput-object p6, p0, Lcom/dropbox/android/widget/al;->l:Ljava/util/Set;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/dropbox/android/widget/LocalItemView;

    iget-boolean v1, p0, Lcom/dropbox/android/widget/al;->j:Z

    invoke-direct {v0, p1, v1}, Lcom/dropbox/android/widget/LocalItemView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/dropbox/android/widget/LocalItemView;

    .line 35
    iget-boolean v0, p0, Lcom/dropbox/android/widget/al;->k:Z

    iget-object v1, p0, Lcom/dropbox/android/widget/al;->l:Ljava/util/Set;

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/dropbox/android/widget/LocalItemView;->a(Landroid/content/Context;Landroid/database/Cursor;ZLjava/util/Set;)V

    .line 36
    return-void
.end method

.method public final c()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/dropbox/android/widget/al;->a()Landroid/database/Cursor;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_19

    .line 62
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 63
    :cond_b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 64
    sget-object v2, Lcom/dropbox/android/widget/S;->b:Lcom/dropbox/android/widget/S;

    invoke-static {v1}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v3

    if-eq v2, v3, :cond_b

    .line 70
    :cond_19
    :goto_19
    return v0

    .line 68
    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public final isEnabled(I)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0}, Lcom/dropbox/android/widget/al;->a()Landroid/database/Cursor;

    move-result-object v1

    .line 41
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 43
    invoke-static {v1}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v2

    .line 45
    sget-object v3, Lcom/dropbox/android/widget/S;->b:Lcom/dropbox/android/widget/S;

    if-ne v2, v3, :cond_11

    .line 55
    :cond_10
    :goto_10
    return v0

    .line 49
    :cond_11
    const-string v2, "is_dir"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 51
    iget-boolean v2, p0, Lcom/dropbox/android/widget/al;->j:Z

    if-eqz v2, :cond_10

    if-nez v1, :cond_10

    .line 52
    const/4 v0, 0x0

    goto :goto_10
.end method
