.class final Ldbxyzptlk/v/m;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "panda.py"


# instance fields
.field volatile a:I

.field b:I

.field c:I

.field volatile d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field final synthetic e:Ldbxyzptlk/v/e;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/e;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 784
    invoke-virtual {p0, p2}, Ldbxyzptlk/v/m;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldbxyzptlk/v/m;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 785
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 811
    iget-object v0, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v1, v0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 812
    iget v0, p0, Ldbxyzptlk/v/m;->a:I

    if-eqz v0, :cond_26

    .line 813
    invoke-virtual {p0, p2}, Ldbxyzptlk/v/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_26

    .line 814
    invoke-interface {v1, v0}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, p2, :cond_19

    .line 813
    :cond_14
    invoke-interface {v1, v0}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .line 818
    :cond_19
    invoke-interface {v1, v0}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 819
    if-eqz v2, :cond_14

    .line 823
    invoke-interface {v1, v2, p1}, Ldbxyzptlk/v/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 829
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 919
    iget-object v1, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v3, v1, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 920
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->lock()V

    .line 922
    :try_start_8
    invoke-virtual {p0, p2}, Ldbxyzptlk/v/m;->b(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_d
    if-eqz v2, :cond_39

    .line 923
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 924
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_33

    if-eqz v1, :cond_33

    invoke-interface {v3, p1, v1}, Ldbxyzptlk/v/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 928
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3d

    move-result-object v1

    .line 929
    if-nez v1, :cond_2b

    .line 940
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    :goto_2a
    return-object v0

    .line 933
    :cond_2b
    :try_start_2b
    invoke-interface {v3, v2, p3}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3d

    .line 940
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    move-object v0, v1

    goto :goto_2a

    .line 922
    :cond_33
    :try_start_33
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3d

    move-result-object v1

    move-object v2, v1

    goto :goto_d

    .line 940
    :cond_39
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_2a

    :catchall_3d
    move-exception v0

    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 945
    iget-object v0, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v2, v0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 946
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->lock()V

    .line 948
    :try_start_7
    iget v0, p0, Ldbxyzptlk/v/m;->a:I

    .line 949
    add-int/lit8 v3, v0, 0x1

    iget v1, p0, Ldbxyzptlk/v/m;->c:I

    if-le v0, v1, :cond_12

    .line 950
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->a()V

    .line 953
    :cond_12
    iget-object v4, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 954
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 956
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 959
    :goto_21
    if-eqz v1, :cond_4d

    .line 960
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 961
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_48

    if-eqz v6, :cond_48

    invoke-interface {v2, p1, v6}, Ldbxyzptlk/v/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 967
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_64

    move-result-object v0

    .line 968
    if-eqz p4, :cond_41

    if-eqz v0, :cond_41

    .line 985
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    :goto_40
    return-object v0

    .line 972
    :cond_41
    :try_start_41
    invoke-interface {v2, v1, p3}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_64

    .line 985
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_40

    .line 959
    :cond_48
    :try_start_48
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_21

    .line 978
    :cond_4d
    iget v1, p0, Ldbxyzptlk/v/m;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldbxyzptlk/v/m;->b:I

    .line 979
    invoke-interface {v2, p1, p2, v0}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 980
    invoke-interface {v2, v0, p3}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 981
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 982
    iput v3, p0, Ldbxyzptlk/v/m;->a:I
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_64

    .line 983
    const/4 v0, 0x0

    .line 985
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_40

    :catchall_64
    move-exception v0

    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    throw v0
.end method

.method final a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .parameter

    .prologue
    .line 788
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method final a()V
    .registers 12

    .prologue
    .line 993
    iget-object v6, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 994
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    .line 995
    const/high16 v0, 0x4000

    if-lt v7, v0, :cond_b

    .line 1063
    :goto_a
    return-void

    .line 1012
    :cond_b
    iget-object v0, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v8, v0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 1013
    shl-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0}, Ldbxyzptlk/v/m;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 1014
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Ldbxyzptlk/v/m;->c:I

    .line 1015
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 1016
    const/4 v0, 0x0

    move v5, v0

    :goto_27
    if-ge v5, v7, :cond_75

    .line 1020
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1022
    if-eqz v4, :cond_3e

    .line 1023
    invoke-interface {v8, v4}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1024
    invoke-interface {v8, v4}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v0

    and-int v1, v0, v10

    .line 1027
    if-nez v2, :cond_42

    .line 1028
    invoke-virtual {v9, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1016
    :cond_3e
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_27

    :cond_42
    move-object v3, v4

    .line 1037
    :goto_43
    if-eqz v2, :cond_54

    .line 1038
    invoke-interface {v8, v2}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v0

    and-int/2addr v0, v10

    .line 1039
    if-eq v0, v1, :cond_78

    move-object v1, v2

    .line 1037
    :goto_4d
    invoke-interface {v8, v2}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    move v1, v0

    goto :goto_43

    .line 1046
    :cond_54
    invoke-virtual {v9, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v0, v4

    .line 1049
    :goto_58
    if-eq v0, v3, :cond_3e

    .line 1050
    invoke-interface {v8, v0}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1051
    if-eqz v1, :cond_70

    .line 1052
    invoke-interface {v8, v0}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, v10

    .line 1053
    invoke-virtual {v9, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1054
    invoke-interface {v8, v1, v0, v4}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1049
    :cond_70
    invoke-interface {v8, v0}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_58

    .line 1062
    :cond_75
    iput-object v9, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto :goto_a

    :cond_78
    move v0, v1

    move-object v1, v3

    goto :goto_4d
.end method

.method final a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 3
    .parameter

    .prologue
    .line 796
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Ldbxyzptlk/v/m;->c:I

    .line 797
    iput-object p1, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 798
    return-void
.end method

.method final a(Ljava/lang/Object;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 865
    iget-object v1, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v3, v1, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 866
    iget v1, p0, Ldbxyzptlk/v/m;->a:I

    if-eqz v1, :cond_2a

    .line 867
    iget-object v4, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 868
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    move v2, v0

    .line 869
    :goto_10
    if-ge v2, v5, :cond_2a

    .line 870
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_16
    if-eqz v1, :cond_2b

    .line 871
    invoke-interface {v3, v1}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 876
    if-nez v6, :cond_23

    .line 870
    :cond_1e
    invoke-interface {v3, v1}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_16

    .line 880
    :cond_23
    invoke-interface {v3, v6, p1}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 881
    const/4 v0, 0x1

    .line 887
    :cond_2a
    return v0

    .line 869
    :cond_2b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_10
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 891
    iget-object v1, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v2, v1, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 892
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->lock()V

    .line 894
    :try_start_8
    invoke-virtual {p0, p2}, Ldbxyzptlk/v/m;->b(I)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    if-eqz v1, :cond_3d

    .line 895
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 896
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_38

    if-eqz v3, :cond_38

    invoke-interface {v2, p1, v3}, Ldbxyzptlk/v/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 900
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_41

    move-result-object v3

    .line 901
    if-nez v3, :cond_2a

    .line 914
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    :goto_29
    return v0

    .line 905
    :cond_2a
    :try_start_2a
    invoke-interface {v2, v3, p3}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 906
    invoke-interface {v2, v1, p4}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_41

    .line 907
    const/4 v0, 0x1

    .line 914
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_29

    .line 894
    :cond_38
    :try_start_38
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_41

    move-result-object v1

    goto :goto_c

    .line 914
    :cond_3d
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_29

    :catchall_41
    move-exception v0

    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    throw v0
.end method

.method final b(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 804
    iget-object v0, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 805
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 833
    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/v/m;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 834
    if-nez v0, :cond_8

    .line 835
    const/4 v0, 0x0

    .line 838
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v1, v1, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    invoke-interface {v1, v0}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method final b()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1226
    iget v1, p0, Ldbxyzptlk/v/m;->a:I

    if-eqz v1, :cond_23

    .line 1227
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->lock()V

    .line 1229
    :try_start_8
    iget-object v1, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1230
    :goto_a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1231
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1233
    :cond_17
    iget v0, p0, Ldbxyzptlk/v/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldbxyzptlk/v/m;->b:I

    .line 1234
    const/4 v0, 0x0

    iput v0, p0, Ldbxyzptlk/v/m;->a:I
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_24

    .line 1236
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    .line 1239
    :cond_23
    return-void

    .line 1236
    :catchall_24
    move-exception v0

    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    throw v0
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1104
    iget-object v1, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v3, v1, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 1105
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->lock()V

    .line 1107
    :try_start_8
    iget v1, p0, Ldbxyzptlk/v/m;->a:I

    add-int/lit8 v4, v1, -0x1

    .line 1108
    iget-object v5, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1109
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v6, p2, v1

    .line 1110
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 1112
    :goto_1b
    if-eqz v2, :cond_71

    .line 1113
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1114
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, p2, :cond_6c

    if-eqz v7, :cond_6c

    invoke-interface {v3, v7, p1}, Ldbxyzptlk/v/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 1115
    iget-object v7, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v7, v7, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    invoke-interface {v7, v2}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1116
    if-eq p3, v7, :cond_43

    if-eqz p3, :cond_68

    if-eqz v7, :cond_68

    invoke-interface {v3, v7, p3}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 1122
    :cond_43
    iget v0, p0, Ldbxyzptlk/v/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldbxyzptlk/v/m;->b:I

    .line 1123
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1124
    :goto_4d
    if-eq v1, v2, :cond_5e

    .line 1125
    invoke-interface {v3, v1}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1126
    if-eqz v7, :cond_59

    .line 1127
    invoke-interface {v3, v7, v1, v0}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1124
    :cond_59
    invoke-interface {v3, v1}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4d

    .line 1132
    :cond_5e
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1133
    iput v4, p0, Ldbxyzptlk/v/m;->a:I
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_75

    .line 1134
    const/4 v0, 0x1

    .line 1143
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    :goto_67
    return v0

    :cond_68
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_67

    .line 1112
    :cond_6c
    :try_start_6c
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_75

    move-result-object v2

    goto :goto_1b

    .line 1143
    :cond_71
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_67

    :catchall_75
    move-exception v0

    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    throw v0
.end method

.method final c(Ljava/lang/Object;I)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 842
    iget-object v1, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v2, v1, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 843
    iget v1, p0, Ldbxyzptlk/v/m;->a:I

    if-eqz v1, :cond_2d

    .line 844
    invoke-virtual {p0, p2}, Ldbxyzptlk/v/m;->b(I)Ljava/lang/Object;

    move-result-object v1

    :goto_d
    if-eqz v1, :cond_2d

    .line 845
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p2, :cond_1a

    .line 844
    :cond_15
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d

    .line 849
    :cond_1a
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 850
    if-eqz v3, :cond_15

    .line 854
    invoke-interface {v2, v3, p1}, Ldbxyzptlk/v/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 856
    invoke-interface {v2, v1}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    .line 861
    :cond_2d
    return v0
.end method

.method public final c(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1148
    iget-object v1, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v3, v1, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 1149
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->lock()V

    .line 1151
    :try_start_8
    iget v1, p0, Ldbxyzptlk/v/m;->a:I

    add-int/lit8 v4, v1, -0x1

    .line 1152
    iget-object v5, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1153
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v6, p2, v1

    .line 1154
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 1156
    :goto_1b
    if-eqz v2, :cond_65

    .line 1157
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_60

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 1158
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1159
    if-eq v7, p3, :cond_37

    if-eqz p3, :cond_5c

    invoke-interface {v3, v7, p3}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 1164
    :cond_37
    iget v0, p0, Ldbxyzptlk/v/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldbxyzptlk/v/m;->b:I

    .line 1165
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1166
    :goto_41
    if-eq v1, v2, :cond_52

    .line 1167
    invoke-interface {v3, v1}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1168
    if-eqz v7, :cond_4d

    .line 1169
    invoke-interface {v3, v7, v1, v0}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1166
    :cond_4d
    invoke-interface {v3, v1}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_41

    .line 1174
    :cond_52
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1175
    iput v4, p0, Ldbxyzptlk/v/m;->a:I
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_69

    .line 1176
    const/4 v0, 0x1

    .line 1185
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    :goto_5b
    return v0

    :cond_5c
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_5b

    .line 1156
    :cond_60
    :try_start_60
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_69

    move-result-object v2

    goto :goto_1b

    .line 1185
    :cond_65
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_5b

    :catchall_69
    move-exception v0

    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    throw v0
.end method

.method final d(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 1066
    iget-object v0, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v4, v0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 1067
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->lock()V

    .line 1069
    :try_start_7
    iget v0, p0, Ldbxyzptlk/v/m;->a:I

    add-int/lit8 v5, v0, -0x1

    .line 1070
    iget-object v6, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1071
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    .line 1072
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .line 1074
    :goto_1a
    if-eqz v3, :cond_63

    .line 1075
    invoke-interface {v4, v3}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1076
    invoke-interface {v4, v3}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p2, :cond_5d

    if-eqz v0, :cond_5d

    invoke-interface {v4, v0, p1}, Ldbxyzptlk/v/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1077
    iget-object v0, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v0, v0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    invoke-interface {v0, v3}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1081
    iget v2, p0, Ldbxyzptlk/v/m;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ldbxyzptlk/v/m;->b:I

    .line 1082
    invoke-interface {v4, v3}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    .line 1083
    :goto_43
    if-eq v2, v3, :cond_54

    .line 1084
    invoke-interface {v4, v2}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1085
    if-eqz v8, :cond_4f

    .line 1086
    invoke-interface {v4, v8, v2, v1}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1083
    :cond_4f
    invoke-interface {v4, v2}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_43

    .line 1091
    :cond_54
    invoke-virtual {v6, v7, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1092
    iput v5, p0, Ldbxyzptlk/v/m;->a:I
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_68

    .line 1099
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    :goto_5c
    return-object v0

    .line 1074
    :cond_5d
    :try_start_5d
    invoke-interface {v4, v3}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_68

    move-result-object v0

    move-object v3, v0

    goto :goto_1a

    .line 1097
    :cond_63
    const/4 v0, 0x0

    .line 1099
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_5c

    :catchall_68
    move-exception v0

    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    throw v0
.end method

.method public final e(Ljava/lang/Object;I)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 1190
    iget-object v0, p0, Ldbxyzptlk/v/m;->e:Ldbxyzptlk/v/e;

    iget-object v3, v0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 1191
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->lock()V

    .line 1193
    :try_start_7
    iget v0, p0, Ldbxyzptlk/v/m;->a:I

    add-int/lit8 v4, v0, -0x1

    .line 1194
    iget-object v5, p0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1195
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    .line 1196
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 1198
    :goto_1a
    if-eqz v2, :cond_56

    .line 1199
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, p2, :cond_50

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1203
    iget v1, p0, Ldbxyzptlk/v/m;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldbxyzptlk/v/m;->b:I

    .line 1204
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 1205
    :goto_35
    if-eq v1, v2, :cond_46

    .line 1206
    invoke-interface {v3, v1}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1207
    if-eqz v7, :cond_41

    .line 1208
    invoke-interface {v3, v7, v1, v0}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1205
    :cond_41
    invoke-interface {v3, v1}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_35

    .line 1213
    :cond_46
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1214
    iput v4, p0, Ldbxyzptlk/v/m;->a:I
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_5b

    .line 1215
    const/4 v0, 0x1

    .line 1221
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    :goto_4f
    return v0

    .line 1198
    :cond_50
    :try_start_50
    invoke-interface {v3, v2}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5b

    move-result-object v1

    move-object v2, v1

    goto :goto_1a

    .line 1219
    :cond_56
    const/4 v0, 0x0

    .line 1221
    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    goto :goto_4f

    :catchall_5b
    move-exception v0

    invoke-virtual {p0}, Ldbxyzptlk/v/m;->unlock()V

    throw v0
.end method
