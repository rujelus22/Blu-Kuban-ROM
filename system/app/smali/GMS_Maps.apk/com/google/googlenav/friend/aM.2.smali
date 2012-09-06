.class public Lcom/google/googlenav/friend/aM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final a:Ljava/util/Vector;

.field private b:Lcom/google/googlenav/common/f;

.field private c:Lcom/google/googlenav/common/f;

.field private d:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/F;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/aM;->d:Ljava/util/Hashtable;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/friend/aM;->a:Ljava/util/Vector;

    .line 59
    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v4

    move v3, v2

    :goto_1b
    if-ge v3, v4, :cond_36

    .line 60
    invoke-interface {p1, v3}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 61
    new-instance v5, Lcom/google/googlenav/friend/aK;

    if-nez v3, :cond_34

    const/4 v1, 0x1

    :goto_28
    invoke-direct {v5, p0, v1, v0}, Lcom/google/googlenav/friend/aK;-><init>(Lcom/google/googlenav/friend/aM;ZLcom/google/googlenav/ai;)V

    .line 62
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->a:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 59
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1b

    :cond_34
    move v1, v2

    .line 61
    goto :goto_28

    .line 65
    :cond_36
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->a()V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/aM;->d:Ljava/util/Hashtable;

    .line 47
    iput-object p1, p0, Lcom/google/googlenav/friend/aM;->a:Ljava/util/Vector;

    .line 48
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->a()V

    .line 49
    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 7
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_1b

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_18

    .line 120
    :goto_17
    return v0

    .line 114
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 120
    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public a(I)Lcom/google/googlenav/friend/aK;
    .registers 3
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aK;

    .line 100
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(Ljava/lang/Long;)Lcom/google/googlenav/friend/aK;
    .registers 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aK;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/friend/aK;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 129
    if-nez p1, :cond_4

    .line 138
    :cond_3
    :goto_3
    return-object v0

    .line 132
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v3

    move v2, v1

    :goto_a
    if-ge v2, v3, :cond_3

    .line 133
    invoke-virtual {p0, v2}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v1

    .line 135
    goto :goto_3

    .line 132
    :cond_1c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a
.end method

.method public a()V
    .registers 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->a:Ljava/util/Vector;

    if-eqz v0, :cond_28

    .line 80
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/friend/aM;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_28

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aK;

    .line 82
    iget-object v3, p0, Lcom/google/googlenav/friend/aM;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 85
    :cond_28
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->a:Ljava/util/Vector;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_5
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()Lcom/google/googlenav/friend/aK;
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 6

    .prologue
    .line 143
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v2

    :goto_9
    if-ge v0, v2, :cond_1b

    .line 145
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->i()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 147
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 150
    :cond_1b
    return-object v1
.end method

.method public f()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v1

    if-lez v1, :cond_22

    .line 196
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v2

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_22

    .line 197
    invoke-virtual {p0, v1}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->G()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 203
    :goto_1e
    return v0

    .line 196
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 203
    :cond_22
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public g()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_17

    .line 210
    invoke-virtual {p0, v1}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 211
    add-int/lit8 v0, v0, 0x1

    .line 209
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 214
    :cond_17
    return v0
.end method

.method public h()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/google/googlenav/friend/aM;->b:Lcom/google/googlenav/common/f;

    .line 220
    iput-object v0, p0, Lcom/google/googlenav/friend/aM;->c:Lcom/google/googlenav/common/f;

    .line 221
    return-void
.end method

.method public i()Lcom/google/googlenav/common/f;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->b:Lcom/google/googlenav/common/f;

    if-nez v0, :cond_72

    .line 226
    new-instance v0, Lcom/google/googlenav/common/f;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/friend/aM;->b:Lcom/google/googlenav/common/f;

    .line 229
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v2

    move v0, v1

    :goto_15
    if-ge v0, v2, :cond_2a

    .line 230
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 231
    iget-object v3, p0, Lcom/google/googlenav/friend/aM;->b:Lcom/google/googlenav/common/f;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/f;->a(J)V

    .line 229
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 235
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->b:Lcom/google/googlenav/common/f;

    invoke-virtual {v0}, Lcom/google/googlenav/common/f;->a()Z

    move-result v0

    if-nez v0, :cond_72

    .line 237
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->b:Lcom/google/googlenav/common/f;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v1

    .line 240
    new-instance v2, Lcom/google/googlenav/common/f;

    invoke-direct {v2}, Lcom/google/googlenav/common/f;-><init>()V

    .line 241
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/common/f;->a(J)V

    .line 242
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/googlenav/friend/aM;->b:Lcom/google/googlenav/common/f;

    invoke-virtual {v3}, Lcom/google/googlenav/common/f;->b()I

    move-result v3

    :goto_52
    if-ge v0, v3, :cond_6d

    .line 243
    iget-object v4, p0, Lcom/google/googlenav/friend/aM;->b:Lcom/google/googlenav/common/f;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v4

    .line 244
    invoke-virtual {v4}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v4

    invoke-virtual {v4, v1}, Lat/B;->b(Lat/B;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/googlenav/common/f;->a(J)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 248
    :cond_6d
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->b:Lcom/google/googlenav/common/f;

    invoke-static {v0, v2}, Lcom/google/googlenav/common/util/v;->a(Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V

    .line 252
    :cond_72
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->b:Lcom/google/googlenav/common/f;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/googlenav/common/f;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lcom/google/googlenav/friend/aM;->c:Lcom/google/googlenav/common/f;

    if-nez v1, :cond_5e

    .line 258
    new-instance v1, Lcom/google/googlenav/common/f;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/f;-><init>(I)V

    iput-object v1, p0, Lcom/google/googlenav/friend/aM;->c:Lcom/google/googlenav/common/f;

    .line 261
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v2

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_2a

    .line 262
    invoke-virtual {p0, v1}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 263
    iget-object v3, p0, Lcom/google/googlenav/friend/aM;->c:Lcom/google/googlenav/common/f;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/f;->a(J)V

    .line 261
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 267
    :cond_2a
    iget-object v1, p0, Lcom/google/googlenav/friend/aM;->c:Lcom/google/googlenav/common/f;

    invoke-virtual {v1}, Lcom/google/googlenav/common/f;->a()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 269
    new-instance v1, Lcom/google/googlenav/common/f;

    invoke-direct {v1}, Lcom/google/googlenav/common/f;-><init>()V

    .line 270
    iget-object v2, p0, Lcom/google/googlenav/friend/aM;->c:Lcom/google/googlenav/common/f;

    invoke-virtual {v2}, Lcom/google/googlenav/common/f;->b()I

    move-result v2

    :goto_3d
    if-ge v0, v2, :cond_59

    .line 271
    iget-object v3, p0, Lcom/google/googlenav/friend/aM;->c:Lcom/google/googlenav/common/f;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    .line 272
    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v3

    invoke-virtual {v3}, Lat/B;->c()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/google/googlenav/common/f;->a(J)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 276
    :cond_59
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->c:Lcom/google/googlenav/common/f;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/util/v;->b(Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V

    .line 280
    :cond_5e
    iget-object v0, p0, Lcom/google/googlenav/friend/aM;->c:Lcom/google/googlenav/common/f;

    return-object v0
.end method
