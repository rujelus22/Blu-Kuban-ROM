.class public Lcom/google/common/collect/LinkedListMultimap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/fn;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient entries:Ljava/util/List;

.field private transient head:Lcom/google/common/collect/fk;

.field private transient keyCount:Lcom/google/common/collect/iq;

.field private transient keySet:Ljava/util/Set;

.field private transient keyToKeyHead:Ljava/util/Map;

.field private transient keyToKeyTail:Ljava/util/Map;

.field private transient keys:Lcom/google/common/collect/iq;

.field private transient map:Ljava/util/Map;

.field private transient tail:Lcom/google/common/collect/fk;

.field private transient valuesList:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;

    .line 168
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    .line 169
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    .line 170
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;

    .line 174
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    .line 175
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    .line 176
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/hu;)V
    .registers 3
    .parameter

    .prologue
    .line 179
    invoke-interface {p1}, Lcom/google/common/collect/hu;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->putAll(Lcom/google/common/collect/hu;)Z

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fk;
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fk;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fk;
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fk;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/common/collect/fk;)Ljava/util/Map$Entry;
    .registers 2
    .parameter

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->createEntry(Lcom/google/common/collect/fk;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)V
    .registers 1
    .parameter

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fk;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/fk;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fk;)Lcom/google/common/collect/fk;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fk;)Lcom/google/common/collect/fk;

    move-result-object v0

    return-object v0
.end method

.method private addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fk;)Lcom/google/common/collect/fk;
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 191
    new-instance v1, Lcom/google/common/collect/fk;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/fk;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fk;

    if-nez v0, :cond_1d

    .line 193
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fk;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fk;

    .line 194
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :goto_17
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;

    invoke-interface {v0, p1}, Lcom/google/common/collect/iq;->add(Ljava/lang/Object;)Z

    .line 227
    return-object v1

    .line 196
    :cond_1d
    if-nez p3, :cond_43

    .line 197
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fk;

    iput-object v1, v0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    .line 198
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fk;

    iput-object v0, v1, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    .line 199
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 200
    if-nez v0, :cond_3e

    .line 201
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :goto_36
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fk;

    goto :goto_17

    .line 203
    :cond_3e
    iput-object v1, v0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    .line 204
    iput-object v0, v1, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    goto :goto_36

    .line 209
    :cond_43
    iget-object v0, p3, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    iput-object v0, v1, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    .line 210
    iget-object v0, p3, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    iput-object v0, v1, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    .line 211
    iput-object p3, v1, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    .line 212
    iput-object p3, v1, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    .line 213
    iget-object v0, p3, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    if-nez v0, :cond_63

    .line 214
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :goto_58
    iget-object v0, p3, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    if-nez v0, :cond_68

    .line 219
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fk;

    .line 223
    :goto_5e
    iput-object v1, p3, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    .line 224
    iput-object v1, p3, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    goto :goto_17

    .line 216
    :cond_63
    iget-object v0, p3, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    iput-object v1, v0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    goto :goto_58

    .line 221
    :cond_68
    iget-object v0, p3, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    iput-object v1, v0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    goto :goto_5e
.end method

.method private static checkElement(Ljava/lang/Object;)V
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 273
    if-nez p0, :cond_8

    .line 274
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 276
    :cond_8
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedListMultimap;
    .registers 1

    .prologue
    .line 140
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedListMultimap;
    .registers 2
    .parameter

    .prologue
    .line 151
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/hu;)Lcom/google/common/collect/LinkedListMultimap;
    .registers 2
    .parameter

    .prologue
    .line 163
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(Lcom/google/common/collect/hu;)V

    return-object v0
.end method

.method private static createEntry(Lcom/google/common/collect/fk;)Ljava/util/Map$Entry;
    .registers 2
    .parameter

    .prologue
    .line 898
    new-instance v0, Lcom/google/common/collect/ex;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ex;-><init>(Lcom/google/common/collect/fk;)V

    return-object v0
.end method

.method private getCopy(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 620
    new-instance v0, Lcom/google/common/collect/fm;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fm;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

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
    .line 1130
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1131
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;

    .line 1132
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    .line 1133
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    .line 1134
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1135
    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_2a

    .line 1137
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1139
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1140
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1142
    :cond_2a
    return-void
.end method

.method private removeAllNodes(Ljava/lang/Object;)V
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 265
    new-instance v0, Lcom/google/common/collect/fm;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fm;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 269
    :cond_12
    return-void
.end method

.method private removeNode(Lcom/google/common/collect/fk;)V
    .registers 5
    .parameter

    .prologue
    .line 236
    iget-object v0, p1, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_30

    .line 237
    iget-object v0, p1, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    iget-object v1, p1, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    iput-object v1, v0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    .line 241
    :goto_a
    iget-object v0, p1, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_35

    .line 242
    iget-object v0, p1, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    iget-object v1, p1, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    iput-object v1, v0, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    .line 246
    :goto_14
    iget-object v0, p1, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_3a

    .line 247
    iget-object v0, p1, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    iget-object v1, p1, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    iput-object v1, v0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    .line 253
    :goto_1e
    iget-object v0, p1, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_50

    .line 254
    iget-object v0, p1, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    iget-object v1, p1, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    iput-object v1, v0, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    .line 260
    :goto_28
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;

    iget-object v1, p1, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/iq;->remove(Ljava/lang/Object;)Z

    .line 261
    return-void

    .line 239
    :cond_30
    iget-object v0, p1, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fk;

    goto :goto_a

    .line 244
    :cond_35
    iget-object v0, p1, Lcom/google/common/collect/fk;->d:Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fk;

    goto :goto_14

    .line 248
    :cond_3a
    iget-object v0, p1, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_48

    .line 249
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/fk;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 251
    :cond_48
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 255
    :cond_50
    iget-object v0, p1, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_5e

    .line 256
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/fk;->f:Lcom/google/common/collect/fk;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 258
    :cond_5e
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 1119
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1120
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1121
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_12

    .line 1125
    :cond_2d
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 1038
    if-nez v0, :cond_b

    .line 1039
    new-instance v0, Lcom/google/common/collect/fa;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fa;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 1069
    :cond_b
    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 638
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fk;

    .line 639
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fk;

    .line 640
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;

    invoke-interface {v0}, Lcom/google/common/collect/iq;->clear()V

    .line 641
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 642
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 643
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 528
    new-instance v0, Lcom/google/common/collect/fm;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fm;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 529
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 530
    const/4 v0, 0x1

    .line 533
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 518
    new-instance v1, Lcom/google/common/collect/fl;

    invoke-direct {v1, p0}, Lcom/google/common/collect/fl;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    iget-object v0, v0, Lcom/google/common/collect/fk;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 520
    const/4 v0, 0x1

    .line 523
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/List;
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->entries:Ljava/util/List;

    .line 936
    if-nez v0, :cond_b

    .line 937
    new-instance v0, Lcom/google/common/collect/ey;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ey;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->entries:Ljava/util/List;

    .line 993
    :cond_b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1082
    if-ne p1, p0, :cond_4

    .line 1083
    const/4 v0, 0x1

    .line 1089
    :goto_3
    return v0

    .line 1085
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/hu;

    if-eqz v0, :cond_17

    .line 1086
    check-cast p1, Lcom/google/common/collect/hu;

    .line 1087
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 1089
    :cond_17
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 658
    new-instance v0, Lcom/google/common/collect/et;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/et;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fk;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 679
    if-nez v0, :cond_b

    .line 680
    new-instance v0, Lcom/google/common/collect/eu;

    invoke-direct {v0, p0}, Lcom/google/common/collect/eu;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 696
    :cond_b
    return-object v0
.end method

.method public keys()Lcom/google/common/collect/iq;
    .registers 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keys:Lcom/google/common/collect/iq;

    .line 704
    if-nez v0, :cond_c

    .line 705
    new-instance v0, Lcom/google/common/collect/ff;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ff;-><init>(Lcom/google/common/collect/LinkedListMultimap;B)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keys:Lcom/google/common/collect/iq;

    .line 707
    :cond_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fk;)Lcom/google/common/collect/fk;

    .line 548
    const/4 v0, 0x1

    return v0
.end method

.method public putAll(Lcom/google/common/collect/hu;)Z
    .registers 6
    .parameter

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 577
    invoke-interface {p1}, Lcom/google/common/collect/hu;->entries()Ljava/util/Collection;

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

    .line 578
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_a

    .line 580
    :cond_25
    return v1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 569
    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_5

    .line 571
    :cond_15
    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 553
    new-instance v0, Lcom/google/common/collect/fm;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fm;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 554
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 555
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 556
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 557
    const/4 v0, 0x1

    .line 560
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 632
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    .line 633
    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 596
    new-instance v1, Lcom/google/common/collect/fm;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/fm;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 597
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 600
    :goto_d
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 601
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 602
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_d

    .line 606
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 607
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 608
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_24

    .line 612
    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 613
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_31

    .line 616
    :cond_3f
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;

    invoke-interface {v0}, Lcom/google/common/collect/iq;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/List;
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->valuesList:Ljava/util/List;

    .line 845
    if-nez v0, :cond_b

    .line 846
    new-instance v0, Lcom/google/common/collect/ev;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ev;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->valuesList:Ljava/util/List;

    .line 894
    :cond_b
    return-object v0
.end method
