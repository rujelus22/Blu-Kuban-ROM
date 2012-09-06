.class public Lni;
.super LV;
.source "DocListCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LV",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/database/Cursor;

.field private final a:Ljava/lang/String;

.field private final a:Llu;

.field private final a:Lnj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llu;Lnj;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, LV;-><init>(Landroid/content/Context;)V

    .line 33
    const-string v0, "DocListCursorLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in DocListCursorLoader constructor docListQuery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p2, p0, Lni;->a:Llu;

    .line 35
    iput-object p3, p0, Lni;->a:Lnj;

    .line 36
    iput-object p4, p0, Lni;->a:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 41
    const-string v0, "DocListCursorLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in loadInBackground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lni;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lni;->a:Llu;

    iget-object v1, p0, Lni;->a:Lnj;

    invoke-virtual {v1}, Lnj;->a()LnL;

    move-result-object v1

    iget-object v2, p0, Lni;->a:Lnj;

    invoke-virtual {v2}, Lnj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Llu;->a(LnL;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lni;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 4

    .prologue
    .line 96
    const-string v0, "DocListCursorLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onForceLoad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lni;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, LV;->a()V

    .line 98
    return-void
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 5
    .parameter

    .prologue
    .line 47
    const-string v0, "DocListCursorLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in deliverResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lni;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lni;->d()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 50
    if-eqz p1, :cond_25

    .line 51
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_25
    :goto_25
    return-void

    .line 56
    :cond_26
    iget-object v0, p0, Lni;->a:Landroid/database/Cursor;

    .line 57
    iput-object p1, p0, Lni;->a:Landroid/database/Cursor;

    .line 59
    invoke-virtual {p0}, Lni;->b()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 60
    invoke-super {p0, p1}, LV;->b(Ljava/lang/Object;)V

    .line 63
    :cond_33
    if-eqz v0, :cond_25

    if-eq v0, p1, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_25

    .line 64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_25
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lni;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .registers 5
    .parameter

    .prologue
    .line 88
    const-string v0, "DocListCursorLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onCanceled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lni;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz p1, :cond_25

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 90
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_25
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lni;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method protected d()V
    .registers 4

    .prologue
    .line 70
    const-string v0, "DocListCursorLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onStartLoading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lni;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lni;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_23

    .line 72
    iget-object v0, p0, Lni;->a:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lni;->a(Landroid/database/Cursor;)V

    .line 75
    :cond_23
    invoke-virtual {p0}, Lni;->e()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lni;->a:Landroid/database/Cursor;

    if-nez v0, :cond_30

    .line 76
    :cond_2d
    invoke-virtual {p0}, Lni;->e()V

    .line 78
    :cond_30
    return-void
.end method

.method protected g()V
    .registers 4

    .prologue
    .line 82
    const-string v0, "DocListCursorLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onStopLoading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lni;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lni;->a()Z

    .line 84
    return-void
.end method

.method protected k()V
    .registers 4

    .prologue
    .line 102
    const-string v0, "DocListCursorLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onReset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lni;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0}, LV;->k()V

    .line 105
    invoke-virtual {p0}, Lni;->g()V

    .line 107
    iget-object v0, p0, Lni;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lni;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_31

    .line 108
    iget-object v0, p0, Lni;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_31
    const/4 v0, 0x0

    iput-object v0, p0, Lni;->a:Landroid/database/Cursor;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocListCursorLoader [tagName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lni;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", docListQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lni;->a:Lnj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
