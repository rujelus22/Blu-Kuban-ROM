.class final Ldbxyzptlk/d/e;
.super Landroid/widget/Filter;
.source "panda.py"


# instance fields
.field a:Ldbxyzptlk/d/f;


# direct methods
.method constructor <init>(Ldbxyzptlk/d/f;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 40
    iput-object p1, p0, Ldbxyzptlk/d/e;->a:Ldbxyzptlk/d/f;

    .line 41
    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Ldbxyzptlk/d/e;->a:Ldbxyzptlk/d/f;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {v0, p1}, Ldbxyzptlk/d/f;->c(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Ldbxyzptlk/d/e;->a:Ldbxyzptlk/d/f;

    invoke-interface {v0, p1}, Ldbxyzptlk/d/f;->a(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 53
    if-eqz v0, :cond_16

    .line 54
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 55
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 60
    :goto_15
    return-object v1

    .line 57
    :cond_16
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_15
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Ldbxyzptlk/d/e;->a:Ldbxyzptlk/d/f;

    invoke-interface {v0}, Ldbxyzptlk/d/f;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 67
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_17

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v1, v0, :cond_17

    .line 68
    iget-object v1, p0, Ldbxyzptlk/d/e;->a:Ldbxyzptlk/d/f;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v1, v0}, Ldbxyzptlk/d/f;->a(Landroid/database/Cursor;)V

    .line 70
    :cond_17
    return-void
.end method
