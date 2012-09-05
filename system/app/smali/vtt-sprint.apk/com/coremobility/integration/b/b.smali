.class public final Lcom/coremobility/integration/b/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_5
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    goto :goto_4
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_5
.end method

.method public final b(I)J
    .registers 4

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_6
.end method

.method public final c(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    goto :goto_5
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_5
.end method
