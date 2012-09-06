.class public final Lcom/google/common/collect/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/cw;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient a:Lcom/google/common/collect/ct;

.field private transient b:Lcom/google/common/collect/ct;

.field private transient c:Lcom/google/common/collect/cM;

.field private transient d:Ljava/util/Map;

.field private transient e:Ljava/util/Map;

.field private transient f:Ljava/util/Set;

.field private transient g:Ljava/util/Collection;

.field private transient h:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {}, Lcom/google/common/collect/ci;->d()Lcom/google/common/collect/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/cj;->c:Lcom/google/common/collect/cM;

    .line 165
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/cj;->d:Ljava/util/Map;

    .line 166
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/cj;->e:Ljava/util/Map;

    .line 167
    return-void
.end method

.method public static a()Lcom/google/common/collect/cj;
    .registers 1

    .prologue
    .line 137
    new-instance v0, Lcom/google/common/collect/cj;

    invoke-direct {v0}, Lcom/google/common/collect/cj;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/cj;)Lcom/google/common/collect/ct;
    .registers 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/collect/cj;->a:Lcom/google/common/collect/ct;

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/cj;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ct;)Lcom/google/common/collect/ct;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/cj;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ct;)Lcom/google/common/collect/ct;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ct;)Lcom/google/common/collect/ct;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    new-instance v1, Lcom/google/common/collect/ct;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/ct;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/google/common/collect/cj;->a:Lcom/google/common/collect/ct;

    if-nez v0, :cond_1d

    .line 190
    iput-object v1, p0, Lcom/google/common/collect/cj;->b:Lcom/google/common/collect/ct;

    iput-object v1, p0, Lcom/google/common/collect/cj;->a:Lcom/google/common/collect/ct;

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/cj;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/google/common/collect/cj;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_17
    iget-object v0, p0, Lcom/google/common/collect/cj;->c:Lcom/google/common/collect/cM;

    invoke-interface {v0, p1}, Lcom/google/common/collect/cM;->add(Ljava/lang/Object;)Z

    .line 224
    return-object v1

    .line 193
    :cond_1d
    if-nez p3, :cond_43

    .line 194
    iget-object v0, p0, Lcom/google/common/collect/cj;->b:Lcom/google/common/collect/ct;

    iput-object v1, v0, Lcom/google/common/collect/ct;->c:Lcom/google/common/collect/ct;

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/cj;->b:Lcom/google/common/collect/ct;

    iput-object v0, v1, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    .line 196
    iget-object v0, p0, Lcom/google/common/collect/cj;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ct;

    .line 197
    if-nez v0, :cond_3e

    .line 198
    iget-object v0, p0, Lcom/google/common/collect/cj;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :goto_36
    iget-object v0, p0, Lcom/google/common/collect/cj;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iput-object v1, p0, Lcom/google/common/collect/cj;->b:Lcom/google/common/collect/ct;

    goto :goto_17

    .line 200
    :cond_3e
    iput-object v1, v0, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    .line 201
    iput-object v0, v1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    goto :goto_36

    .line 206
    :cond_43
    iget-object v0, p3, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    iput-object v0, v1, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    .line 207
    iget-object v0, p3, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    iput-object v0, v1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    .line 208
    iput-object p3, v1, Lcom/google/common/collect/ct;->c:Lcom/google/common/collect/ct;

    .line 209
    iput-object p3, v1, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    .line 210
    iget-object v0, p3, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    if-nez v0, :cond_63

    .line 211
    iget-object v0, p0, Lcom/google/common/collect/cj;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :goto_58
    iget-object v0, p3, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    if-nez v0, :cond_68

    .line 216
    iput-object v1, p0, Lcom/google/common/collect/cj;->a:Lcom/google/common/collect/ct;

    .line 220
    :goto_5e
    iput-object v1, p3, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    .line 221
    iput-object v1, p3, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    goto :goto_17

    .line 213
    :cond_63
    iget-object v0, p3, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    iput-object v1, v0, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    goto :goto_58

    .line 218
    :cond_68
    iget-object v0, p3, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    iput-object v1, v0, Lcom/google/common/collect/ct;->c:Lcom/google/common/collect/ct;

    goto :goto_5e
.end method

.method static synthetic a(Lcom/google/common/collect/cj;Lcom/google/common/collect/ct;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/common/collect/cj;->a(Lcom/google/common/collect/ct;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/cj;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/common/collect/cj;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/common/collect/ct;)V
    .registers 5
    .parameter

    .prologue
    .line 233
    iget-object v0, p1, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_30

    .line 234
    iget-object v0, p1, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    iget-object v1, p1, Lcom/google/common/collect/ct;->c:Lcom/google/common/collect/ct;

    iput-object v1, v0, Lcom/google/common/collect/ct;->c:Lcom/google/common/collect/ct;

    .line 238
    :goto_a
    iget-object v0, p1, Lcom/google/common/collect/ct;->c:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_35

    .line 239
    iget-object v0, p1, Lcom/google/common/collect/ct;->c:Lcom/google/common/collect/ct;

    iget-object v1, p1, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    iput-object v1, v0, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    .line 243
    :goto_14
    iget-object v0, p1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_3a

    .line 244
    iget-object v0, p1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    iget-object v1, p1, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    iput-object v1, v0, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    .line 250
    :goto_1e
    iget-object v0, p1, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_50

    .line 251
    iget-object v0, p1, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    iget-object v1, p1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    iput-object v1, v0, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    .line 257
    :goto_28
    iget-object v0, p0, Lcom/google/common/collect/cj;->c:Lcom/google/common/collect/cM;

    iget-object v1, p1, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/cM;->remove(Ljava/lang/Object;)Z

    .line 258
    return-void

    .line 236
    :cond_30
    iget-object v0, p1, Lcom/google/common/collect/ct;->c:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cj;->a:Lcom/google/common/collect/ct;

    goto :goto_a

    .line 241
    :cond_35
    iget-object v0, p1, Lcom/google/common/collect/ct;->d:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cj;->b:Lcom/google/common/collect/ct;

    goto :goto_14

    .line 245
    :cond_3a
    iget-object v0, p1, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_48

    .line 246
    iget-object v0, p0, Lcom/google/common/collect/cj;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 248
    :cond_48
    iget-object v0, p0, Lcom/google/common/collect/cj;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 252
    :cond_50
    iget-object v0, p1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_5e

    .line 253
    iget-object v0, p0, Lcom/google/common/collect/cj;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/ct;->f:Lcom/google/common/collect/ct;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 255
    :cond_5e
    iget-object v0, p0, Lcom/google/common/collect/cj;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method static synthetic b(Lcom/google/common/collect/cj;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/collect/cj;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/collect/cj;)Lcom/google/common/collect/cM;
    .registers 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/collect/cj;->c:Lcom/google/common/collect/cM;

    return-object v0
.end method

.method static synthetic d(Lcom/google/common/collect/cj;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/collect/cj;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Ljava/lang/Object;)V
    .registers 1
    .parameter

    .prologue
    .line 99
    invoke-static {p0}, Lcom/google/common/collect/cj;->g(Ljava/lang/Object;)V

    return-void
.end method

.method private f(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 262
    new-instance v0, Lcom/google/common/collect/cv;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/cv;-><init>(Lcom/google/common/collect/cj;Ljava/lang/Object;)V

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 266
    :cond_12
    return-void
.end method

.method private static g(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 270
    if-nez p0, :cond_8

    .line 271
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 273
    :cond_8
    return-void
.end method

.method private h(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 556
    new-instance v0, Lcom/google/common/collect/cv;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/cv;-><init>(Lcom/google/common/collect/cj;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/common/collect/cj;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/cj;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ct;)Lcom/google/common/collect/ct;

    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/google/common/collect/cj;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .registers 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/common/collect/cj;->h:Ljava/util/Map;

    .line 910
    if-nez v0, :cond_b

    .line 911
    new-instance v0, Lcom/google/common/collect/co;

    invoke-direct {v0, p0}, Lcom/google/common/collect/co;-><init>(Lcom/google/common/collect/cj;)V

    iput-object v0, p0, Lcom/google/common/collect/cj;->h:Ljava/util/Map;

    .line 941
    :cond_b
    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/common/collect/cj;->c:Lcom/google/common/collect/cM;

    invoke-interface {v0}, Lcom/google/common/collect/cM;->size()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/google/common/collect/cj;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 568
    invoke-direct {p0, p1}, Lcom/google/common/collect/cj;->f(Ljava/lang/Object;)V

    .line 569
    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 594
    new-instance v0, Lcom/google/common/collect/ck;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ck;-><init>(Lcom/google/common/collect/cj;Ljava/lang/Object;)V

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/common/collect/cj;->a:Lcom/google/common/collect/ct;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()Ljava/util/Set;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/common/collect/cj;->f:Ljava/util/Set;

    .line 615
    if-nez v0, :cond_b

    .line 616
    new-instance v0, Lcom/google/common/collect/cl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cl;-><init>(Lcom/google/common/collect/cj;)V

    iput-object v0, p0, Lcom/google/common/collect/cj;->f:Ljava/util/Set;

    .line 632
    :cond_b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 954
    if-ne p1, p0, :cond_4

    .line 955
    const/4 v0, 0x1

    .line 961
    :goto_3
    return v0

    .line 957
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/cL;

    if-eqz v0, :cond_17

    .line 958
    check-cast p1, Lcom/google/common/collect/cL;

    .line 959
    invoke-virtual {p0}, Lcom/google/common/collect/cj;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/cL;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 961
    :cond_17
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/common/collect/cj;->g:Ljava/util/Collection;

    .line 778
    if-nez v0, :cond_b

    .line 779
    new-instance v0, Lcom/google/common/collect/cm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cm;-><init>(Lcom/google/common/collect/cj;)V

    iput-object v0, p0, Lcom/google/common/collect/cj;->g:Ljava/util/Collection;

    .line 802
    :cond_b
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/google/common/collect/cj;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/google/common/collect/cj;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
