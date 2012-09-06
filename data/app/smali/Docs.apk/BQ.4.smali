.class public LBQ;
.super Ljava/lang/Object;
.source "StringTree.java"

# interfaces
.implements Landroid/text/Editable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NodeOwner:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/text/Editable;"
    }
.end annotation


# instance fields
.field private final a:LBP;

.field private a:LBT;

.field private final a:LBV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBV",
            "<TNodeOwner;>;"
        }
    .end annotation
.end field

.field private final a:LEY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LEY",
            "<",
            "LBW",
            "<TNodeOwner;>;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Landroid/text/Editable;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "LBQ",
            "<TNodeOwner;>.BU;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LCa;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, LEY;

    invoke-direct {v0}, LEY;-><init>()V

    iput-object v0, p0, LBQ;->a:LEY;

    .line 130
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, LBQ;->a:Landroid/text/Editable;

    .line 131
    new-instance v0, LBP;

    invoke-direct {v0}, LBP;-><init>()V

    iput-object v0, p0, LBQ;->a:LBP;

    .line 132
    iput-object v5, p0, LBQ;->a:LBT;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LBQ;->a:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LBQ;->a:Ljava/util/Set;

    .line 135
    iput-boolean v1, p0, LBQ;->a:Z

    .line 143
    iget-object v0, p0, LBQ;->a:LEY;

    invoke-virtual {v0}, LEY;->a()LFb;

    move-result-object v0

    invoke-interface {v0, v5, v1}, LFb;->a(Ljava/lang/Object;I)LFb;

    move-result-object v2

    .line 144
    invoke-interface {v2, v5, v1}, LFr;->a(Ljava/lang/Object;I)LFr;

    move-result-object v1

    .line 145
    new-instance v0, LBV;

    iget-object v3, p0, LBQ;->a:Landroid/text/Editable;

    iget-object v4, p0, LBQ;->a:LBP;

    invoke-direct/range {v0 .. v5}, LBV;-><init>(LFr;LFr;Landroid/text/Editable;LBP;LBV;)V

    iput-object v0, p0, LBQ;->a:LBV;

    .line 146
    return-void
.end method

.method static synthetic a(LBQ;)LEY;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, LBQ;->a:LEY;

    return-object v0
.end method

.method private a(I)LFr;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LFr",
            "<",
            "LBW",
            "<TNodeOwner;>;>;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, LBQ;->a:LEY;

    new-instance v1, LBR;

    invoke-direct {v1, p0}, LBR;-><init>(LBQ;)V

    invoke-virtual {v0, p1, v1}, LEY;->a(ILFs;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFr;

    return-object v0
.end method

.method private a(I)Ljava/util/Iterator;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator",
            "<",
            "LBV",
            "<TNodeOwner;>;>;"
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct {p0, p1}, LBQ;->a(I)LFr;

    move-result-object v1

    .line 398
    invoke-interface {v1}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBW;

    invoke-virtual {v0}, LBW;->a()LBV;

    move-result-object v0

    .line 400
    :goto_14
    new-instance v2, LBS;

    invoke-direct {v2, p0, v0, v1}, LBS;-><init>(LBQ;LBV;LFr;)V

    return-object v2

    .line 398
    :cond_1a
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public a()LBV;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBV",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, LBQ;->a:LBV;

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 169
    iget-boolean v0, p0, LBQ;->a:Z

    if-nez v0, :cond_23

    move v0, v1

    :goto_6
    const-string v2, "Multiple levels of batching not yet supported"

    invoke-static {v0, v2}, LafQ;->b(ZLjava/lang/Object;)V

    .line 170
    iput-boolean v1, p0, LBQ;->a:Z

    .line 171
    iget-object v0, p0, LBQ;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCa;

    .line 172
    invoke-interface {v0, p0}, LCa;->a(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 169
    :cond_23
    const/4 v0, 0x0

    goto :goto_6

    .line 174
    :cond_25
    return-void
.end method

.method public a(LBT;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, LBQ;->a:LBT;

    .line 162
    return-void
.end method

.method public append(C)Landroid/text/Editable;
    .registers 3
    .parameter

    .prologue
    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LBQ;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 8
    .parameter

    .prologue
    .line 212
    invoke-virtual {p0}, LBQ;->length()I

    move-result v1

    .line 213
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, LBQ;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-virtual {p0}, LBQ;->length()I

    move-result v1

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 224
    invoke-virtual/range {v0 .. v5}, LBQ;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, LBQ;->append(C)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, LBQ;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, LBQ;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 181
    iget-boolean v0, p0, LBQ;->a:Z

    const-string v1, "endBatchEdit called without a matching startBatchEdit"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, LBQ;->a:Z

    .line 183
    iget-object v0, p0, LBQ;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCa;

    .line 184
    invoke-interface {v0, p0}, LCa;->b(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 186
    :cond_20
    return-void
.end method

.method public c()V
    .registers 5

    .prologue
    .line 192
    iget-boolean v0, p0, LBQ;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 203
    :goto_5
    return-void

    .line 195
    :cond_6
    invoke-virtual {p0}, LBQ;->a()V

    .line 196
    iget-object v0, p0, LBQ;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBU;

    .line 199
    invoke-virtual {p0}, LBQ;->length()I

    move-result v2

    .line 200
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2, v2}, LBU;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_13

    .line 202
    :cond_28
    invoke-virtual {p0}, LBQ;->b()V

    goto :goto_5
.end method

.method public charAt(I)C
    .registers 3
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-virtual {p0}, LBQ;->length()I

    move-result v2

    const-string v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, LBQ;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 230
    return-void
.end method

.method public clearSpans()V
    .registers 3

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "StringTree does not yet support clearing all spans"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(II)Landroid/text/Editable;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 239
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, LBQ;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getChars(II[CI)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 295
    return-void
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, LBQ;->a:LBP;

    invoke-virtual {v0, p1}, LBP;->a(Ljava/lang/Object;)LBV;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_12

    .line 331
    invoke-virtual {v0}, LBV;->c()I

    move-result v1

    invoke-virtual {v0, p1}, LBV;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    .line 337
    :goto_11
    return v0

    .line 333
    :cond_12
    iget-object v0, p0, LBQ;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBU;

    .line 334
    if-eqz v0, :cond_23

    .line 335
    iget-object v1, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    goto :goto_11

    .line 337
    :cond_23
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    goto :goto_11
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, LBQ;->a:LBP;

    invoke-virtual {v0, p1}, LBP;->a(Ljava/lang/Object;)LBV;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_d

    .line 345
    invoke-virtual {v0, p1}, LBV;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 351
    :goto_c
    return v0

    .line 347
    :cond_d
    iget-object v0, p0, LBQ;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBU;

    .line 348
    if-eqz v0, :cond_1e

    .line 349
    iget-object v1, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    goto :goto_c

    .line 351
    :cond_1e
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    goto :goto_c
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, LBQ;->a:LBP;

    invoke-virtual {v0, p1}, LBP;->a(Ljava/lang/Object;)LBV;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_12

    .line 359
    invoke-virtual {v0}, LBV;->c()I

    move-result v1

    invoke-virtual {v0, p1}, LBV;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    .line 365
    :goto_11
    return v0

    .line 361
    :cond_12
    iget-object v0, p0, LBQ;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBU;

    .line 362
    if-eqz v0, :cond_23

    .line 363
    iget-object v1, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    goto :goto_11

    .line 365
    :cond_23
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    goto :goto_11
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 443
    if-ne p1, p2, :cond_58

    const/4 v0, 0x1

    move v1, v0

    .line 445
    :goto_5
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 446
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 448
    invoke-virtual {p0}, LBQ;->length()I

    move-result v5

    .line 449
    if-lez v5, :cond_3e

    .line 450
    if-eqz v1, :cond_5a

    add-int/lit8 v0, p1, -0x1

    .line 451
    :goto_1a
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 452
    invoke-direct {p0, v0}, LBQ;->a(I)Ljava/util/Iterator;

    move-result-object v5

    .line 453
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 454
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBV;

    .line 455
    invoke-virtual {v0}, LBV;->c()I

    move-result v6

    .line 456
    if-gt v6, p2, :cond_3e

    if-nez v1, :cond_5c

    if-ne v6, p2, :cond_5c

    .line 463
    :cond_3e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 465
    array-length v0, v3

    add-int/2addr v0, v5

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move v1, v2

    .line 469
    :goto_4d
    if-ge v1, v5, :cond_64

    .line 470
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v1

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_58
    move v1, v2

    .line 443
    goto :goto_5

    :cond_5a
    move v0, p1

    .line 450
    goto :goto_1a

    .line 459
    :cond_5c
    sub-int v7, p1, v6

    sub-int v6, p2, v6

    invoke-virtual {v0, v4, v7, v6, p3}, LBV;->a(Ljava/util/List;IILjava/lang/Class;)V

    goto :goto_28

    .line 472
    :cond_64
    array-length v1, v3

    invoke-static {v3, v2, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 249
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, LBQ;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBQ;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    .line 479
    invoke-direct {p0, p1}, LBQ;->a(I)Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 480
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 481
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBV;

    .line 482
    invoke-virtual {v0}, LBV;->c()I

    move-result v3

    .line 483
    if-lt v3, v1, :cond_1e

    .line 488
    :cond_1d
    return v1

    .line 486
    :cond_1e
    sub-int v4, p1, v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v4, v1, p3}, LBV;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    .line 487
    goto :goto_b
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 299
    instance-of v0, p1, LCa;

    if-eqz v0, :cond_9

    .line 300
    iget-object v0, p0, LBQ;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 304
    :cond_9
    iget-object v0, p0, LBQ;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBU;

    .line 305
    if-eqz v0, :cond_1e

    .line 306
    iget-object v1, p0, LBQ;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v1, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 311
    :goto_1d
    return-void

    .line 309
    :cond_1e
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBQ;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, LBQ;->a:LBT;

    if-eqz v0, :cond_e

    .line 265
    iget-object v0, p0, LBQ;->a:LBT;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, LBT;->a(IILjava/lang/CharSequence;II)V

    .line 267
    :cond_e
    return-object p0
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 4
    .parameter

    .prologue
    .line 272
    array-length v0, p1

    if-lez v0, :cond_b

    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "StringTree does not support input filters."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_b
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    instance-of v0, p1, LCa;

    if-eqz v0, :cond_c

    .line 316
    iget-object v1, p0, LBQ;->a:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, LCa;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_c
    instance-of v0, p1, Landroid/text/SpanWatcher;

    if-nez v0, :cond_14

    instance-of v0, p1, Landroid/text/TextWatcher;

    if-eqz v0, :cond_24

    .line 319
    :cond_14
    new-instance v0, LBU;

    invoke-direct {v0, p0, p1}, LBU;-><init>(LBQ;Ljava/lang/Object;)V

    .line 320
    iget-object v1, p0, LBQ;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v1, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v1, v0, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 325
    :goto_23
    return-void

    .line 323
    :cond_24
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_23
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, LBQ;->a:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
