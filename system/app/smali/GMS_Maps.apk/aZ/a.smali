.class public Laz/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaD/h;
.implements Lcom/google/googlenav/prefetch/android/y;


# static fields
.field static a:Ljava/lang/String;

.field private static f:Laz/a;


# instance fields
.field private final b:Ljava/util/List;

.field private volatile c:Laz/f;

.field private final d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final e:LaD/i;

.field private volatile g:LaD/c;

.field private volatile h:I

.field private i:J

.field private final j:Ljava/util/List;

.field private volatile k:I

.field private final l:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private volatile m:Ln/am;

.field private volatile n:I

.field private volatile o:Ljava/util/concurrent/CountDownLatch;

.field private volatile p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const-string v0, "offlineAreaManagerStorage"

    sput-object v0, Laz/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(LaD/i;)V
    .registers 4
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laz/a;->i:J

    .line 171
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Laz/a;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 214
    iput-object p1, p0, Laz/a;->e:LaD/i;

    .line 215
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laz/a;->b:Ljava/util/List;

    .line 216
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laz/a;->j:Ljava/util/List;

    .line 217
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 218
    invoke-direct {p0}, Laz/a;->r()V

    .line 219
    return-void
.end method

.method static synthetic a(Laz/a;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Laz/a;->h:I

    return p1
.end method

.method static synthetic a(Laz/a;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 90
    iput-wide p1, p0, Laz/a;->i:J

    return-wide p1
.end method

.method static synthetic a(Laz/a;)Laz/f;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Laz/a;->c:Laz/f;

    return-object v0
.end method

.method static synthetic a(Laz/a;Laz/f;)Laz/f;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Laz/a;->c:Laz/f;

    return-object p1
.end method

.method static synthetic a(Laz/a;Ln/am;)Ln/am;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Laz/a;->m:Ln/am;

    return-object p1
.end method

.method public static declared-synchronized a(LaD/i;)V
    .registers 3
    .parameter

    .prologue
    .line 276
    const-class v1, Laz/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Laz/a;->f:Laz/a;

    if-nez v0, :cond_e

    .line 279
    new-instance v0, Laz/a;

    invoke-direct {v0, p0}, Laz/a;-><init>(LaD/i;)V

    sput-object v0, Laz/a;->f:Laz/a;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 281
    :cond_e
    monitor-exit v1

    return-void

    .line 276
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Laz/a;Laz/l;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Laz/a;->a(Laz/l;)V

    return-void
.end method

.method private a(Laz/l;)V
    .registers 5
    .parameter

    .prologue
    .line 769
    iget-object v1, p0, Laz/a;->j:Ljava/util/List;

    monitor-enter v1

    .line 770
    :try_start_3
    iget-object v0, p0, Laz/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laz/m;

    .line 771
    invoke-interface {v0, p1}, Laz/m;->onOfflineDataUpdate(Laz/l;)V

    goto :goto_9

    .line 773
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 774
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laz/a;->c:Laz/f;

    invoke-virtual {v1}, Laz/f;->e()Lcom/google/googlenav/prefetch/android/y;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/prefetch/android/y;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Laz/a;->u()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laz/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 963
    const/4 v0, 0x0

    .line 964
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 965
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 966
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->hasDataConnection()Z

    move-result v0

    .line 971
    :cond_21
    if-eqz v0, :cond_29

    .line 976
    :goto_23
    const/16 v0, 0x79

    invoke-static {v0, p0, p1}, LaT/k;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 979
    return-void

    .line 971
    :cond_29
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p1, "o"

    goto :goto_23

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_23
.end method

.method private a(Z)V
    .registers 13
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 665
    iput v2, p0, Laz/a;->n:I

    .line 666
    iget-object v0, p0, Laz/a;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 668
    iget-object v0, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    new-array v1, v1, [Laz/f;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laz/f;

    .line 673
    if-eqz p1, :cond_1f

    iget-object v1, p0, Laz/a;->m:Ln/am;

    if-nez v1, :cond_7c

    :cond_1f
    move v1, v3

    :goto_20
    move v4, v1

    .line 674
    :goto_21
    iget-object v1, p0, Laz/a;->c:Laz/f;

    invoke-static {v1}, Laz/f;->c(Laz/f;)Lcom/google/googlenav/prefetch/android/y;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/prefetch/android/y;->a()Ln/am;

    move-result-object v6

    if-eqz v6, :cond_90

    .line 676
    iget-object v1, p0, Laz/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laz/f;

    .line 679
    invoke-static {v1}, Laz/f;->b(Laz/f;)I

    move-result v7

    if-nez v7, :cond_33

    invoke-static {v1}, Laz/f;->c(Laz/f;)Lcom/google/googlenav/prefetch/android/y;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/google/googlenav/prefetch/android/y;->a(Ln/am;)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v3

    .line 685
    :goto_50
    if-nez v1, :cond_91

    .line 686
    array-length v7, v0

    move v5, v2

    :goto_54
    if-ge v5, v7, :cond_6a

    aget-object v8, v0, v5

    .line 690
    invoke-virtual {v8}, Laz/f;->a()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7e

    invoke-static {v8}, Laz/f;->c(Laz/f;)Lcom/google/googlenav/prefetch/android/y;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/google/googlenav/prefetch/android/y;->a(Ln/am;)Z

    move-result v8

    if-eqz v8, :cond_7e

    move v1, v3

    .line 696
    :cond_6a
    if-nez v1, :cond_91

    .line 697
    iget v1, p0, Laz/a;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laz/a;->n:I

    .line 698
    if-eqz v4, :cond_81

    .line 699
    iget-object v1, p0, Laz/a;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move v1, v4

    :goto_7a
    move v4, v1

    .line 706
    goto :goto_21

    :cond_7c
    move v1, v2

    .line 673
    goto :goto_20

    .line 686
    :cond_7e
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 700
    :cond_81
    iget-object v1, p0, Laz/a;->m:Ln/am;

    invoke-virtual {v6, v1}, Ln/am;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 702
    iget-object v1, p0, Laz/a;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_7a

    .line 707
    :cond_90
    return-void

    :cond_91
    move v1, v4

    goto :goto_7a

    :cond_93
    move v1, v2

    goto :goto_50
.end method

.method static synthetic b(Laz/a;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Laz/a;->p:I

    return p1
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 876
    packed-switch p0, :pswitch_data_18

    .line 883
    :pswitch_3
    const/16 v0, 0x358

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    .line 879
    :pswitch_a
    const/16 v0, 0x35b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 881
    :pswitch_11
    const/16 v0, 0x341

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 876
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_a
        :pswitch_11
        :pswitch_3
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic b(Laz/a;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Laz/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 249
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->a()Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isOfflineMapsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 272
    :goto_a
    return-void

    .line 254
    :cond_b
    new-instance v0, Laz/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1}, Laz/b;-><init>(LY/c;)V

    invoke-virtual {v0}, Laz/b;->g()V

    goto :goto_a
.end method

.method public static c()Laz/a;
    .registers 1

    .prologue
    .line 286
    sget-object v0, Laz/a;->f:Laz/a;

    if-nez v0, :cond_7

    .line 287
    sget-object v0, Laz/a;->f:Laz/a;

    .line 295
    :goto_6
    return-object v0

    .line 292
    :cond_7
    :try_start_7
    sget-object v0, Laz/a;->f:Laz/a;

    iget-object v0, v0, Laz/a;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_e} :catch_11

    .line 295
    :goto_e
    sget-object v0, Laz/a;->f:Laz/a;

    goto :goto_6

    .line 293
    :catch_11
    move-exception v0

    goto :goto_e
.end method

.method private static c(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 888
    packed-switch p0, :pswitch_data_1c

    .line 905
    const-string v0, "0"

    :goto_5
    return-object v0

    .line 890
    :pswitch_6
    const-string v0, "1"

    goto :goto_5

    .line 892
    :pswitch_9
    const-string v0, "2"

    goto :goto_5

    .line 894
    :pswitch_c
    const-string v0, "3"

    goto :goto_5

    .line 896
    :pswitch_f
    const-string v0, "4"

    goto :goto_5

    .line 898
    :pswitch_12
    const-string v0, "5"

    goto :goto_5

    .line 900
    :pswitch_15
    const-string v0, "6"

    goto :goto_5

    .line 902
    :pswitch_18
    const-string v0, "7"

    goto :goto_5

    .line 888
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method static synthetic c(Laz/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic d(Laz/a;)I
    .registers 2
    .parameter

    .prologue
    .line 90
    iget v0, p0, Laz/a;->h:I

    return v0
.end method

.method static synthetic e(Laz/a;)Ln/am;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Laz/a;->m:Ln/am;

    return-object v0
.end method

.method static synthetic f(Laz/a;)J
    .registers 3
    .parameter

    .prologue
    .line 90
    iget-wide v0, p0, Laz/a;->i:J

    return-wide v0
.end method

.method static synthetic g(Laz/a;)I
    .registers 2
    .parameter

    .prologue
    .line 90
    iget v0, p0, Laz/a;->p:I

    return v0
.end method

.method static synthetic h(Laz/a;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Laz/a;->o:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic i(Laz/a;)[Laz/f;
    .registers 2
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Laz/a;->t()[Laz/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Laz/a;)[Laz/f;
    .registers 2
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Laz/a;->s()[Laz/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Laz/a;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Laz/a;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Laz/a;)LaD/i;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Laz/a;->e:LaD/i;

    return-object v0
.end method

.method static synthetic q()Laz/a;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Laz/a;->f:Laz/a;

    return-object v0
.end method

.method private r()V
    .registers 3

    .prologue
    .line 367
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Laz/a;->o:Ljava/util/concurrent/CountDownLatch;

    .line 368
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laz/d;

    invoke-direct {v1, p0}, Laz/d;-><init>(Laz/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 458
    return-void
.end method

.method private declared-synchronized s()[Laz/f;
    .registers 3

    .prologue
    .line 517
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Laz/a;->b:Ljava/util/List;

    iget-object v1, p0, Laz/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Laz/f;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laz/f;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized t()[Laz/f;
    .registers 3

    .prologue
    .line 521
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    new-array v1, v1, [Laz/f;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laz/f;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private u()I
    .registers 3

    .prologue
    .line 525
    iget-object v0, p0, Laz/a;->g:LaD/c;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Laz/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private v()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 710
    iput v2, p0, Laz/a;->h:I

    .line 711
    const/4 v0, -0x1

    iput v0, p0, Laz/a;->k:I

    .line 712
    new-instance v0, Laz/l;

    invoke-direct {v0}, Laz/l;-><init>()V

    iget v1, p0, Laz/a;->h:I

    invoke-virtual {v0, v1}, Laz/l;->a(I)Laz/l;

    move-result-object v0

    invoke-direct {p0, v0}, Laz/a;->a(Laz/l;)V

    .line 713
    iget-object v0, p0, Laz/a;->c:Laz/f;

    invoke-static {v0, v2}, Laz/f;->a(Laz/f;I)I

    .line 714
    iget-object v0, p0, Laz/a;->e:LaD/i;

    invoke-interface {v0, p0, p0}, LaD/i;->a(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V

    .line 715
    return-void
.end method

.method private w()V
    .registers 3

    .prologue
    .line 718
    const/4 v0, 0x2

    iput v0, p0, Laz/a;->h:I

    .line 719
    const/4 v0, -0x1

    iput v0, p0, Laz/a;->k:I

    .line 720
    new-instance v0, Laz/l;

    invoke-direct {v0}, Laz/l;-><init>()V

    iget v1, p0, Laz/a;->h:I

    invoke-virtual {v0, v1}, Laz/l;->a(I)Laz/l;

    move-result-object v0

    invoke-direct {p0, v0}, Laz/a;->a(Laz/l;)V

    .line 721
    invoke-virtual {p0}, Laz/a;->m()V

    .line 722
    iget-object v0, p0, Laz/a;->c:Laz/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laz/f;->a(Laz/f;I)I

    .line 723
    iget-object v0, p0, Laz/a;->e:LaD/i;

    invoke-interface {v0, p0, p0}, LaD/i;->b(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V

    .line 724
    return-void
.end method

.method private declared-synchronized x()V
    .registers 4

    .prologue
    .line 797
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    iput v0, p0, Laz/a;->h:I

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Laz/a;->c:Laz/f;

    .line 799
    iget-object v0, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 800
    iget-object v0, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laz/f;

    .line 801
    invoke-static {v0}, Laz/f;->b(Laz/f;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 802
    invoke-virtual {p0, v0}, Laz/a;->b(Laz/f;)Z
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_27

    .line 807
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 804
    :cond_23
    :try_start_23
    invoke-virtual {p0, v0}, Laz/a;->a(Laz/f;)I
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_21

    .line 797
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private y()Ljava/lang/String;
    .registers 2

    .prologue
    .line 926
    iget v0, p0, Laz/a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laz/a;->p:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Laz/f;)I
    .registers 4
    .parameter

    .prologue
    .line 539
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Laz/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 540
    invoke-direct {p0}, Laz/a;->u()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_50

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_10

    .line 541
    const/4 v0, 0x1

    .line 558
    :goto_e
    monitor-exit p0

    return v0

    .line 543
    :cond_10
    const/4 v0, 0x2

    :try_start_11
    invoke-static {p1, v0}, Laz/f;->a(Laz/f;I)I

    .line 544
    iget v0, p0, Laz/a;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_47

    .line 545
    iget-object v0, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 551
    :goto_1e
    new-instance v0, Laz/l;

    invoke-direct {v0}, Laz/l;-><init>()V

    invoke-direct {p0}, Laz/a;->s()[Laz/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz/l;->a([Laz/f;)Laz/l;

    move-result-object v0

    iget-object v1, p0, Laz/a;->c:Laz/f;

    invoke-virtual {v0, v1}, Laz/l;->a(Laz/f;)Laz/l;

    move-result-object v0

    invoke-direct {p0}, Laz/a;->t()[Laz/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz/l;->b([Laz/f;)Laz/l;

    move-result-object v0

    iget v1, p0, Laz/a;->h:I

    invoke-virtual {v0, v1}, Laz/l;->a(I)Laz/l;

    move-result-object v0

    invoke-direct {p0, v0}, Laz/a;->a(Laz/l;)V

    .line 556
    invoke-virtual {p0}, Laz/a;->e()V

    .line 558
    const/4 v0, 0x0

    goto :goto_e

    .line 547
    :cond_47
    iput-object p1, p0, Laz/a;->c:Laz/f;

    .line 548
    invoke-virtual {p0}, Laz/a;->m()V

    .line 549
    invoke-direct {p0}, Laz/a;->v()V
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_50

    goto :goto_1e

    .line 539
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Ln/am;
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Laz/a;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    return-object v0
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 911
    iget-object v0, p0, Laz/a;->g:LaD/c;

    if-eqz v0, :cond_c

    .line 912
    iget-object v0, p0, Laz/a;->g:LaD/c;

    invoke-interface {v0}, LaD/c;->c()V

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Laz/a;->g:LaD/c;

    .line 915
    :cond_c
    const/4 v0, 0x3

    iput v0, p0, Laz/a;->h:I

    .line 916
    const-string v0, "f"

    invoke-static {p1}, Laz/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    new-instance v0, Laz/l;

    invoke-direct {v0}, Laz/l;-><init>()V

    iget v1, p0, Laz/a;->h:I

    invoke-virtual {v0, v1}, Laz/l;->a(I)Laz/l;

    move-result-object v0

    invoke-static {p1}, Laz/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz/l;->a(Ljava/lang/String;)Laz/l;

    move-result-object v0

    invoke-direct {p0, v0}, Laz/a;->a(Laz/l;)V

    .line 920
    invoke-virtual {p0}, Laz/a;->e()V

    .line 922
    return-void
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 784
    sub-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    .line 785
    iget v1, p0, Laz/a;->k:I

    if-eq v0, v1, :cond_2b

    .line 786
    new-instance v1, Laz/l;

    invoke-direct {v1}, Laz/l;-><init>()V

    iget v2, p0, Laz/a;->h:I

    invoke-virtual {v1, v2}, Laz/l;->a(I)Laz/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Laz/l;->b(I)Laz/l;

    move-result-object v1

    sub-int v2, p1, p2

    mul-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Laz/l;->c(I)Laz/l;

    move-result-object v1

    mul-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Laz/l;->d(I)Laz/l;

    move-result-object v1

    invoke-direct {p0, v1}, Laz/a;->a(Laz/l;)V

    .line 791
    iput v0, p0, Laz/a;->k:I

    .line 794
    :cond_2b
    return-void
.end method

.method public a(LaD/c;)V
    .registers 2
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Laz/a;->g:LaD/c;

    .line 780
    return-void
.end method

.method public a(Laz/m;)V
    .registers 5
    .parameter

    .prologue
    .line 478
    if-nez p1, :cond_3

    .line 501
    :goto_2
    return-void

    .line 482
    :cond_3
    iget-object v1, p0, Laz/a;->j:Ljava/util/List;

    monitor-enter v1

    .line 483
    :try_start_6
    iget-object v0, p0, Laz/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 484
    iget-object v0, p0, Laz/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_26

    .line 490
    new-instance v0, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    new-instance v2, Laz/e;

    invoke-direct {v2, p0, p1}, Laz/e;-><init>(Laz/a;Laz/m;)V

    invoke-direct {v0, v1, v2}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->g()V

    goto :goto_2

    .line 486
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public a(Ln/am;)Z
    .registers 3
    .parameter

    .prologue
    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method public b(Laz/m;)V
    .registers 4
    .parameter

    .prologue
    .line 507
    if-nez p1, :cond_3

    .line 514
    :goto_2
    return-void

    .line 511
    :cond_3
    iget-object v1, p0, Laz/a;->j:Ljava/util/List;

    monitor-enter v1

    .line 512
    :try_start_6
    iget-object v0, p0, Laz/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 513
    monitor-exit v1

    goto :goto_2

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized b(Laz/f;)Z
    .registers 4
    .parameter

    .prologue
    .line 569
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Laz/a;->c:Laz/f;

    if-ne p1, v0, :cond_b

    .line 570
    invoke-virtual {p0}, Laz/a;->h()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4d

    move-result v0

    .line 587
    :goto_9
    monitor-exit p0

    return v0

    .line 572
    :cond_b
    :try_start_b
    iget-object v0, p0, Laz/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 573
    const/4 v0, 0x3

    invoke-static {p1, v0}, Laz/f;->a(Laz/f;I)I

    .line 574
    iget v0, p0, Laz/a;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_47

    .line 575
    iget-object v0, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 580
    :goto_1e
    new-instance v0, Laz/l;

    invoke-direct {v0}, Laz/l;-><init>()V

    invoke-direct {p0}, Laz/a;->s()[Laz/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz/l;->a([Laz/f;)Laz/l;

    move-result-object v0

    iget-object v1, p0, Laz/a;->c:Laz/f;

    invoke-virtual {v0, v1}, Laz/l;->a(Laz/f;)Laz/l;

    move-result-object v0

    invoke-direct {p0}, Laz/a;->t()[Laz/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz/l;->b([Laz/f;)Laz/l;

    move-result-object v0

    iget v1, p0, Laz/a;->h:I

    invoke-virtual {v0, v1}, Laz/l;->a(I)Laz/l;

    move-result-object v0

    invoke-direct {p0, v0}, Laz/a;->a(Laz/l;)V

    .line 585
    invoke-virtual {p0}, Laz/a;->e()V

    .line 587
    const/4 v0, 0x1

    goto :goto_9

    .line 577
    :cond_47
    iput-object p1, p0, Laz/a;->c:Laz/f;

    .line 578
    invoke-direct {p0}, Laz/a;->w()V
    :try_end_4c
    .catchall {:try_start_b .. :try_end_4c} :catchall_4d

    goto :goto_1e

    .line 569
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Laz/f;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 594
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Laz/a;->c:Laz/f;

    if-ne p1, v2, :cond_d

    .line 595
    invoke-virtual {p0}, Laz/a;->h()Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4f

    move-result v0

    .line 623
    :goto_b
    monitor-exit p0

    return v0

    .line 597
    :cond_d
    :try_start_d
    iget-object v2, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 598
    iget-object v1, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 599
    invoke-virtual {p1}, Laz/f;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2a

    .line 600
    const/4 v1, 0x0

    invoke-static {p1, v1}, Laz/f;->a(Laz/f;I)I

    .line 601
    iget-object v1, p0, Laz/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_2a
    new-instance v1, Laz/l;

    invoke-direct {v1}, Laz/l;-><init>()V

    invoke-direct {p0}, Laz/a;->s()[Laz/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Laz/l;->a([Laz/f;)Laz/l;

    move-result-object v1

    iget-object v2, p0, Laz/a;->c:Laz/f;

    invoke-virtual {v1, v2}, Laz/l;->a(Laz/f;)Laz/l;

    move-result-object v1

    invoke-direct {p0}, Laz/a;->t()[Laz/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Laz/l;->b([Laz/f;)Laz/l;

    move-result-object v1

    iget v2, p0, Laz/a;->h:I

    invoke-virtual {v1, v2}, Laz/l;->a(I)Laz/l;

    move-result-object v1

    invoke-direct {p0, v1}, Laz/a;->a(Laz/l;)V
    :try_end_4e
    .catchall {:try_start_d .. :try_end_4e} :catchall_4f

    goto :goto_b

    .line 594
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 613
    :cond_52
    :try_start_52
    invoke-virtual {p1}, Laz/f;->a()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8b

    iget-object v2, p0, Laz/a;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 615
    iget-object v1, p0, Laz/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 616
    new-instance v1, Laz/l;

    invoke-direct {v1}, Laz/l;-><init>()V

    invoke-direct {p0}, Laz/a;->s()[Laz/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Laz/l;->a([Laz/f;)Laz/l;

    move-result-object v1

    iget-object v2, p0, Laz/a;->c:Laz/f;

    invoke-virtual {v1, v2}, Laz/l;->a(Laz/f;)Laz/l;

    move-result-object v1

    invoke-direct {p0}, Laz/a;->t()[Laz/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Laz/l;->b([Laz/f;)Laz/l;

    move-result-object v1

    iget v2, p0, Laz/a;->h:I

    invoke-virtual {v1, v2}, Laz/l;->a(I)Laz/l;

    move-result-object v1

    invoke-direct {p0, v1}, Laz/a;->a(Laz/l;)V
    :try_end_8a
    .catchall {:try_start_52 .. :try_end_8a} :catchall_4f

    goto :goto_b

    :cond_8b
    move v0, v1

    .line 623
    goto/16 :goto_b
.end method

.method public declared-synchronized d()V
    .registers 3

    .prologue
    .line 303
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    iput v0, p0, Laz/a;->h:I

    .line 304
    invoke-virtual {p0}, Laz/a;->f()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Laz/a;->c:Laz/f;

    .line 307
    iget-object v0, p0, Laz/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 308
    iget-object v0, p0, Laz/a;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 309
    invoke-virtual {p0}, Laz/a;->e()V

    .line 310
    new-instance v0, Laz/l;

    invoke-direct {v0}, Laz/l;-><init>()V

    invoke-direct {p0}, Laz/a;->s()[Laz/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz/l;->a([Laz/f;)Laz/l;

    move-result-object v0

    iget-object v1, p0, Laz/a;->c:Laz/f;

    invoke-virtual {v0, v1}, Laz/l;->a(Laz/f;)Laz/l;

    move-result-object v0

    invoke-direct {p0}, Laz/a;->t()[Laz/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz/l;->b([Laz/f;)Laz/l;

    move-result-object v0

    iget v1, p0, Laz/a;->h:I

    invoke-virtual {v0, v1}, Laz/l;->a(I)Laz/l;

    move-result-object v0

    invoke-direct {p0, v0}, Laz/a;->a(Laz/l;)V
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_3d

    .line 315
    monitor-exit p0

    return-void

    .line 303
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e()V
    .registers 3

    .prologue
    .line 324
    new-instance v0, Laz/c;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Laz/c;-><init>(Laz/a;LY/c;)V

    invoke-virtual {v0}, Laz/c;->g()V

    .line 361
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Laz/a;->g:LaD/c;

    if-eqz v0, :cond_b

    .line 467
    iget-object v0, p0, Laz/a;->e:LaD/i;

    iget-object v1, p0, Laz/a;->g:LaD/c;

    invoke-interface {v0, v1}, LaD/i;->a(LaD/c;)V

    .line 470
    :cond_b
    return-void
.end method

.method public declared-synchronized g()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 632
    monitor-enter p0

    :try_start_2
    iget v1, p0, Laz/a;->h:I

    if-eqz v1, :cond_e

    iget v1, p0, Laz/a;->h:I
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_22

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    .line 633
    const/4 v0, 0x0

    .line 640
    :goto_c
    monitor-exit p0

    return v0

    .line 635
    :cond_e
    :try_start_e
    iget-object v1, p0, Laz/a;->c:Laz/f;

    invoke-static {v1}, Laz/f;->c(Laz/f;)Lcom/google/googlenav/prefetch/android/y;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/prefetch/android/y;->m()V

    .line 636
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Laz/a;->a(Z)V

    .line 637
    invoke-direct {p0}, Laz/a;->v()V

    .line 638
    invoke-virtual {p0}, Laz/a;->e()V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_22

    goto :goto_c

    .line 632
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .registers 3

    .prologue
    .line 650
    monitor-enter p0

    :try_start_1
    iget v0, p0, Laz/a;->h:I

    if-eqz v0, :cond_d

    iget v0, p0, Laz/a;->h:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 651
    const/4 v0, 0x0

    .line 656
    :goto_b
    monitor-exit p0

    return v0

    .line 653
    :cond_d
    :try_start_d
    invoke-direct {p0}, Laz/a;->w()V

    .line 654
    invoke-virtual {p0}, Laz/a;->e()V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    .line 656
    const/4 v0, 0x1

    goto :goto_b

    .line 650
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Laz/a;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Laz/a;->c:Laz/f;

    invoke-static {v0}, Laz/f;->c(Laz/f;)Lcom/google/googlenav/prefetch/android/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/y;->j()I

    move-result v0

    return v0
.end method

.method public k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 743
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 753
    iget v0, p0, Laz/a;->n:I

    return v0
.end method

.method public declared-synchronized m()V
    .registers 2

    .prologue
    .line 758
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Laz/a;->c:Laz/f;

    invoke-static {v0}, Laz/f;->c(Laz/f;)Lcom/google/googlenav/prefetch/android/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/y;->m()V

    .line 759
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Laz/a;->a(Z)V

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Laz/a;->m:Ln/am;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 761
    monitor-exit p0

    return-void

    .line 758
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()V
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Laz/a;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    iput-object v0, p0, Laz/a;->m:Ln/am;

    .line 766
    return-void
.end method

.method public declared-synchronized o()V
    .registers 4

    .prologue
    .line 824
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Laz/a;->g:LaD/c;

    .line 825
    iget v0, p0, Laz/a;->h:I

    packed-switch v0, :pswitch_data_8c

    .line 852
    :goto_9
    new-instance v0, Laz/l;

    invoke-direct {v0}, Laz/l;-><init>()V

    invoke-direct {p0}, Laz/a;->s()[Laz/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz/l;->a([Laz/f;)Laz/l;

    move-result-object v0

    iget-object v1, p0, Laz/a;->c:Laz/f;

    invoke-virtual {v0, v1}, Laz/l;->a(Laz/f;)Laz/l;

    move-result-object v0

    invoke-direct {p0}, Laz/a;->t()[Laz/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz/l;->b([Laz/f;)Laz/l;

    move-result-object v0

    iget v1, p0, Laz/a;->h:I

    invoke-virtual {v0, v1}, Laz/l;->a(I)Laz/l;

    move-result-object v0

    invoke-direct {p0, v0}, Laz/a;->a(Laz/l;)V

    .line 857
    invoke-virtual {p0}, Laz/a;->e()V
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_6e

    .line 859
    monitor-exit p0

    return-void

    .line 829
    :pswitch_32
    :try_start_32
    new-instance v0, Laz/l;

    invoke-direct {v0}, Laz/l;-><init>()V

    iget v1, p0, Laz/a;->h:I

    invoke-virtual {v0, v1}, Laz/l;->a(I)Laz/l;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Laz/l;->b(I)Laz/l;

    move-result-object v0

    invoke-direct {p0, v0}, Laz/a;->a(Laz/l;)V

    .line 831
    iget-object v0, p0, Laz/a;->c:Laz/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laz/f;->a(Laz/f;I)I

    .line 832
    iget-object v0, p0, Laz/a;->c:Laz/f;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Laz/f;->b(J)V

    .line 836
    iget-object v0, p0, Laz/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Laz/a;->c:Laz/f;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 837
    const-string v0, "t"

    invoke-direct {p0, v0}, Laz/a;->a(Ljava/lang/String;)V

    .line 838
    invoke-direct {p0}, Laz/a;->x()V
    :try_end_6d
    .catchall {:try_start_32 .. :try_end_6d} :catchall_6e

    goto :goto_9

    .line 824
    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 841
    :pswitch_71
    :try_start_71
    iget-object v0, p0, Laz/a;->c:Laz/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laz/f;->a(Laz/f;I)I

    .line 844
    iget-object v0, p0, Laz/a;->c:Laz/f;

    invoke-virtual {v0}, Laz/f;->g()Ljava/io/File;

    move-result-object v0

    .line 845
    if-eqz v0, :cond_82

    .line 846
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 848
    :cond_82
    const-string v0, "l"

    invoke-direct {p0, v0}, Laz/a;->a(Ljava/lang/String;)V

    .line 849
    invoke-direct {p0}, Laz/a;->x()V
    :try_end_8a
    .catchall {:try_start_71 .. :try_end_8a} :catchall_6e

    goto/16 :goto_9

    .line 825
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_32
        :pswitch_71
    .end packed-switch
.end method

.method public p()V
    .registers 3

    .prologue
    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Laz/a;->g:LaD/c;

    .line 867
    iget v0, p0, Laz/a;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 868
    const/4 v0, 0x0

    iput v0, p0, Laz/a;->h:I

    .line 870
    :cond_b
    new-instance v0, Laz/l;

    invoke-direct {v0}, Laz/l;-><init>()V

    iget v1, p0, Laz/a;->h:I

    invoke-virtual {v0, v1}, Laz/l;->a(I)Laz/l;

    move-result-object v0

    invoke-direct {p0, v0}, Laz/a;->a(Laz/l;)V

    .line 871
    invoke-virtual {p0}, Laz/a;->e()V

    .line 873
    return-void
.end method
