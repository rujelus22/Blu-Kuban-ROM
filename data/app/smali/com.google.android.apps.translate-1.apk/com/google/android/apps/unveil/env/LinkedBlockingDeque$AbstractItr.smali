.class abstract Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;)V
    .registers 4
    .parameter

    .prologue
    .line 1091
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>.AbstractItr;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    iget-object v0, p1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1094
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1096
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->firstNode()Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1097
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    :goto_15
    iput-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_20

    .line 1099
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1101
    return-void

    .line 1097
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_20

    goto :goto_15

    .line 1099
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private succ(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1111
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>.AbstractItr;"
    .local p1, n:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->nextNode(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    move-result-object v0

    .line 1112
    .local v0, s:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_8

    .line 1113
    const/4 v0, 0x0

    .line 1117
    .end local v0           #s:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :cond_7
    :goto_7
    return-object v0

    .line 1114
    .restart local v0       #s:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    :cond_8
    iget-object v1, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_7

    .line 1116
    if-ne v0, p1, :cond_13

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->firstNode()Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    move-result-object v0

    goto :goto_7

    .line 1119
    :cond_13
    move-object p1, v0

    .line 1120
    goto :goto_0
.end method


# virtual methods
.method advance()V
    .registers 3

    .prologue
    .line 1127
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;

    iget-object v0, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1128
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1131
    :try_start_7
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->succ(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1132
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    :goto_14
    iput-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1f

    .line 1134
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1136
    return-void

    .line 1132
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1f

    goto :goto_14

    .line 1134
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method abstract firstNode()Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 1140
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    if-nez v1, :cond_a

    .line 1146
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1147
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    iput-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1148
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 1149
    .local v0, x:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->advance()V

    .line 1150
    return-object v0
.end method

.method abstract nextNode(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .registers 4

    .prologue
    .line 1155
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1156
    .local v1, n:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_a

    .line 1157
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1158
    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    .line 1159
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;

    iget-object v0, v2, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1160
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1162
    :try_start_14
    iget-object v2, v1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_1d

    .line 1163
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->unlink(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    .line 1165
    :cond_1d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1167
    return-void

    .line 1165
    :catchall_21
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
