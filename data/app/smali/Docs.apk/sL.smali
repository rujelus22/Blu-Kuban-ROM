.class public abstract LsL;
.super Landroid/database/DataSetObserver;
.source "GenericSectionIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/database/DataSetObserver;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected a:Landroid/database/Cursor;

.field private final a:Landroid/util/SparseIntArray;

.field private final a:Z

.field private final a:[LsK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LsK",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I[LsK;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I[",
            "LsK",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 99
    iput-boolean p4, p0, LsL;->a:Z

    .line 100
    iput-object p1, p0, LsL;->a:Landroid/database/Cursor;

    .line 101
    iput p2, p0, LsL;->a:I

    .line 103
    array-length v0, p3

    iput v0, p0, LsL;->b:I

    .line 104
    iput-object p3, p0, LsL;->a:[LsK;

    .line 108
    new-instance v0, Landroid/util/SparseIntArray;

    iget v1, p0, LsL;->b:I

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, LsL;->a:Landroid/util/SparseIntArray;

    .line 109
    if-eqz p1, :cond_1c

    .line 110
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 115
    :cond_1c
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, LsL;->a()Ljava/util/Comparator;

    move-result-object v0

    .line 156
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 157
    iget-boolean v1, p0, LsL;->a:Z

    if-eqz v1, :cond_d

    neg-int v0, v0

    :cond_d
    return v0
.end method

.method protected abstract a(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public getPositionForSection(I)I
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v8, -0x8000

    .line 185
    iget-object v4, p0, LsL;->a:Landroid/util/SparseIntArray;

    .line 186
    iget-object v5, p0, LsL;->a:Landroid/database/Cursor;

    .line 188
    if-eqz v5, :cond_d

    iget-object v1, p0, LsL;->a:[LsK;

    if-nez v1, :cond_e

    .line 289
    :cond_d
    :goto_d
    return v0

    .line 193
    :cond_e
    if-lez p1, :cond_d

    .line 196
    iget v1, p0, LsL;->b:I

    if-lt p1, v1, :cond_18

    .line 197
    iget v1, p0, LsL;->b:I

    add-int/lit8 p1, v1, -0x1

    .line 200
    :cond_18
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 202
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 210
    iget-object v1, p0, LsL;->a:[LsK;

    aget-object v1, v1, p1

    invoke-interface {v1}, LsK;->a()Ljava/lang/Object;

    move-result-object v7

    .line 213
    invoke-virtual {v4, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v8, v1, :cond_7f

    .line 217
    if-gez v1, :cond_5d

    .line 218
    neg-int v2, v1

    .line 227
    :goto_31
    if-lez p1, :cond_3f

    .line 229
    add-int/lit8 v1, p1, -0x1

    .line 230
    invoke-virtual {v4, v1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 231
    if-eq v1, v8, :cond_3f

    .line 232
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 238
    :cond_3f
    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    move v9, v2

    move v2, v0

    move v0, v9

    .line 240
    :goto_46
    if-ge v1, v0, :cond_55

    .line 242
    invoke-interface {v5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 244
    iget v8, p0, LsL;->a:I

    invoke-virtual {p0, v5, v8}, LsL;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v8

    .line 245
    if-nez v8, :cond_62

    .line 246
    if-nez v1, :cond_5f

    .line 287
    :cond_55
    :goto_55
    invoke-virtual {v4, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 288
    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 289
    goto :goto_d

    :cond_5d
    move v0, v1

    .line 222
    goto :goto_d

    .line 249
    :cond_5f
    add-int/lit8 v1, v1, -0x1

    .line 250
    goto :goto_46

    .line 253
    :cond_62
    invoke-virtual {p0, v8, v7}, LsL;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 254
    if-eqz v8, :cond_7a

    .line 266
    if-gez v8, :cond_70

    .line 267
    add-int/lit8 v1, v1, 0x1

    .line 268
    if-lt v1, v3, :cond_72

    move v1, v3

    .line 270
    goto :goto_55

    :cond_70
    move v0, v1

    move v1, v2

    .line 285
    :cond_72
    :goto_72
    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    move v9, v2

    move v2, v1

    move v1, v9

    .line 286
    goto :goto_46

    .line 277
    :cond_7a
    if-eq v2, v1, :cond_55

    move v0, v1

    move v1, v2

    .line 282
    goto :goto_72

    :cond_7f
    move v2, v3

    goto :goto_31
.end method

.method public getSectionForPosition(I)I
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, LsL;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 299
    iget-object v2, p0, LsL;->a:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 301
    iget-object v2, p0, LsL;->a:Landroid/database/Cursor;

    iget v3, p0, LsL;->a:I

    invoke-virtual {p0, v2, v3}, LsL;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v2

    .line 302
    iget-object v3, p0, LsL;->a:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 305
    :goto_1a
    iget v3, p0, LsL;->b:I

    if-ge v0, v3, :cond_30

    .line 308
    iget-object v3, p0, LsL;->a:[LsK;

    aget-object v3, v3, v0

    invoke-interface {v3}, LsK;->a()Ljava/lang/Object;

    move-result-object v3

    .line 309
    invoke-virtual {p0, v2, v3}, LsL;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_2d

    .line 313
    :goto_2c
    return v0

    .line 305
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_30
    move v0, v1

    .line 313
    goto :goto_2c
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, LsL;->a:[LsK;

    return-object v0
.end method

.method public onChanged()V
    .registers 2

    .prologue
    .line 321
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 322
    iget-object v0, p0, LsL;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 323
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 330
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 331
    iget-object v0, p0, LsL;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 332
    return-void
.end method
