.class public final Lcom/google/common/collect/LinkedListMultimap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/dv;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient entries:Ljava/util/Collection;

.field private transient head:Lcom/google/common/collect/ds;

.field private transient keyCount:Lcom/google/common/collect/fj;

.field private transient keySet:Ljava/util/Set;

.field private transient keyToKeyHead:Ljava/util/Map;

.field private transient keyToKeyTail:Ljava/util/Map;

.field private transient keys:Lcom/google/common/collect/fj;

.field private transient map:Ljava/util/Map;

.field private transient tail:Lcom/google/common/collect/ds;

.field private transient valuesCollection:Ljava/util/Collection;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;

    .line 162
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    .line 163
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    .line 164
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;

    .line 168
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    .line 169
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    .line 170
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ew;)V
    .registers 3
    .parameter

    .prologue
    .line 173
    invoke-interface {p1}, Lcom/google/common/collect/ew;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->putAll(Lcom/google/common/collect/ew;)Z

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/ds;
    .registers 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/ds;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)V
    .registers 1
    .parameter

    .prologue
    .line 96
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/ds;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/ds;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;
    .registers 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ds;)Lcom/google/common/collect/ds;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ds;)Lcom/google/common/collect/ds;

    move-result-object v0

    return-object v0
.end method

.method private addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ds;)Lcom/google/common/collect/ds;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    new-instance v1, Lcom/google/common/collect/ds;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/ds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/ds;

    if-nez v0, :cond_1d

    .line 187
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/ds;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/ds;

    .line 188
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_17
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;

    invoke-interface {v0, p1}, Lcom/google/common/collect/fj;->add(Ljava/lang/Object;)Z

    .line 221
    return-object v1

    .line 190
    :cond_1d
    if-nez p3, :cond_43

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/ds;

    iput-object v1, v0, Lcom/google/common/collect/ds;->c:Lcom/google/common/collect/ds;

    .line 192
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/ds;

    iput-object v0, v1, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    .line 193
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ds;

    .line 194
    if-nez v0, :cond_3e

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :goto_36
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/ds;

    goto :goto_17

    .line 197
    :cond_3e
    iput-object v1, v0, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    .line 198
    iput-object v0, v1, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    goto :goto_36

    .line 203
    :cond_43
    iget-object v0, p3, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    iput-object v0, v1, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    .line 204
    iget-object v0, p3, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    iput-object v0, v1, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    .line 205
    iput-object p3, v1, Lcom/google/common/collect/ds;->c:Lcom/google/common/collect/ds;

    .line 206
    iput-object p3, v1, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    .line 207
    iget-object v0, p3, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    if-nez v0, :cond_63

    .line 208
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :goto_58
    iget-object v0, p3, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    if-nez v0, :cond_68

    .line 213
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/ds;

    .line 217
    :goto_5e
    iput-object v1, p3, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    .line 218
    iput-object v1, p3, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    goto :goto_17

    .line 210
    :cond_63
    iget-object v0, p3, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    iput-object v1, v0, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    goto :goto_58

    .line 215
    :cond_68
    iget-object v0, p3, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    iput-object v1, v0, Lcom/google/common/collect/ds;->c:Lcom/google/common/collect/ds;

    goto :goto_5e
.end method

.method private static checkElement(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    if-nez p0, :cond_8

    .line 268
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 270
    :cond_8
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedListMultimap;
    .registers 1

    .prologue
    .line 134
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedListMultimap;
    .registers 2
    .parameter

    .prologue
    .line 145
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/ew;)Lcom/google/common/collect/LinkedListMultimap;
    .registers 2
    .parameter

    .prologue
    .line 157
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(Lcom/google/common/collect/ew;)V

    return-object v0
.end method

.method private getCopy(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 528
    new-instance v0, Lcom/google/common/collect/du;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/du;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter

    .prologue
    .line 937
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 938
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;

    .line 939
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    .line 940
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    .line 941
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 942
    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_2a

    .line 944
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 946
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 947
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 949
    :cond_2a
    return-void
.end method

.method private removeAllNodes(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 259
    new-instance v0, Lcom/google/common/collect/du;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/du;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 263
    :cond_12
    return-void
.end method

.method private removeNode(Lcom/google/common/collect/ds;)V
    .registers 5
    .parameter

    .prologue
    .line 230
    iget-object v0, p1, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_30

    .line 231
    iget-object v0, p1, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    iget-object v1, p1, Lcom/google/common/collect/ds;->c:Lcom/google/common/collect/ds;

    iput-object v1, v0, Lcom/google/common/collect/ds;->c:Lcom/google/common/collect/ds;

    .line 235
    :goto_a
    iget-object v0, p1, Lcom/google/common/collect/ds;->c:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_35

    .line 236
    iget-object v0, p1, Lcom/google/common/collect/ds;->c:Lcom/google/common/collect/ds;

    iget-object v1, p1, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    iput-object v1, v0, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    .line 240
    :goto_14
    iget-object v0, p1, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_3a

    .line 241
    iget-object v0, p1, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    iget-object v1, p1, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    iput-object v1, v0, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    .line 247
    :goto_1e
    iget-object v0, p1, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_50

    .line 248
    iget-object v0, p1, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    iget-object v1, p1, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    iput-object v1, v0, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    .line 254
    :goto_28
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;

    iget-object v1, p1, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/fj;->remove(Ljava/lang/Object;)Z

    .line 255
    return-void

    .line 233
    :cond_30
    iget-object v0, p1, Lcom/google/common/collect/ds;->c:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/ds;

    goto :goto_a

    .line 238
    :cond_35
    iget-object v0, p1, Lcom/google/common/collect/ds;->d:Lcom/google/common/collect/ds;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/ds;

    goto :goto_14

    .line 242
    :cond_3a
    iget-object v0, p1, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_48

    .line 243
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/ds;->e:Lcom/google/common/collect/ds;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 245
    :cond_48
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 249
    :cond_50
    iget-object v0, p1, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    if-eqz v0, :cond_5e

    .line 250
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/ds;->f:Lcom/google/common/collect/ds;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 252
    :cond_5e
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 927
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 928
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 929
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 930
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 931
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_12

    .line 933
    :cond_2d
    return-void
.end method


# virtual methods
.method public final asMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 847
    if-nez v0, :cond_b

    .line 848
    new-instance v0, Lcom/google/common/collect/di;

    invoke-direct {v0, p0}, Lcom/google/common/collect/di;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 878
    :cond_b
    return-object v0
.end method

.method public final clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 544
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/ds;

    .line 545
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/ds;

    .line 546
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;

    invoke-interface {v0}, Lcom/google/common/collect/fj;->clear()V

    .line 547
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 548
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 549
    return-void
.end method

.method public final containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 441
    new-instance v0, Lcom/google/common/collect/du;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/du;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 442
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 443
    const/4 v0, 0x1

    .line 446
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 432
    new-instance v1, Lcom/google/common/collect/dt;

    invoke-direct {v1, p0}, Lcom/google/common/collect/dt;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 433
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 434
    const/4 v0, 0x1

    .line 437
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->entries:Ljava/util/Collection;

    .line 768
    if-nez v0, :cond_b

    .line 769
    new-instance v0, Lcom/google/common/collect/df;

    invoke-direct {v0, p0}, Lcom/google/common/collect/df;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->entries:Ljava/util/Collection;

    .line 805
    :cond_b
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 891
    if-ne p1, p0, :cond_4

    .line 892
    const/4 v0, 0x1

    .line 898
    :goto_3
    return v0

    .line 894
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/ew;

    if-eqz v0, :cond_17

    .line 895
    check-cast p1, Lcom/google/common/collect/ew;

    .line 896
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/ew;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 898
    :cond_17
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 563
    new-instance v0, Lcom/google/common/collect/db;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/db;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/ds;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 583
    if-nez v0, :cond_b

    .line 584
    new-instance v0, Lcom/google/common/collect/dc;

    invoke-direct {v0, p0}, Lcom/google/common/collect/dc;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 596
    :cond_b
    return-object v0
.end method

.method public final keys()Lcom/google/common/collect/fj;
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keys:Lcom/google/common/collect/fj;

    .line 603
    if-nez v0, :cond_b

    .line 604
    new-instance v0, Lcom/google/common/collect/dn;

    invoke-direct {v0, p0}, Lcom/google/common/collect/dn;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keys:Lcom/google/common/collect/fj;

    .line 606
    :cond_b
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ds;)Lcom/google/common/collect/ds;

    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public final putAll(Lcom/google/common/collect/ew;)Z
    .registers 6
    .parameter

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    invoke-interface {p1}, Lcom/google/common/collect/ew;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 487
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_a

    .line 489
    :cond_25
    return v1
.end method

.method public final putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 478
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 479
    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_5

    .line 481
    :cond_15
    return v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 464
    new-instance v0, Lcom/google/common/collect/du;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/du;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 465
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 467
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 468
    const/4 v0, 0x1

    .line 471
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final removeAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 539
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    .line 540
    return-object v0
.end method

.method public final bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 504
    new-instance v1, Lcom/google/common/collect/du;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/du;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 505
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 508
    :goto_d
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 509
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 510
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_d

    .line 514
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 515
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 516
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_24

    .line 520
    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 521
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_31

    .line 524
    :cond_3f
    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;

    invoke-interface {v0}, Lcom/google/common/collect/fj;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->valuesCollection:Ljava/util/Collection;

    .line 725
    if-nez v0, :cond_b

    .line 726
    new-instance v0, Lcom/google/common/collect/dd;

    invoke-direct {v0, p0}, Lcom/google/common/collect/dd;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->valuesCollection:Ljava/util/Collection;

    .line 746
    :cond_b
    return-object v0
.end method
