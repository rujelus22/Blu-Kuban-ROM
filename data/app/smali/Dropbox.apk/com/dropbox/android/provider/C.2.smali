.class public final Lcom/dropbox/android/provider/C;
.super Lcom/dropbox/android/util/aL;
.source "panda.py"


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/dropbox/android/util/aL;-><init>(Landroid/database/Cursor;)V

    .line 19
    iput-object p2, p0, Lcom/dropbox/android/provider/C;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/dropbox/android/provider/C;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final getColumnCount()I
    .registers 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/dropbox/android/util/aL;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 51
    const-string v0, "_cursor_type_tag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 52
    invoke-virtual {p0}, Lcom/dropbox/android/provider/C;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 54
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Lcom/dropbox/android/util/aL;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public final getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 60
    const-string v0, "_cursor_type_tag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    invoke-virtual {p0}, Lcom/dropbox/android/provider/C;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 63
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Lcom/dropbox/android/util/aL;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/C;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 43
    invoke-super {p0, p1}, Lcom/dropbox/android/util/aL;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/dropbox/android/provider/C;->a:Ljava/lang/String;

    goto :goto_a
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/dropbox/android/provider/C;->getColumnCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    invoke-super {p0}, Lcom/dropbox/android/util/aL;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0}, Lcom/dropbox/android/util/aL;->getColumnCount()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    invoke-virtual {p0}, Lcom/dropbox/android/provider/C;->getColumnCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, "_cursor_type_tag"

    aput-object v2, v0, v1

    .line 37
    return-object v0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/C;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 79
    invoke-super {p0, p1}, Lcom/dropbox/android/util/aL;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/dropbox/android/provider/C;->a:Ljava/lang/String;

    goto :goto_a
.end method

.method public final getType(I)I
    .registers 3
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/C;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 70
    invoke-super {p0, p1}, Lcom/dropbox/android/util/aL;->getType(I)I

    move-result v0

    .line 72
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x3

    goto :goto_a
.end method
