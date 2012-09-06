.class public abstract Le/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Le/f;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Landroid/database/Cursor;

.field protected d:Landroid/content/Context;

.field protected e:I

.field protected f:Le/c;

.field protected g:Landroid/database/DataSetObserver;

.field protected h:Le/e;

.field protected i:Landroid/widget/FilterQueryProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Le/a;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 152
    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Le/a;->i:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_b

    .line 397
    iget-object v0, p0, Le/a;->i:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 400
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    goto :goto_a
.end method

.method public abstract a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method a(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 164
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_45

    .line 165
    or-int/lit8 p3, p3, 0x2

    .line 166
    iput-boolean v0, p0, Le/a;->b:Z

    .line 170
    :goto_b
    if-eqz p2, :cond_48

    .line 171
    :goto_d
    iput-object p2, p0, Le/a;->c:Landroid/database/Cursor;

    .line 172
    iput-boolean v0, p0, Le/a;->a:Z

    .line 173
    iput-object p1, p0, Le/a;->d:Landroid/content/Context;

    .line 174
    if-eqz v0, :cond_4a

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_1b
    iput v1, p0, Le/a;->e:I

    .line 175
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4c

    .line 176
    new-instance v1, Le/c;

    invoke-direct {v1, p0}, Le/c;-><init>(Le/a;)V

    iput-object v1, p0, Le/a;->f:Le/c;

    .line 177
    new-instance v1, Le/d;

    invoke-direct {v1, p0, v3}, Le/d;-><init>(Le/a;Le/b;)V

    iput-object v1, p0, Le/a;->g:Landroid/database/DataSetObserver;

    .line 183
    :goto_30
    if-eqz v0, :cond_44

    .line 184
    iget-object v0, p0, Le/a;->f:Le/c;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Le/a;->f:Le/c;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    :cond_3b
    iget-object v0, p0, Le/a;->g:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_44

    iget-object v0, p0, Le/a;->g:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 187
    :cond_44
    return-void

    .line 168
    :cond_45
    iput-boolean v1, p0, Le/a;->b:Z

    goto :goto_b

    :cond_48
    move v0, v1

    .line 170
    goto :goto_d

    .line 174
    :cond_4a
    const/4 v1, -0x1

    goto :goto_1b

    .line 179
    :cond_4c
    iput-object v3, p0, Le/a;->f:Le/c;

    .line 180
    iput-object v3, p0, Le/a;->g:Landroid/database/DataSetObserver;

    goto :goto_30
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 3
    .parameter

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Le/a;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_9

    .line 317
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_9
    return-void
.end method

.method public abstract a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public a(Landroid/widget/FilterQueryProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Le/a;->i:Landroid/widget/FilterQueryProvider;

    .line 437
    return-void
.end method

.method public b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    if-ne p1, v0, :cond_6

    .line 333
    const/4 v0, 0x0

    .line 354
    :goto_5
    return-object v0

    .line 335
    :cond_6
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    .line 336
    if-eqz v0, :cond_1c

    .line 337
    iget-object v1, p0, Le/a;->f:Le/c;

    if-eqz v1, :cond_13

    iget-object v1, p0, Le/a;->f:Le/c;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    :cond_13
    iget-object v1, p0, Le/a;->g:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Le/a;->g:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 340
    :cond_1c
    iput-object p1, p0, Le/a;->c:Landroid/database/Cursor;

    .line 341
    if-eqz p1, :cond_41

    .line 342
    iget-object v1, p0, Le/a;->f:Le/c;

    if-eqz v1, :cond_29

    iget-object v1, p0, Le/a;->f:Le/c;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 343
    :cond_29
    iget-object v1, p0, Le/a;->g:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_32

    iget-object v1, p0, Le/a;->g:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 344
    :cond_32
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Le/a;->e:I

    .line 345
    const/4 v1, 0x1

    iput-boolean v1, p0, Le/a;->a:Z

    .line 347
    invoke-virtual {p0}, Le/a;->notifyDataSetChanged()V

    goto :goto_5

    .line 349
    :cond_41
    const/4 v1, -0x1

    iput v1, p0, Le/a;->e:I

    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Le/a;->a:Z

    .line 352
    invoke-virtual {p0}, Le/a;->notifyDataSetInvalidated()V

    goto :goto_5
.end method

.method public b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-virtual {p0, p1, p2, p3}, Le/a;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 447
    iget-boolean v0, p0, Le/a;->b:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 449
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Le/a;->a:Z

    .line 451
    :cond_18
    return-void
.end method

.method public c(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 367
    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Le/a;->a:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 202
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 204
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iget-boolean v0, p0, Le/a;->a:Z

    if-eqz v0, :cond_1b

    .line 263
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 265
    if-nez p2, :cond_13

    .line 266
    iget-object v0, p0, Le/a;->d:Landroid/content/Context;

    iget-object v1, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Le/a;->b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 270
    :cond_13
    iget-object v0, p0, Le/a;->d:Landroid/content/Context;

    iget-object v1, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Le/a;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 273
    :goto_1a
    return-object p2

    :cond_1b
    const/4 p2, 0x0

    goto :goto_1a
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Le/a;->h:Le/e;

    if-nez v0, :cond_b

    .line 405
    new-instance v0, Le/e;

    invoke-direct {v0, p0}, Le/e;-><init>(Le/f;)V

    iput-object v0, p0, Le/a;->h:Le/e;

    .line 407
    :cond_b
    iget-object v0, p0, Le/a;->h:Le/e;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 212
    iget-boolean v0, p0, Le/a;->a:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 213
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 214
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    .line 216
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getItemId(I)J
    .registers 5
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 224
    iget-boolean v2, p0, Le/a;->a:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Le/a;->c:Landroid/database/Cursor;

    if-eqz v2, :cond_1a

    .line 225
    iget-object v2, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 226
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    iget v1, p0, Le/a;->e:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 231
    :cond_1a
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iget-boolean v0, p0, Le/a;->a:Z

    if-nez v0, :cond_c

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_c
    iget-object v0, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2d
    if-nez p2, :cond_37

    .line 252
    iget-object v0, p0, Le/a;->d:Landroid/content/Context;

    iget-object v1, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Le/a;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 256
    :cond_37
    iget-object v0, p0, Le/a;->d:Landroid/content/Context;

    iget-object v1, p0, Le/a;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Le/a;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 257
    return-object p2
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method
