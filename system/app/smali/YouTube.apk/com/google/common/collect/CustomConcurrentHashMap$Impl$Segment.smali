.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# instance fields
.field volatile count:I

.field modCount:I

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

.field threshold:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 765
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 766
    return-void
.end method


# virtual methods
.method final clear()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1204
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_23

    .line 1205
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1207
    :try_start_8
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1208
    :goto_a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1209
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1208
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1211
    :cond_17
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_24

    .line 1214
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1217
    :cond_23
    return-void

    .line 1214
    :catchall_24
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method final containsKey(Ljava/lang/Object;I)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 823
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 824
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_28

    .line 825
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v1

    :goto_d
    if-eqz v1, :cond_28

    .line 826
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, p2, :cond_29

    .line 827
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 831
    if-eqz v3, :cond_29

    .line 832
    invoke-interface {v2, v3, p1}, Lcom/google/common/collect/bk;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 837
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    .line 842
    :cond_28
    return v0

    .line 825
    :cond_29
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d
.end method

.method final containsValue(Ljava/lang/Object;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 846
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 847
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_25

    .line 848
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 849
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    move v2, v0

    .line 850
    :goto_10
    if-ge v2, v5, :cond_25

    .line 851
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_16
    if-eqz v1, :cond_2b

    .line 852
    invoke-interface {v3, v1}, Lcom/google/common/collect/bk;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 856
    if-eqz v6, :cond_26

    .line 857
    invoke-interface {v3, v6, p1}, Lcom/google/common/collect/bk;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 861
    const/4 v0, 0x1

    .line 867
    :cond_25
    return v0

    .line 851
    :cond_26
    invoke-interface {v3, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_16

    .line 850
    :cond_2b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_10
.end method

.method final expand()V
    .registers 12

    .prologue
    .line 973
    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 974
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    .line 975
    const/high16 v0, 0x4000

    if-lt v7, v0, :cond_b

    .line 1040
    :goto_a
    return-void

    .line 993
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 994
    shl-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 995
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 996
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 997
    const/4 v0, 0x0

    move v5, v0

    :goto_27
    if-ge v5, v7, :cond_74

    .line 1000
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1002
    if-eqz v4, :cond_3e

    .line 1003
    invoke-interface {v8, v4}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1004
    invoke-interface {v8, v4}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v0

    and-int v3, v0, v10

    .line 1007
    if-nez v1, :cond_42

    .line 1008
    invoke-virtual {v9, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 997
    :cond_3e
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_27

    :cond_42
    move-object v0, v4

    .line 1015
    :goto_43
    if-eqz v1, :cond_53

    .line 1016
    invoke-interface {v8, v1}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, v10

    .line 1017
    if-eq v2, v3, :cond_77

    move-object v0, v1

    .line 1015
    :goto_4d
    invoke-interface {v8, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move v3, v2

    goto :goto_43

    .line 1023
    :cond_53
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v1, v4

    .line 1026
    :goto_57
    if-eq v1, v0, :cond_3e

    .line 1027
    invoke-interface {v8, v1}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1028
    if-eqz v2, :cond_6f

    .line 1029
    invoke-interface {v8, v1}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v3

    and-int/2addr v3, v10

    .line 1030
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1031
    invoke-interface {v8, v2, v1, v4}, Lcom/google/common/collect/bk;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1026
    :cond_6f
    invoke-interface {v8, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_57

    .line 1039
    :cond_74
    iput-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto :goto_a

    :cond_77
    move v2, v3

    goto :goto_4d
.end method

.method final get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 815
    if-nez v0, :cond_8

    .line 816
    const/4 v0, 0x0

    .line 819
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    invoke-interface {v1, v0}, Lcom/google/common/collect/bk;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public final getEntry(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 793
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v0, :cond_26

    .line 794
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_26

    .line 795
    invoke-interface {v1, v0}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p2, :cond_21

    .line 796
    invoke-interface {v1, v0}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 800
    if-eqz v2, :cond_21

    .line 801
    invoke-interface {v1, v2, p1}, Lcom/google/common/collect/bk;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 810
    :goto_20
    return-object v0

    .line 794
    :cond_21
    invoke-interface {v1, v0}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .line 810
    :cond_26
    const/4 v0, 0x0

    goto :goto_20
.end method

.method final getFirst(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 786
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .parameter

    .prologue
    .line 769
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method final put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 926
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 928
    :try_start_7
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 929
    add-int/lit8 v3, v0, 0x1

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v0, v1, :cond_12

    .line 930
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 933
    :cond_12
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 934
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 936
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 939
    :goto_21
    if-eqz v1, :cond_4d

    .line 940
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 941
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_48

    if-eqz v6, :cond_48

    invoke-interface {v2, p1, v6}, Lcom/google/common/collect/bk;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 947
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_64

    move-result-object v0

    .line 948
    if-eqz p4, :cond_41

    if-eqz v0, :cond_41

    .line 965
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_40
    return-object v0

    .line 952
    :cond_41
    :try_start_41
    invoke-interface {v2, v1, p3}, Lcom/google/common/collect/bk;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_64

    .line 965
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_40

    .line 939
    :cond_48
    :try_start_48
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_21

    .line 958
    :cond_4d
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 959
    invoke-interface {v2, p1, p2, v0}, Lcom/google/common/collect/bk;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 960
    invoke-interface {v2, v0, p3}, Lcom/google/common/collect/bk;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 961
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 962
    iput v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_64

    .line 963
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    const/4 v0, 0x0

    goto :goto_40

    :catchall_64
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method final remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v4, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 1044
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1046
    :try_start_7
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v5, v0, -0x1

    .line 1047
    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1048
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    .line 1049
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .line 1051
    :goto_1a
    if-eqz v3, :cond_63

    .line 1052
    invoke-interface {v4, v3}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1053
    invoke-interface {v4, v3}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p2, :cond_5d

    if-eqz v0, :cond_5d

    invoke-interface {v4, v0, p1}, Lcom/google/common/collect/bk;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1055
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    invoke-interface {v0, v3}, Lcom/google/common/collect/bk;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1059
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1060
    invoke-interface {v4, v3}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    .line 1061
    :goto_43
    if-eq v2, v3, :cond_54

    .line 1062
    invoke-interface {v4, v2}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1063
    if-eqz v8, :cond_4f

    .line 1064
    invoke-interface {v4, v8, v2, v1}, Lcom/google/common/collect/bk;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1061
    :cond_4f
    invoke-interface {v4, v2}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_43

    .line 1069
    :cond_54
    invoke-virtual {v6, v7, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1070
    iput v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_68

    .line 1077
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_5c
    return-object v0

    .line 1051
    :cond_5d
    :try_start_5d
    invoke-interface {v4, v3}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_68

    move-result-object v0

    move-object v3, v0

    goto :goto_1a

    .line 1075
    :cond_63
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    const/4 v0, 0x0

    goto :goto_5c

    :catchall_68
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method final remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1082
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 1083
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1085
    :try_start_8
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v4, v1, -0x1

    .line 1086
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1087
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v6, p2, v1

    .line 1088
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 1090
    :goto_1b
    if-eqz v2, :cond_71

    .line 1091
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1092
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, p2, :cond_6c

    if-eqz v7, :cond_6c

    invoke-interface {v3, v7, p1}, Lcom/google/common/collect/bk;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 1094
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v7, v7, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    invoke-interface {v7, v2}, Lcom/google/common/collect/bk;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1095
    if-eq p3, v7, :cond_43

    if-eqz p3, :cond_68

    if-eqz v7, :cond_68

    invoke-interface {v3, v7, p3}, Lcom/google/common/collect/bk;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 1100
    :cond_43
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1101
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1102
    :goto_4d
    if-eq v1, v2, :cond_5e

    .line 1103
    invoke-interface {v3, v1}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1104
    if-eqz v7, :cond_59

    .line 1105
    invoke-interface {v3, v7, v1, v0}, Lcom/google/common/collect/bk;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1102
    :cond_59
    invoke-interface {v3, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4d

    .line 1110
    :cond_5e
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1111
    iput v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_75

    .line 1112
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    const/4 v0, 0x1

    .line 1119
    :goto_67
    return v0

    .line 1114
    :cond_68
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_67

    .line 1090
    :cond_6c
    :try_start_6c
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_75

    move-result-object v2

    goto :goto_1b

    .line 1119
    :cond_71
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_67

    :catchall_75
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method public final removeEntry(Ljava/lang/Object;I)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 1169
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1171
    :try_start_7
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v4, v0, -0x1

    .line 1172
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1173
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    .line 1174
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 1176
    :goto_1a
    if-eqz v2, :cond_56

    .line 1177
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, p2, :cond_50

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1181
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1182
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1183
    :goto_35
    if-eq v1, v2, :cond_46

    .line 1184
    invoke-interface {v3, v1}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1185
    if-eqz v7, :cond_41

    .line 1186
    invoke-interface {v3, v7, v1, v0}, Lcom/google/common/collect/bk;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1183
    :cond_41
    invoke-interface {v3, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_35

    .line 1191
    :cond_46
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1192
    iput v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_5b

    .line 1193
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    const/4 v0, 0x1

    .line 1197
    :goto_4f
    return v0

    .line 1176
    :cond_50
    :try_start_50
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5b

    move-result-object v1

    move-object v2, v1

    goto :goto_1a

    .line 1197
    :cond_56
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    const/4 v0, 0x0

    goto :goto_4f

    :catchall_5b
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method public final removeEntry(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1126
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 1127
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1129
    :try_start_8
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v4, v1, -0x1

    .line 1130
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1131
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v6, p2, v1

    .line 1132
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 1134
    :goto_1b
    if-eqz v2, :cond_65

    .line 1135
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_60

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 1136
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1137
    if-eq v7, p3, :cond_37

    if-eqz p3, :cond_5c

    invoke-interface {v3, v7, p3}, Lcom/google/common/collect/bk;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 1142
    :cond_37
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1143
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1144
    :goto_41
    if-eq v1, v2, :cond_52

    .line 1145
    invoke-interface {v3, v1}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1146
    if-eqz v7, :cond_4d

    .line 1147
    invoke-interface {v3, v7, v1, v0}, Lcom/google/common/collect/bk;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1144
    :cond_4d
    invoke-interface {v3, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_41

    .line 1152
    :cond_52
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1153
    iput v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_69

    .line 1154
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    const/4 v0, 0x1

    .line 1161
    :goto_5b
    return v0

    .line 1156
    :cond_5c
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_5b

    .line 1134
    :cond_60
    :try_start_60
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_69

    move-result-object v2

    goto :goto_1b

    .line 1161
    :cond_65
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_5b

    :catchall_69
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method final replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 899
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 900
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 902
    :try_start_8
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_d
    if-eqz v2, :cond_39

    .line 903
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 904
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_33

    if-eqz v1, :cond_33

    invoke-interface {v3, p1, v1}, Lcom/google/common/collect/bk;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 908
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3d

    move-result-object v1

    .line 909
    if-nez v1, :cond_2b

    .line 910
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 920
    :goto_2a
    return-object v0

    .line 913
    :cond_2b
    :try_start_2b
    invoke-interface {v3, v2, p3}, Lcom/google/common/collect/bk;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3d

    .line 920
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v0, v1

    goto :goto_2a

    .line 902
    :cond_33
    :try_start_33
    invoke-interface {v3, v2}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3d

    move-result-object v1

    move-object v2, v1

    goto :goto_d

    .line 918
    :cond_39
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2a

    :catchall_3d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method final replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 871
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 872
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 874
    :try_start_8
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    if-eqz v1, :cond_3d

    .line 875
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 876
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_38

    if-eqz v3, :cond_38

    invoke-interface {v2, p1, v3}, Lcom/google/common/collect/bk;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 880
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_41

    move-result-object v3

    .line 881
    if-nez v3, :cond_2a

    .line 882
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 892
    :goto_29
    return v0

    .line 885
    :cond_2a
    :try_start_2a
    invoke-interface {v2, v3, p3}, Lcom/google/common/collect/bk;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 886
    invoke-interface {v2, v1, p4}, Lcom/google/common/collect/bk;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_41

    .line 887
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    const/4 v0, 0x1

    goto :goto_29

    .line 874
    :cond_38
    :try_start_38
    invoke-interface {v2, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_41

    move-result-object v1

    goto :goto_c

    .line 892
    :cond_3d
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_29

    :catchall_41
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0
.end method

.method final setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 3
    .parameter

    .prologue
    .line 777
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 778
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 779
    return-void
.end method
