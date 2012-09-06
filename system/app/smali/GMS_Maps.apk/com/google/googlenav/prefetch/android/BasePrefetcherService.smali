.class public abstract Lcom/google/googlenav/prefetch/android/BasePrefetcherService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final a:J

.field private static d:I


# instance fields
.field protected b:Lr/aP;

.field protected c:LaD/k;

.field private volatile e:Lcom/google/googlenav/prefetch/android/n;

.field private final f:Landroid/os/IBinder;

.field private volatile g:J

.field private volatile h:J

.field private i:J

.field private j:Landroid/os/Looper;

.field private k:Lcom/google/googlenav/prefetch/android/m;

.field private l:Lcom/google/googlenav/android/F;

.field private m:Landroid/net/wifi/WifiManager$WifiLock;

.field private n:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 75
    const/16 v0, 0x20

    sput v0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->d:I

    .line 92
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/16 v0, 0x14

    :goto_c
    sput-wide v0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a:J

    return-void

    :cond_f
    const-wide/16 v0, 0xa

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 165
    sget-object v0, Lcom/google/googlenav/prefetch/android/n;->d:Lcom/google/googlenav/prefetch/android/n;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e:Lcom/google/googlenav/prefetch/android/n;

    .line 168
    new-instance v0, Lcom/google/googlenav/prefetch/android/i;

    invoke-direct {v0, p0}, Lcom/google/googlenav/prefetch/android/i;-><init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->f:Landroid/os/IBinder;

    .line 1158
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/n;)Lcom/google/googlenav/prefetch/android/n;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e:Lcom/google/googlenav/prefetch/android/n;

    return-object p1
.end method

.method private a(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/prefetch/android/m;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/prefetch/android/m;->sendMessage(Landroid/os/Message;)Z

    .line 438
    return-void
.end method

.method private a(ILjava/lang/Object;J)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/prefetch/android/m;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    invoke-virtual {v1, v0, p3, p4}, Lcom/google/googlenav/prefetch/android/m;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 451
    return-void
.end method

.method private a(J)V
    .registers 6
    .parameter

    .prologue
    .line 1052
    iput-wide p1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->g:J

    .line 1053
    const-string v0, "LAST_PREFECHED_FINISHED"

    iget-wide v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->g:J

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;J)V

    .line 1055
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 1056
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->p()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;ILjava/lang/Object;J)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(ILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;LaD/c;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b(LaD/c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/k;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/k;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/y;LaD/h;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->c(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/prefetch/android/g;)V
    .registers 6
    .parameter

    .prologue
    .line 1118
    const-string v0, ""

    .line 1119
    sget-object v1, Lcom/google/googlenav/prefetch/android/f;->a:[I

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 1132
    :goto_d
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    const/16 v1, 0x60

    const-string v2, "c"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1138
    return-void

    .line 1121
    :pswitch_32
    const-string v0, "u"

    goto :goto_d

    .line 1124
    :pswitch_35
    const-string v0, "n"

    goto :goto_d

    .line 1127
    :pswitch_38
    const-string v0, "o"

    goto :goto_d

    .line 1119
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_32
        :pswitch_35
        :pswitch_38
    .end packed-switch
.end method

.method private a(Lcom/google/googlenav/prefetch/android/k;)V
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 861
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->a()Lcom/google/googlenav/prefetch/android/y;

    move-result-object v2

    .line 864
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->f()LaD/h;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 865
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->f()LaD/h;

    move-result-object v0

    invoke-interface {v0}, LaD/h;->n()V

    .line 870
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    invoke-virtual {v0}, Lr/aP;->k()J

    move-result-wide v3

    const-wide/16 v5, 0x190

    cmp-long v0, v3, v5

    if-gez v0, :cond_2d

    .line 872
    const-wide/16 v3, 0x3e8

    :try_start_20
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_11c

    .line 879
    :goto_23
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->q()Z

    move-result v0

    if-nez v0, :cond_12

    .line 885
    :cond_2d
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->d()LaD/g;

    move-result-object v0

    invoke-virtual {v0}, LaD/g;->e()Z

    move-result v0

    if-nez v0, :cond_64

    .line 886
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->y()V

    .line 888
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->f()LaD/h;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 889
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->d()LaD/g;

    move-result-object v0

    invoke-virtual {v0}, LaD/g;->d()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 890
    const/4 v0, 0x0

    .line 891
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    invoke-virtual {v2}, Lr/aP;->e()Z

    move-result v2

    if-nez v2, :cond_5c

    move v0, v1

    .line 896
    :cond_54
    :goto_54
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->f()LaD/h;

    move-result-object v1

    invoke-interface {v1, v0}, LaD/h;->a(I)V

    .line 955
    :cond_5b
    :goto_5b
    return-void

    .line 893
    :cond_5c
    invoke-static {}, Lcom/google/googlenav/android/F;->f()Z

    move-result v1

    if-nez v1, :cond_54

    .line 894
    const/4 v0, 0x2

    goto :goto_54

    .line 902
    :cond_64
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 904
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->b()I

    move-result v0

    if-lez v0, :cond_a3

    .line 905
    :cond_6e
    :goto_6e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sget v4, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->d:I

    if-ge v0, v4, :cond_a3

    .line 906
    invoke-interface {v2}, Lcom/google/googlenav/prefetch/android/y;->a()Ln/am;

    move-result-object v4

    .line 907
    if-eqz v4, :cond_a3

    .line 908
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->d()LaD/g;

    move-result-object v0

    invoke-virtual {v0}, LaD/g;->g()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v0

    sget-object v5, Lcom/google/googlenav/prefetch/android/j;->c:Lcom/google/googlenav/prefetch/android/j;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/prefetch/android/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    sget-object v0, Lr/e;->c:Lr/e;

    .line 912
    :goto_8e
    invoke-static {v0}, Lr/Z;->a(Lr/e;)Z

    move-result v0

    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    invoke-virtual {v0, v4}, Lr/aP;->a(Ln/am;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 914
    :cond_9c
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 908
    :cond_a0
    sget-object v0, Lr/e;->e:Lr/e;

    goto :goto_8e

    .line 923
    :cond_a3
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->d()LaD/g;

    move-result-object v0

    invoke-virtual {v0}, LaD/g;->g()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v4

    .line 927
    new-instance v5, Lcom/google/googlenav/prefetch/android/l;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, p0, v0, p1}, Lcom/google/googlenav/prefetch/android/l;-><init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;ILcom/google/googlenav/prefetch/android/k;)V

    .line 931
    sget-object v0, Lcom/google/googlenav/prefetch/android/j;->c:Lcom/google/googlenav/prefetch/android/j;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/prefetch/android/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    sget-object v0, Lr/e;->c:Lr/e;

    move-object v2, v0

    .line 935
    :goto_bf
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->d()LaD/g;

    move-result-object v0

    invoke-virtual {v0}, LaD/g;->f()V

    .line 936
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_ca
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 941
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->d()LaD/g;

    move-result-object v7

    iget-object v8, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    invoke-virtual {v8, v0, v5, v2, v1}, Lr/aP;->a(Ln/am;Lr/aF;Lr/e;Z)Lr/aa;

    move-result-object v0

    invoke-virtual {v7, v0}, LaD/g;->a(Lr/aa;)V

    goto :goto_ca

    .line 931
    :cond_e4
    sget-object v0, Lr/e;->e:Lr/e;

    move-object v2, v0

    goto :goto_bf

    .line 946
    :cond_e8
    const-string v0, "b"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v0, v1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5b

    .line 950
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->f()LaD/h;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 951
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->f()LaD/h;

    move-result-object v0

    invoke-interface {v0}, LaD/h;->o()V

    .line 953
    :cond_117
    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b(Lcom/google/googlenav/prefetch/android/k;)V

    goto/16 :goto_5b

    .line 873
    :catch_11c
    move-exception v0

    goto/16 :goto_23
.end method

.method private a(Lcom/google/googlenav/prefetch/android/y;LaD/g;LaD/h;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x3

    .line 756
    invoke-virtual {p2}, LaD/g;->a()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 758
    if-eqz p3, :cond_17

    .line 760
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    invoke-virtual {v2}, Lr/aP;->e()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 767
    :goto_14
    invoke-interface {p3, v0}, LaD/h;->a(I)V

    .line 770
    :cond_17
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->v()V

    .line 802
    :goto_1a
    return-void

    .line 762
    :cond_1b
    invoke-static {}, Lcom/google/googlenav/android/F;->f()Z

    move-result v0

    if-nez v0, :cond_23

    move v0, v1

    .line 763
    goto :goto_14

    .line 764
    :cond_23
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->i()Z

    move-result v0

    if-eqz v0, :cond_c6

    move v0, v7

    .line 765
    goto :goto_14

    .line 774
    :cond_2b
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->h:J

    .line 775
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v5

    .line 776
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->c:LaD/k;

    invoke-interface {v2}, LaD/k;->b()V

    .line 783
    sget-object v2, Lcom/google/googlenav/prefetch/android/n;->a:Lcom/google/googlenav/prefetch/android/n;

    iput-object v2, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e:Lcom/google/googlenav/prefetch/android/n;

    .line 787
    invoke-virtual {p2}, LaD/g;->g()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/prefetch/android/j;->c:Lcom/google/googlenav/prefetch/android/j;

    if-ne v2, v4, :cond_bd

    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-static {}, Lcom/google/googlenav/clientparam/e;->k()Lcom/google/googlenav/clientparam/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/clientparam/e;->c()I

    move-result v2

    .line 794
    :goto_5a
    new-array v4, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "l="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lcom/google/googlenav/prefetch/android/y;->j()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/googlenav/prefetch/android/y;->i()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-virtual {p2}, LaD/g;->g()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v1

    const-string v3, "s"

    invoke-virtual {p0, v1, v3, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    new-instance v0, Lcom/google/googlenav/prefetch/android/k;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/prefetch/android/k;-><init>(Lcom/google/googlenav/prefetch/android/y;ILaD/g;LaD/h;J)V

    invoke-direct {p0, v7, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(ILjava/lang/Object;)V

    goto/16 :goto_1a

    .line 787
    :cond_bd
    invoke-static {}, Lcom/google/googlenav/clientparam/e;->k()Lcom/google/googlenav/clientparam/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/clientparam/e;->b()I

    move-result v2

    goto :goto_5a

    :cond_c6
    move v0, v3

    goto/16 :goto_14
.end method

.method private b(LaD/c;)V
    .registers 2
    .parameter

    .prologue
    .line 705
    invoke-interface {p1}, LaD/c;->c()V

    .line 706
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->r()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/y;LaD/h;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->d(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/prefetch/android/k;)V
    .registers 8
    .parameter

    .prologue
    .line 974
    sget-object v0, Lcom/google/googlenav/prefetch/android/n;->d:Lcom/google/googlenav/prefetch/android/n;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e:Lcom/google/googlenav/prefetch/android/n;

    .line 976
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 977
    sget-object v2, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/j;

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->d()LaD/g;

    move-result-object v3

    invoke-virtual {v3}, LaD/g;->g()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v3

    if-ne v2, v3, :cond_1f

    .line 978
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(J)V

    .line 982
    :cond_1f
    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->h:J

    .line 985
    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->c()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/prefetch/android/p;->b()V

    .line 988
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 989
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/k;->d()LaD/g;

    move-result-object v2

    invoke-virtual {v2}, LaD/g;->g()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v2

    const-string v3, "f"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-static {}, LaT/k;->d()V

    .line 996
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->v()V

    .line 997
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->s()V

    return-void
.end method

.method private c(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 553
    invoke-static {}, Lcom/google/googlenav/clientparam/e;->k()Lcom/google/googlenav/clientparam/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/e;->i()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 555
    new-instance v0, Lcom/google/googlenav/prefetch/android/a;

    invoke-direct {v0, p0}, Lcom/google/googlenav/prefetch/android/a;-><init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V

    invoke-interface {p2, v0}, LaD/h;->a(LaD/c;)V

    .line 566
    const/4 v0, 0x7

    invoke-interface {p2, v0}, LaD/h;->a(I)V

    .line 580
    :goto_1c
    return-void

    .line 569
    :cond_1d
    new-instance v0, LaD/b;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->l:Lcom/google/googlenav/android/F;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->m:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v5, Lcom/google/googlenav/prefetch/android/j;->c:Lcom/google/googlenav/prefetch/android/j;

    new-instance v6, Lcom/google/googlenav/prefetch/android/b;

    invoke-direct {v6, p0, p2}, Lcom/google/googlenav/prefetch/android/b;-><init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;LaD/h;)V

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, LaD/b;-><init>(Lcom/google/googlenav/android/F;Lr/aP;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/j;LaD/d;)V

    .line 578
    invoke-interface {p2, v0}, LaD/h;->a(LaD/c;)V

    .line 579
    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/y;LaD/g;LaD/h;)V

    goto :goto_1c
.end method

.method static synthetic d(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)Lcom/google/googlenav/prefetch/android/m;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    return-object v0
.end method

.method private d(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e:Lcom/google/googlenav/prefetch/android/n;

    .line 600
    sget-object v1, Lcom/google/googlenav/prefetch/android/n;->b:Lcom/google/googlenav/prefetch/android/n;

    iput-object v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e:Lcom/google/googlenav/prefetch/android/n;

    .line 601
    new-instance v4, Lcom/google/googlenav/prefetch/android/c;

    invoke-direct {v4, p0, p2, v0}, Lcom/google/googlenav/prefetch/android/c;-><init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;LaD/h;Lcom/google/googlenav/prefetch/android/n;)V

    .line 635
    new-instance v3, Lcom/google/googlenav/prefetch/android/o;

    new-instance v0, Lcom/google/googlenav/prefetch/android/d;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/prefetch/android/d;-><init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;LaD/h;)V

    invoke-direct {v3, p1, v0}, Lcom/google/googlenav/prefetch/android/o;-><init>(Lcom/google/googlenav/prefetch/android/y;LaD/c;)V

    .line 653
    invoke-virtual {v3}, Lcom/google/googlenav/prefetch/android/o;->l()I

    move-result v5

    .line 654
    invoke-virtual {v3}, Lcom/google/googlenav/prefetch/android/o;->i()I

    move-result v2

    .line 656
    new-instance v0, Lcom/google/googlenav/prefetch/android/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/prefetch/android/e;-><init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;ILcom/google/googlenav/prefetch/android/o;LaD/h;I)V

    .line 693
    invoke-interface {v4, v3}, LaD/h;->a(LaD/c;)V

    .line 696
    if-nez v2, :cond_2c

    .line 697
    invoke-interface {v4}, LaD/h;->o()V

    .line 702
    :goto_2b
    return-void

    .line 699
    :cond_2c
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    sget-object v2, Lr/e;->c:Lr/e;

    invoke-virtual {v1, v3, v2, v0}, Lr/aP;->a(Ln/an;Lr/e;Lr/aF;)V

    goto :goto_2b
.end method

.method static synthetic e(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->u()V

    return-void
.end method

.method public static l()I
    .registers 1

    .prologue
    .line 1141
    sget v0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->d:I

    return v0
.end method

.method static synthetic m()I
    .registers 1

    .prologue
    .line 67
    sget v0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->d:I

    return v0
.end method

.method private n()Landroid/os/PowerManager$WakeLock;
    .registers 4

    .prologue
    .line 300
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 301
    const/4 v1, 0x1

    const-string v2, "PrefetcherService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method private o()Landroid/net/wifi/WifiManager$WifiLock;
    .registers 4

    .prologue
    .line 312
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 313
    const/4 v1, 0x1

    const-string v2, "PrefetcherService"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/m;->removeMessages(I)V

    .line 334
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/m;->removeMessages(I)V

    .line 336
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->q()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 339
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 341
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/m;->sendEmptyMessage(I)Z

    .line 345
    :goto_1d
    return-void

    .line 343
    :cond_1e
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->v()V

    goto :goto_1d
.end method

.method private q()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-static {}, Lcom/google/googlenav/K;->D()Z

    move-result v1

    if-nez v1, :cond_8

    .line 371
    :cond_7
    :goto_7
    return v0

    .line 359
    :cond_8
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->t()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 363
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->l:Lcom/google/googlenav/android/F;

    invoke-virtual {v1}, Lcom/google/googlenav/android/F;->a()Z

    move-result v1

    if-nez v1, :cond_26

    .line 364
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 365
    const/16 v1, 0x60

    const-string v2, "n"

    const-string v3, "p"

    invoke-static {v1, v2, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 371
    :cond_26
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private r()V
    .registers 7

    .prologue
    .line 534
    new-instance v0, LaD/a;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->l:Lcom/google/googlenav/android/F;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->m:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v5, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/j;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LaD/a;-><init>(Lcom/google/googlenav/android/F;Lr/aP;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/j;)V

    .line 536
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 537
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->c:LaD/k;

    invoke-interface {v2}, LaD/k;->c()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 538
    new-instance v2, Lcom/google/googlenav/prefetch/android/F;

    invoke-direct {v2, v1}, Lcom/google/googlenav/prefetch/android/F;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/y;LaD/g;LaD/h;)V

    .line 539
    return-void
.end method

.method private s()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 542
    new-instance v0, LaD/b;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->l:Lcom/google/googlenav/android/F;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->m:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v5, Lcom/google/googlenav/prefetch/android/j;->b:Lcom/google/googlenav/prefetch/android/j;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, LaD/b;-><init>(Lcom/google/googlenav/android/F;Lr/aP;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/j;LaD/d;)V

    .line 544
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 545
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->c:LaD/k;

    invoke-interface {v2}, LaD/k;->c()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 546
    new-instance v2, Lcom/google/googlenav/prefetch/android/F;

    invoke-direct {v2, v1}, Lcom/google/googlenav/prefetch/android/F;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v2, v0, v6}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/y;LaD/g;LaD/h;)V

    .line 547
    return-void
.end method

.method private t()Z
    .registers 7

    .prologue
    .line 746
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 747
    invoke-static {}, Lcom/google/googlenav/clientparam/e;->k()Lcom/google/googlenav/clientparam/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/clientparam/e;->d()J

    move-result-wide v2

    .line 748
    iget-wide v4, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->g:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private u()V
    .registers 2

    .prologue
    .line 962
    sget-object v0, Lcom/google/googlenav/prefetch/android/n;->d:Lcom/google/googlenav/prefetch/android/n;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e:Lcom/google/googlenav/prefetch/android/n;

    .line 965
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->v()V

    .line 967
    return-void
.end method

.method private v()V
    .registers 3

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->m:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_9

    .line 1005
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->m:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1008
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->n:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_12

    .line 1009
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1024
    :cond_12
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->i()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1025
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/m;->sendEmptyMessage(I)Z

    .line 1027
    :cond_1e
    return-void
.end method

.method private w()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 1037
    const-string v0, "LAST_PREFECHED_FINISHED"

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1041
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_19

    .line 1044
    :goto_18
    return-wide v0

    :cond_19
    move-wide v0, v2

    goto :goto_18
.end method

.method private x()J
    .registers 4

    .prologue
    .line 1059
    const-string v0, "LAST_PREFETCH_NOT_START_CONDITION_LOG_TIME"

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private y()V
    .registers 2

    .prologue
    .line 1090
    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->c()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/p;->b()V

    .line 1091
    sget-object v0, Lcom/google/googlenav/prefetch/android/n;->c:Lcom/google/googlenav/prefetch/android/n;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e:Lcom/google/googlenav/prefetch/android/n;

    .line 1092
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->v()V

    .line 1093
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(LaD/c;)V
    .registers 3
    .parameter

    .prologue
    .line 709
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(ILjava/lang/Object;)V

    .line 710
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/m;->sendEmptyMessage(I)Z

    .line 327
    return-void
.end method

.method public a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1110
    const/16 v0, 0x60

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/j;->a()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method public a(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 530
    const/4 v0, 0x5

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(ILjava/lang/Object;)V

    .line 531
    return-void
.end method

.method protected abstract b()V
.end method

.method public b(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 589
    const/16 v0, 0x8

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(ILjava/lang/Object;)V

    .line 590
    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 249
    new-instance v0, Lcom/google/googlenav/android/F;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/F;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->l:Lcom/google/googlenav/android/F;

    .line 251
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    check-cast v0, Lr/aP;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b:Lr/aP;

    .line 254
    invoke-static {}, Lcom/google/googlenav/prefetch/android/B;->d()Lcom/google/googlenav/prefetch/android/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->c:LaD/k;

    .line 255
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->c:LaD/k;

    invoke-interface {v0}, LaD/k;->a()V

    .line 267
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->w()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->g:J

    .line 271
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->i:J

    .line 276
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->o()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->m:Landroid/net/wifi/WifiManager$WifiLock;

    .line 277
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->m:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 280
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->n()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->n:Landroid/os/PowerManager$WakeLock;

    .line 281
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 284
    invoke-static {}, Lcom/google/googlenav/K;->D()Z

    move-result v0

    if-nez v0, :cond_49

    .line 285
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b()V

    .line 291
    :goto_48
    return-void

    .line 288
    :cond_49
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a()V

    goto :goto_48
.end method

.method public f()V
    .registers 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/m;->sendEmptyMessage(I)Z

    .line 522
    return-void
.end method

.method public g()LaD/j;
    .registers 7

    .prologue
    .line 720
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->g()J

    .line 722
    new-instance v0, LaD/j;

    iget-wide v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->g:J

    iget-wide v3, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->h:J

    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->c:LaD/k;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->c:LaD/k;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_19
    invoke-direct/range {v0 .. v5}, LaD/j;-><init>(JJLjava/lang/String;)V

    return-object v0

    :cond_1d
    const/4 v5, 0x0

    goto :goto_19
.end method

.method public h()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 729
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 731
    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(J)V

    .line 732
    iput-wide v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->g:J

    .line 734
    :cond_d
    return-void
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e:Lcom/google/googlenav/prefetch/android/n;

    sget-object v1, Lcom/google/googlenav/prefetch/android/n;->a:Lcom/google/googlenav/prefetch/android/n;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e:Lcom/google/googlenav/prefetch/android/n;

    sget-object v1, Lcom/google/googlenav/prefetch/android/n;->b:Lcom/google/googlenav/prefetch/android/n;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public j()V
    .registers 4

    .prologue
    .line 1068
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->i:J

    .line 1069
    const-string v0, "LAST_PREFETCH_NOT_START_CONDITION_LOG_TIME"

    iget-wide v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->i:J

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;J)V

    .line 1072
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 1073
    return-void
.end method

.method public k()Z
    .registers 7

    .prologue
    .line 1080
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->i:J

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->f:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->c()V

    .line 235
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PrefetcherService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 237
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->j:Landroid/os/Looper;

    .line 240
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->j:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 241
    new-instance v0, Lcom/google/googlenav/prefetch/android/m;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->j:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/prefetch/android/m;-><init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    .line 244
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->k:Lcom/google/googlenav/prefetch/android/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/m;->sendEmptyMessage(I)Z

    .line 245
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 403
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->j:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 409
    new-instance v1, Lcom/google/googlenav/prefetch/android/h;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/prefetch/android/h;-><init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/a;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/prefetch/android/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 410
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Landroid/content/Intent;)V

    .line 381
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Landroid/content/Intent;)V

    .line 388
    const/4 v0, 0x1

    return v0
.end method
