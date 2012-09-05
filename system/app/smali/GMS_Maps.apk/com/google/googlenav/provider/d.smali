.class Lcom/google/googlenav/provider/d;
.super Lcom/google/googlenav/provider/b;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/provider/b;-><init>(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/google/googlenav/provider/d;->a:Landroid/database/Cursor;

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/d;->b:I

    iget-object v0, p0, Lcom/google/googlenav/provider/d;->a:Landroid/database/Cursor;

    const-string v1, "displayQuery"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/d;->c:I

    iget-object v0, p0, Lcom/google/googlenav/provider/d;->a:Landroid/database/Cursor;

    const-string v1, "latitude"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/d;->d:I

    iget-object v0, p0, Lcom/google/googlenav/provider/d;->a:Landroid/database/Cursor;

    const-string v1, "longitude"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/d;->e:I

    return-void
.end method


# virtual methods
.method public getInt(I)I
    .registers 4

    iget v0, p0, Lcom/google/googlenav/provider/d;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/provider/d;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/d;->mPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x5

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/provider/d;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/d;->d:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x6

    if-ne p1, v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/provider/d;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/d;->e:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_17

    :cond_24
    const v0, 0xbebc200

    goto :goto_17
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/googlenav/provider/d;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    iget-object v1, p0, Lcom/google/googlenav/provider/d;->a:Landroid/database/Cursor;

    iget v2, p0, Lcom/google/googlenav/provider/d;->mPos:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x3

    if-ne p1, v1, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/provider/d;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/d;->b:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    const/4 v1, 0x1

    if-ne p1, v1, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/provider/d;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/d;->c:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method
