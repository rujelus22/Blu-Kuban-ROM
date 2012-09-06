.class public Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$1;,
        Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$DescendingItr;,
        Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;,
        Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;,
        Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56223931da801daL


# instance fields
.field private final capacity:I

.field private transient count:I

.field transient first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 173
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;-><init>(I)V

    .line 174
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 182
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 160
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 183
    if-gtz p1, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 184
    :cond_22
    iput p1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->capacity:I

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const v3, 0x7fffffff

    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;-><init>(I)V

    .line 199
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 200
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 202
    :try_start_b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, e:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_26

    .line 204
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_21

    .line 209
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_21
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 205
    .restart local v0       #e:Ljava/lang/Object;,"TE;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    new-instance v3, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    invoke-direct {v3, v0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->linkLast(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 206
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Deque full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_21

    .line 209
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_39
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 211
    return-void
.end method

.method private linkFirst(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, node:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    iget v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->capacity:I

    if-lt v1, v2, :cond_8

    .line 222
    const/4 v1, 0x0

    .line 232
    :goto_7
    return v1

    .line 223
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 224
    .local v0, f:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 225
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 226
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    if-nez v1, :cond_21

    .line 227
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 230
    :goto_14
    iget v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    .line 231
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 232
    const/4 v1, 0x1

    goto :goto_7

    .line 229
    :cond_21
    iput-object p1, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->prev:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    goto :goto_14
.end method

.method private linkLast(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, node:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    iget v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->capacity:I

    if-lt v1, v2, :cond_8

    .line 241
    const/4 v1, 0x0

    .line 251
    :goto_7
    return v1

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 243
    .local v0, l:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->prev:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 244
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 245
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    if-nez v1, :cond_21

    .line 246
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 249
    :goto_14
    iget v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    .line 250
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 251
    const/4 v1, 0x1

    goto :goto_7

    .line 248
    :cond_21
    iput-object p1, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    goto :goto_14
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 1217
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1218
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    .line 1219
    iput-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1220
    iput-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1225
    :goto_b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1226
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_12

    .line 1230
    return-void

    .line 1228
    :cond_12
    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method private unlinkFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 260
    .local v0, f:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_7

    move-object v1, v3

    .line 273
    :goto_6
    return-object v1

    .line 262
    :cond_7
    iget-object v2, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 263
    .local v2, n:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 264
    .local v1, item:Ljava/lang/Object;,"TE;"
    iput-object v3, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 265
    iput-object v0, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 266
    iput-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 267
    if-nez v2, :cond_21

    .line 268
    iput-object v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 271
    :goto_15
    iget v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    .line 272
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_6

    .line 270
    :cond_21
    iput-object v3, v2, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->prev:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    goto :goto_15
.end method

.method private unlinkLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 282
    .local v1, l:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_7

    move-object v0, v3

    .line 295
    :goto_6
    return-object v0

    .line 284
    :cond_7
    iget-object v2, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->prev:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 285
    .local v2, p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 286
    .local v0, item:Ljava/lang/Object;,"TE;"
    iput-object v3, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 287
    iput-object v1, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->prev:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 288
    iput-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 289
    if-nez v2, :cond_21

    .line 290
    iput-object v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 293
    :goto_15
    iget v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    .line 294
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_6

    .line 292
    :cond_21
    iput-object v3, v2, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    goto :goto_15
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1195
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1196
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1199
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1201
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .local v1, p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :goto_a
    if-eqz v1, :cond_14

    .line 1202
    iget-object v2, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1201
    iget-object v1, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    goto :goto_a

    .line 1204
    :cond_14
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 1206
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1208
    return-void

    .line 1206
    .end local v1           #p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :catchall_1c
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 638
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_e
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_e
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 1011
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1012
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1014
    :try_start_5
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .local v0, f:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :goto_7
    if-eqz v0, :cond_16

    .line 1015
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 1016
    iget-object v2, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1017
    .local v2, n:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->prev:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1018
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1019
    move-object v0, v2

    .line 1020
    goto :goto_7

    .line 1021
    .end local v2           #n:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :cond_16
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    iput-object v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1022
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    .line 1023
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_27

    .line 1025
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1027
    return-void

    .line 1025
    .end local v0           #f:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 841
    if-nez p1, :cond_4

    .line 850
    :goto_3
    return v2

    .line 842
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 843
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 845
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .local v1, p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :goto_b
    if-eqz v1, :cond_1d

    .line 846
    iget-object v3, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_21

    move-result v3

    if-eqz v3, :cond_1a

    .line 847
    const/4 v2, 0x1

    .line 850
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .line 845
    :cond_1a
    :try_start_1a
    iget-object v1, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_21

    goto :goto_b

    .line 850
    :cond_1d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .end local v1           #p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :catchall_21
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    new-instance v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$DescendingItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$DescendingItr;-><init>(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 7
    .parameter
    .parameter "maxElements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 760
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 761
    :cond_8
    if-ne p1, p0, :cond_10

    .line 762
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 763
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 764
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 766
    :try_start_15
    iget v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 767
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    if-ge v0, v2, :cond_2b

    .line 768
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    iget-object v3, v3, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2f

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 773
    :cond_2b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0           #i:I
    .end local v2           #n:I
    :catchall_2f
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    .line 555
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_c

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 556
    :cond_c
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    .line 564
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_c

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 565
    :cond_c
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1044
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    new-instance v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;-><init>(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 665
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 345
    :cond_8
    new-instance v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 346
    .local v1, node:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 347
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 349
    :try_start_12
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->linkFirst(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result v2

    .line 351
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_1a
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 410
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 411
    :cond_8
    new-instance v3, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    invoke-direct {v3, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 412
    .local v3, node:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 413
    .local v1, nanos:J
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 414
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 416
    :goto_16
    :try_start_16
    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->linkFirst(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_33

    move-result v4

    if-nez v4, :cond_2e

    .line 417
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_27

    .line 418
    const/4 v4, 0x0

    .line 423
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_26
    return v4

    .line 419
    :cond_27
    :try_start_27
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_33

    move-result-wide v1

    goto :goto_16

    .line 421
    :cond_2e
    const/4 v4, 0x1

    .line 423
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_26

    :catchall_33
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 360
    :cond_8
    new-instance v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 361
    .local v1, node:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 362
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 364
    :try_start_12
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->linkLast(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result v2

    .line 366
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_1a
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 433
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 434
    :cond_8
    new-instance v3, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    invoke-direct {v3, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 435
    .local v3, node:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 436
    .local v1, nanos:J
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 437
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 439
    :goto_16
    :try_start_16
    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->linkLast(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_33

    move-result v4

    if-nez v4, :cond_2e

    .line 440
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_27

    .line 441
    const/4 v4, 0x0

    .line 446
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_26
    return v4

    .line 442
    :cond_27
    :try_start_27
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_33

    move-result-wide v1

    goto :goto_16

    .line 444
    :cond_2e
    const/4 v4, 0x1

    .line 446
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_26

    :catchall_33
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 715
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 570
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 572
    :try_start_5
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 574
    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 572
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_a

    .line 574
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public peekLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 580
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 582
    :try_start_5
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 584
    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 582
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_a

    .line 584
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 695
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 470
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 472
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 474
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 516
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 517
    .local v1, nanos:J
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 518
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 521
    :goto_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_25

    move-result-object v3

    .local v3, x:Ljava/lang/Object;,"TE;"
    if-nez v3, :cond_21

    .line 522
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1a

    .line 523
    const/4 v3, 0x0

    .line 528
    .end local v3           #x:Ljava/lang/Object;,"TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_19
    return-object v3

    .line 524
    .restart local v3       #x:Ljava/lang/Object;,"TE;"
    :cond_1a
    :try_start_1a
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_25

    move-result-wide v1

    goto :goto_9

    .line 528
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_19

    .end local v3           #x:Ljava/lang/Object;,"TE;"
    :catchall_25
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 480
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 482
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 484
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 534
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 535
    .local v1, nanos:J
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 536
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 539
    :goto_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_25

    move-result-object v3

    .local v3, x:Ljava/lang/Object;,"TE;"
    if-nez v3, :cond_21

    .line 540
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1a

    .line 541
    const/4 v3, 0x0

    .line 546
    .end local v3           #x:Ljava/lang/Object;,"TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_19
    return-object v3

    .line 542
    .restart local v3       #x:Ljava/lang/Object;,"TE;"
    :cond_1a
    :try_start_1a
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_25

    move-result-wide v1

    goto :goto_9

    .line 546
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_19

    .end local v3           #x:Ljava/lang/Object;,"TE;"
    :catchall_25
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 791
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 785
    return-void
.end method

.method public put(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 655
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 656
    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 375
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 376
    :cond_8
    new-instance v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 377
    .local v1, node:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 378
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 380
    :goto_12
    :try_start_12
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->linkFirst(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 381
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 383
    :catchall_1e
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 385
    return-void
.end method

.method public putLast(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 392
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 393
    :cond_8
    new-instance v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 394
    .local v1, node:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 395
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 397
    :goto_12
    :try_start_12
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->linkLast(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 398
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 400
    :catchall_1e
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 402
    return-void
.end method

.method public remainingCapacity()I
    .registers 4

    .prologue
    .line 731
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 732
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 734
    :try_start_5
    iget v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->capacity:I

    iget v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    sub-int/2addr v1, v2

    .line 736
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 812
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 455
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_c

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 456
    :cond_c
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 589
    if-nez p1, :cond_4

    .line 601
    :goto_3
    return v2

    .line 590
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 591
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 593
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .local v1, p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :goto_b
    if-eqz v1, :cond_20

    .line 594
    iget-object v3, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 595
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlink(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_24

    .line 596
    const/4 v2, 0x1

    .line 601
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .line 593
    :cond_1d
    :try_start_1d
    iget-object v1, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_24

    goto :goto_b

    .line 601
    :cond_20
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .end local v1           #p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :catchall_24
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 464
    .local v0, x:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_c

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 465
    :cond_c
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 606
    if-nez p1, :cond_4

    .line 618
    :goto_3
    return v2

    .line 607
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 608
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 610
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->last:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .local v1, p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :goto_b
    if-eqz v1, :cond_20

    .line 611
    iget-object v3, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 612
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlink(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_24

    .line 613
    const/4 v2, 0x1

    .line 618
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .line 610
    :cond_1d
    :try_start_1d
    iget-object v1, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->prev:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_24

    goto :goto_b

    .line 618
    :cond_20
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .end local v1           #p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :catchall_24
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public size()I
    .registers 3

    .prologue
    .line 822
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 823
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 825
    :try_start_5
    iget v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 827
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 690
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeFirst()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 489
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 490
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 493
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v1

    .local v1, x:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_16

    .line 494
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 497
    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :catchall_11
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #x:Ljava/lang/Object;,"TE;"
    :cond_16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public takeLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 502
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 503
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 506
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v1

    .local v1, x:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_16

    .line 507
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 510
    .end local v1           #x:Ljava/lang/Object;,"TE;"
    :catchall_11
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #x:Ljava/lang/Object;,"TE;"
    :cond_16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 7

    .prologue
    .line 911
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 912
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 914
    :try_start_5
    iget v5, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 915
    .local v0, a:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 916
    .local v1, k:I
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .local v4, p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1           #k:I
    .local v2, k:I
    :goto_d
    if-eqz v4, :cond_19

    .line 917
    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    iget-object v5, v4, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, v0, v2

    .line 916
    iget-object v4, v4, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1d

    move v2, v1

    .end local v1           #k:I
    .restart local v2       #k:I
    goto :goto_d

    .line 920
    :cond_19
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0           #a:[Ljava/lang/Object;
    .end local v2           #k:I
    .end local v4           #p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :catchall_1d
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 963
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 964
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 966
    :try_start_5
    array-length v5, p1

    iget v6, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    if-ge v5, v6, :cond_1e

    .line 967
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    iget v6, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 970
    :cond_1e
    const/4 v1, 0x0

    .line 971
    .local v1, k:I
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .local v4, p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1           #k:I
    .local v2, k:I
    :goto_22
    if-eqz v4, :cond_2e

    .line 972
    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    iget-object v5, v4, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 971
    iget-object v4, v4, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    move v2, v1

    .end local v1           #k:I
    .restart local v2       #k:I
    goto :goto_22

    .line 973
    :cond_2e
    array-length v5, p1

    if-le v5, v2, :cond_34

    .line 974
    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_38

    .line 977
    :cond_34
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .end local v2           #k:I
    .end local v4           #p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :catchall_38
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 983
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 984
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 986
    :try_start_5
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 987
    .local v2, p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    if-nez v2, :cond_f

    .line 988
    const-string v4, "[]"
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_40

    .line 1001
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_e
    return-object v4

    .line 990
    :cond_f
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .local v3, sb:Ljava/lang/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 993
    :goto_19
    iget-object v0, v2, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 994
    .local v0, e:Ljava/lang/Object;,"TE;"
    if-ne v0, p0, :cond_1f

    const-string v0, "(this Collection)"

    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 995
    iget-object v2, v2, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 996
    if-nez v2, :cond_34

    .line 997
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_40

    move-result-object v4

    .line 1001
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_e

    .line 998
    :cond_34
    const/16 v4, 0x2c

    :try_start_36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_40

    goto :goto_19

    .line 1001
    .end local v2           #p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :catchall_40
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method unlink(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>;"
    .local p1, x:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->prev:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 304
    .local v1, p:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 305
    .local v0, n:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_a

    .line 306
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    .line 318
    :goto_9
    return-void

    .line 307
    :cond_a
    if-nez v0, :cond_10

    .line 308
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    goto :goto_9

    .line 310
    :cond_10
    iput-object v0, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 311
    iput-object v1, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->prev:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 312
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 315
    iget v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->count:I

    .line 316
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_9
.end method
