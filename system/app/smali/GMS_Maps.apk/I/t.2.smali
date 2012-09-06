.class public Li/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/S;


# instance fields
.field private final a:Li/B;

.field private final b:Landroid/os/Handler;

.field private c:Li/v;

.field private d:Landroid/content/Context;

.field private e:I

.field private final f:Li/C;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li/B;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Li/u;

    invoke-direct {v0, p0}, Li/u;-><init>(Li/t;)V

    iput-object v0, p0, Li/t;->f:Li/C;

    .line 47
    iput-object p1, p0, Li/t;->d:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Li/t;->a:Li/B;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Li/t;->b:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "LR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "MM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 60
    :cond_3e
    const/4 v0, 0x2

    .line 63
    :cond_3f
    invoke-direct {p0, v0}, Li/t;->a(I)Z

    .line 64
    return-void
.end method

.method private a(Li/l;)Li/a;
    .registers 11
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 113
    instance-of v0, p1, Li/q;

    if-eqz v0, :cond_12

    .line 114
    check-cast p1, Li/q;

    invoke-virtual {p1}, Li/q;->b()Li/l;

    move-result-object v0

    invoke-direct {p0, v0}, Li/t;->a(Li/l;)Li/a;

    move-result-object v4

    .line 169
    :cond_11
    :goto_11
    return-object v4

    .line 117
    :cond_12
    instance-of v0, p1, Li/p;

    if-eqz v0, :cond_2b

    move-object v0, p1

    .line 118
    check-cast v0, Li/p;

    .line 121
    iget v2, p0, Li/t;->e:I

    invoke-virtual {v0}, Li/p;->c()I

    move-result v5

    if-eq v2, v5, :cond_2b

    invoke-virtual {v0}, Li/p;->c()I

    move-result v0

    invoke-direct {p0, v0}, Li/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 126
    :cond_2b
    instance-of v0, p1, Li/n;

    if-eqz v0, :cond_b5

    .line 127
    check-cast p1, Li/n;

    invoke-virtual {p1}, Li/n;->b()[Li/l;

    move-result-object v6

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v1

    .line 132
    :goto_3c
    array-length v5, v6

    if-ge v0, v5, :cond_82

    .line 133
    aget-object v5, v6, v0

    invoke-direct {p0, v5}, Li/t;->a(Li/l;)Li/a;

    move-result-object v5

    .line 134
    aget-object v8, v6, v0

    invoke-virtual {v8}, Li/l;->a()Z

    move-result v8

    if-eqz v8, :cond_5b

    if-eqz v5, :cond_53

    instance-of v8, v5, Li/X;

    if-eqz v8, :cond_5b

    .line 136
    :cond_53
    instance-of v5, v5, Li/X;

    if-eqz v5, :cond_58

    move v2, v3

    .line 132
    :cond_58
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 141
    :cond_5b
    if-nez v5, :cond_78

    .line 142
    const-string v1, "CannedSpeechAlertGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No voice instruction defined for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v6, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 144
    :cond_78
    instance-of v8, v5, Li/X;

    if-eqz v8, :cond_7e

    move-object v4, v5

    .line 146
    goto :goto_11

    .line 148
    :cond_7e
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 151
    :cond_82
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_93

    .line 152
    if-eqz v2, :cond_91

    new-instance v0, Li/X;

    invoke-direct {v0}, Li/X;-><init>()V

    :goto_8f
    move-object v4, v0

    goto :goto_11

    :cond_91
    move-object v0, v4

    goto :goto_8f

    .line 153
    :cond_93
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_a2

    .line 154
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a;

    move-object v4, v0

    goto/16 :goto_11

    .line 156
    :cond_a2
    new-instance v4, Li/J;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Li/a;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a;

    invoke-direct {v4, v0}, Li/J;-><init>([Li/a;)V

    goto/16 :goto_11

    .line 159
    :cond_b5
    iget-object v0, p0, Li/t;->c:Li/v;

    invoke-virtual {v0, p1}, Li/v;->a(Li/l;)Li/z;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Li/z;->d()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 164
    new-instance v4, Li/X;

    invoke-direct {v4}, Li/X;-><init>()V

    goto/16 :goto_11

    .line 165
    :cond_c8
    invoke-virtual {v0}, Li/z;->e()Z

    move-result v1

    if-nez v1, :cond_dc

    .line 166
    iget-object v1, p0, Li/t;->d:Landroid/content/Context;

    invoke-virtual {v0}, Li/z;->c()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Li/t;->b:Landroid/os/Handler;

    invoke-static {v1, v0, v2}, Li/O;->a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)Li/a;

    move-result-object v4

    goto/16 :goto_11

    .line 168
    :cond_dc
    const-string v0, "CannedSpeechAlertGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find sound for a message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method static synthetic a(Li/t;Li/v;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Li/t;->a(Li/v;)V

    return-void
.end method

.method private declared-synchronized a(Li/v;)V
    .registers 3
    .parameter

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Li/t;->c:Li/v;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)Z
    .registers 5
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lh/a;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Li/t;->c:Li/v;

    .line 73
    :goto_9
    iget-object v0, p0, Li/t;->c:Li/v;

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_e
    return v0

    .line 70
    :cond_f
    iget-object v0, p0, Li/t;->a:Li/B;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Li/t;->f:Li/C;

    invoke-interface {v0, v1, p1, v2}, Li/B;->a(Ljava/util/Locale;ILi/C;)Li/v;

    move-result-object v0

    iput-object v0, p0, Li/t;->c:Li/v;

    .line 71
    iput p1, p0, Li/t;->e:I

    goto :goto_9

    .line 73
    :cond_20
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public declared-synchronized a(Li/U;)Li/a;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Li/t;->c:Li/v;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_13

    if-nez v1, :cond_8

    .line 109
    :cond_6
    :goto_6
    monitor-exit p0

    return-object v0

    .line 104
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Li/U;->b()Li/l;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_6

    .line 109
    invoke-direct {p0, v1}, Li/t;->a(Li/l;)Li/a;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_13

    move-result-object v0

    goto :goto_6

    .line 100
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 180
    return-void
.end method

.method public a(Li/U;Li/T;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Li/t;->a(Li/U;)Li/a;

    move-result-object v0

    .line 83
    if-eqz p2, :cond_9

    .line 84
    invoke-interface {p2, p1, v0}, Li/T;->a(Li/U;Li/a;)V

    .line 86
    :cond_9
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method
