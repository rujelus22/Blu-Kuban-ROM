.class public LBV;
.super LBJ;
.source "StringTreeNode.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NodeOwner:",
        "Ljava/lang/Object;",
        ">",
        "LBJ",
        "<",
        "LBW",
        "<TNodeOwner;>;",
        "LBV",
        "<TNodeOwner;>;>;",
        "Landroid/text/Spannable;"
    }
.end annotation


# instance fields
.field private final a:LBP;

.field private final a:LBV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBV",
            "<TNodeOwner;>;"
        }
    .end annotation
.end field

.field private final a:LBW;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBW",
            "<TNodeOwner;>;"
        }
    .end annotation
.end field

.field private final a:Landroid/text/Editable;

.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TNodeOwner;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "LBO;",
            ">;"
        }
    .end annotation
.end field

.field private final b:LBW;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBW",
            "<TNodeOwner;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LFr;LFr;Landroid/text/Editable;LBP;LBV;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LBW",
            "<TNodeOwner;>;>;",
            "LFr",
            "<",
            "LBW",
            "<TNodeOwner;>;>;",
            "Landroid/text/Editable;",
            "LBP;",
            "LBV",
            "<TNodeOwner;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, LBJ;-><init>(LFr;LFr;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LBV;->a:Ljava/util/Map;

    .line 46
    iput-object p3, p0, LBV;->a:Landroid/text/Editable;

    .line 47
    iput-object p4, p0, LBV;->a:LBP;

    .line 48
    new-instance v0, LBW;

    invoke-direct {v0, p1, p3, p0}, LBW;-><init>(LFr;Landroid/text/Editable;LBV;)V

    iput-object v0, p0, LBV;->a:LBW;

    .line 49
    new-instance v0, LBW;

    invoke-direct {v0, p2, p3, p0}, LBW;-><init>(LFr;Landroid/text/Editable;LBV;)V

    iput-object v0, p0, LBV;->b:LBW;

    .line 50
    iget-object v0, p0, LBV;->a:LFr;

    iget-object v1, p0, LBV;->a:LBW;

    invoke-interface {v0, v1}, LFr;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, LBV;->b:LFr;

    iget-object v1, p0, LBV;->b:LBW;

    invoke-interface {v0, v1}, LFr;->a(Ljava/lang/Object;)V

    .line 52
    iput-object p5, p0, LBV;->a:LBV;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/Object;II)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-virtual {p0}, LBV;->c()I

    move-result v0

    .line 292
    add-int v2, v0, p2

    .line 293
    add-int v3, v0, p3

    .line 294
    iget-object v0, p0, LBV;->a:Landroid/text/Editable;

    const-class v1, Landroid/text/SpanWatcher;

    invoke-interface {v0, v2, v3, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 295
    array-length v4, v0

    .line 297
    const/4 v1, 0x0

    :goto_14
    if-ge v1, v4, :cond_1e

    .line 298
    aget-object v5, v0, v1

    invoke-interface {v5, p0, p1, v2, v3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 300
    :cond_1e
    return-void
.end method

.method private a(Ljava/lang/Object;IIII)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-virtual {p0}, LBV;->c()I

    move-result v0

    .line 273
    add-int v3, v0, p2

    .line 274
    add-int v4, v0, p3

    .line 275
    add-int v5, v0, p4

    .line 276
    add-int v6, v0, p5

    .line 278
    iget-object v0, p0, LBV;->a:Landroid/text/Editable;

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-class v7, Landroid/text/SpanWatcher;

    invoke-interface {v0, v1, v2, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/text/SpanWatcher;

    .line 280
    array-length v9, v7

    .line 282
    const/4 v0, 0x0

    move v8, v0

    :goto_22
    if-ge v8, v9, :cond_2f

    .line 283
    aget-object v0, v7, v8

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 282
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_22

    .line 285
    :cond_2f
    return-void
.end method

.method private a(IIII)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 163
    if-gt p1, p4, :cond_5

    if-ge p2, p3, :cond_6

    .line 175
    :cond_5
    :goto_5
    return v0

    .line 170
    :cond_6
    if-eq p1, p2, :cond_e

    if-eq p3, p4, :cond_e

    .line 171
    if-eq p1, p4, :cond_5

    if-eq p2, p3, :cond_5

    .line 175
    :cond_e
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected bridge synthetic a(LFr;LFr;)LBJ;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, LBV;->a(LFr;LFr;)LBV;

    move-result-object v0

    return-object v0
.end method

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
    .line 106
    iget-object v0, p0, LBV;->a:LBV;

    return-object v0
.end method

.method protected a(LFr;LFr;)LBV;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LBW",
            "<TNodeOwner;>;>;",
            "LFr",
            "<",
            "LBW",
            "<TNodeOwner;>;>;)",
            "LBV",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, LBV;

    iget-object v3, p0, LBV;->a:Landroid/text/Editable;

    iget-object v4, p0, LBV;->a:LBP;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LBV;-><init>(LFr;LFr;Landroid/text/Editable;LBP;LBV;)V

    return-object v0
.end method

.method public a()LBW;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBW",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, LBV;->a:LBW;

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TNodeOwner;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, LBV;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget-object v2, p0, LBV;->a:LBP;

    invoke-virtual {v2, v1}, LBP;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 66
    :cond_1b
    iget-object v0, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    iget-object v0, p0, LBV;->a:LBW;

    iget-object v1, p0, LBV;->a:LBW;

    invoke-virtual {v1}, LBW;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v3, v1, v2}, LBW;->a(IILjava/lang/CharSequence;)LBW;

    .line 68
    iget-object v0, p0, LBV;->b:LBW;

    iget-object v1, p0, LBV;->b:LBW;

    invoke-virtual {v1}, LBW;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v3, v1, v2}, LBW;->a(IILjava/lang/CharSequence;)LBW;

    .line 69
    invoke-super {p0}, LBJ;->a()V

    .line 70
    return-void
.end method

.method a(III)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-virtual {p0}, LBV;->c()I

    move-result v1

    .line 260
    iget-object v0, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBO;

    .line 261
    sub-int v3, p1, v1

    invoke-virtual {v0, v3, p2, p3}, LBO;->a(III)V

    goto :goto_e

    .line 263
    :cond_20
    iget-object v0, p0, LBV;->a:LBV;

    if-eqz v0, :cond_29

    .line 264
    iget-object v0, p0, LBV;->a:LBV;

    invoke-virtual {v0, p1, p2, p3}, LBV;->a(III)V

    .line 266
    :cond_29
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TNodeOwner;)V"
        }
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, LBV;->a:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public a(Ljava/util/List;IILjava/lang/Class;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBO;

    .line 187
    invoke-virtual {p4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 191
    invoke-virtual {v0}, LBO;->a()I

    move-result v3

    invoke-virtual {v0}, LBO;->b()I

    move-result v0

    invoke-direct {p0, v3, v0, p2, p3}, LBV;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 194
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 197
    :cond_38
    return-void
.end method

.method public b()LBW;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBW",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, LBV;->b:LBW;

    return-object v0
.end method

.method public charAt(I)C
    .registers 4
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, LBV;->a:Landroid/text/Editable;

    iget-object v1, p0, LBV;->a:LFr;

    invoke-interface {v1}, LFr;->a()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBO;

    .line 152
    if-eqz v0, :cond_f

    .line 153
    invoke-virtual {v0}, LBO;->b()I

    move-result v0

    .line 155
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBO;

    .line 134
    if-eqz v0, :cond_f

    .line 135
    invoke-virtual {v0}, LBO;->c()I

    move-result v0

    .line 137
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBO;

    .line 143
    if-eqz v0, :cond_f

    .line 144
    invoke-virtual {v0}, LBO;->a()I

    move-result v0

    .line 146
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 8
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
    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-virtual {p0, v2, p1, p2, p3}, LBV;->a(Ljava/util/List;IILjava/lang/Class;)V

    .line 204
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 205
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_24

    .line 206
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 208
    :cond_24
    return-object v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 239
    invoke-virtual {p0}, LBV;->e()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 216
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBO;

    .line 220
    invoke-virtual {v0}, LBO;->a()I

    move-result v1

    .line 221
    if-le v1, p1, :cond_2f

    if-ge v1, p2, :cond_2f

    move p2, v1

    .line 224
    :cond_2f
    invoke-virtual {v0}, LBO;->b()I

    move-result v0

    .line 225
    if-le v0, p1, :cond_a

    if-ge v0, p2, :cond_a

    move p2, v0

    .line 226
    goto :goto_a

    .line 229
    :cond_39
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, LBV;->a:LBP;

    invoke-virtual {v0, p1}, LBP;->a(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBO;

    .line 118
    if-eqz v0, :cond_1d

    .line 119
    invoke-virtual {v0}, LBO;->a()I

    move-result v2

    .line 120
    invoke-virtual {v0}, LBO;->b()I

    move-result v3

    .line 121
    invoke-virtual {v0, p0, p2, p3, p4}, LBO;->a(LBV;III)V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    .line 122
    invoke-direct/range {v0 .. v5}, LBV;->a(Ljava/lang/Object;IIII)V

    .line 129
    :goto_1c
    return-void

    .line 124
    :cond_1d
    new-instance v0, LBO;

    invoke-direct {v0, p0, p2, p3, p4}, LBO;-><init>(LBV;III)V

    .line 125
    iget-object v1, p0, LBV;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, LBV;->a:LBP;

    invoke-virtual {v0, p1, p0}, LBP;->a(Ljava/lang/Object;LBV;)V

    .line 127
    invoke-direct {p0, p1, p2, p3}, LBV;->a(Ljava/lang/Object;II)V

    goto :goto_1c
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, LBV;->a:LFr;

    invoke-interface {v0}, LFr;->a()I

    move-result v0

    .line 245
    iget-object v1, p0, LBV;->a:Landroid/text/Editable;

    add-int v2, v0, p1

    add-int/2addr v0, p2

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
