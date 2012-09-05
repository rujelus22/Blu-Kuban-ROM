.class abstract Lcom/google/googlenav/provider/b;
.super Lcom/google/googlenav/provider/e;


# instance fields
.field protected final a:Landroid/database/Cursor;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/provider/e;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/provider/b;->a:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/googlenav/provider/b;->a:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/b;->b:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/provider/e;->close()V

    iget-object v0, p0, Lcom/google/googlenav/provider/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/google/googlenav/provider/LocalSuggestionProvider;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/provider/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4

    iget v0, p0, Lcom/google/googlenav/provider/b;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/provider/b;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/b;->mPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p1, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/provider/b;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/b;->b:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_16
    return-wide v0

    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_16
.end method
