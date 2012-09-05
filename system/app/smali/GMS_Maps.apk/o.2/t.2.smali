.class public Lo/t;
.super Ljava/lang/Object;

# interfaces
.implements Lo/P;


# instance fields
.field private final a:Lo/z;

.field private final b:Landroid/os/Handler;

.field private c:Lo/v;

.field private d:Landroid/content/Context;

.field private e:I

.field private final f:Lo/A;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/z;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/u;

    invoke-direct {v0, p0}, Lo/u;-><init>(Lo/t;)V

    iput-object v0, p0, Lo/t;->f:Lo/A;

    iput-object p1, p0, Lo/t;->d:Landroid/content/Context;

    iput-object p2, p0, Lo/t;->a:Lo/z;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/t;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/t;->a(I)Z

    return-void
.end method

.method private a(Lo/l;)Lo/a;
    .registers 11

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    instance-of v0, p1, Lo/q;

    if-eqz v0, :cond_12

    check-cast p1, Lo/q;

    invoke-virtual {p1}, Lo/q;->b()Lo/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/t;->a(Lo/l;)Lo/a;

    move-result-object v4

    :cond_11
    :goto_11
    return-object v4

    :cond_12
    instance-of v0, p1, Lo/p;

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, Lo/p;

    iget v2, p0, Lo/t;->e:I

    invoke-virtual {v0}, Lo/p;->c()I

    move-result v5

    if-eq v2, v5, :cond_2b

    invoke-virtual {v0}, Lo/p;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lo/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_2b
    instance-of v0, p1, Lo/n;

    if-eqz v0, :cond_b5

    check-cast p1, Lo/n;

    invoke-virtual {p1}, Lo/n;->b()[Lo/l;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v1

    :goto_3c
    array-length v5, v6

    if-ge v0, v5, :cond_82

    aget-object v5, v6, v0

    invoke-direct {p0, v5}, Lo/t;->a(Lo/l;)Lo/a;

    move-result-object v5

    aget-object v8, v6, v0

    invoke-virtual {v8}, Lo/l;->a()Z

    move-result v8

    if-eqz v8, :cond_5b

    if-eqz v5, :cond_53

    instance-of v8, v5, Lo/U;

    if-eqz v8, :cond_5b

    :cond_53
    instance-of v5, v5, Lo/U;

    if-eqz v5, :cond_58

    move v2, v3

    :cond_58
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_5b
    if-nez v5, :cond_78

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

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_78
    instance-of v8, v5, Lo/U;

    if-eqz v8, :cond_7e

    move-object v4, v5

    goto :goto_11

    :cond_7e
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_82
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_93

    if-eqz v2, :cond_91

    new-instance v0, Lo/U;

    invoke-direct {v0}, Lo/U;-><init>()V

    :goto_8f
    move-object v4, v0

    goto :goto_11

    :cond_91
    move-object v0, v4

    goto :goto_8f

    :cond_93
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_a2

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/a;

    move-object v4, v0

    goto/16 :goto_11

    :cond_a2
    new-instance v4, Lo/G;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lo/a;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/a;

    invoke-direct {v4, v0}, Lo/G;-><init>([Lo/a;)V

    goto/16 :goto_11

    :cond_b5
    iget-object v0, p0, Lo/t;->c:Lo/v;

    invoke-virtual {v0, p1}, Lo/v;->a(Lo/l;)Lo/x;

    move-result-object v0

    invoke-virtual {v0}, Lo/x;->d()Z

    move-result v1

    if-eqz v1, :cond_c8

    new-instance v4, Lo/U;

    invoke-direct {v4}, Lo/U;-><init>()V

    goto/16 :goto_11

    :cond_c8
    invoke-virtual {v0}, Lo/x;->e()Z

    move-result v1

    if-nez v1, :cond_dc

    iget-object v1, p0, Lo/t;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lo/x;->c()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lo/t;->b:Landroid/os/Handler;

    invoke-static {v1, v0, v2}, Lo/L;->a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)Lo/a;

    move-result-object v4

    goto/16 :goto_11

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

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method static synthetic a(Lo/t;Lo/v;)V
    .registers 2

    invoke-direct {p0, p1}, Lo/t;->a(Lo/v;)V

    return-void
.end method

.method private declared-synchronized a(Lo/v;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lo/t;->c:Lo/v;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)Z
    .registers 5

    invoke-static {}, Ln/b;->b()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lo/t;->c:Lo/v;

    :goto_9
    iget-object v0, p0, Lo/t;->c:Lo/v;

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lo/t;->a:Lo/z;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lo/t;->f:Lo/A;

    invoke-interface {v0, v1, p1, v2}, Lo/z;->a(Ljava/util/Locale;ILo/A;)Lo/v;

    move-result-object v0

    iput-object v0, p0, Lo/t;->c:Lo/v;

    iput p1, p0, Lo/t;->e:I

    goto :goto_9

    :cond_20
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public declared-synchronized a(Lo/R;)Lo/a;
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lo/t;->c:Lo/v;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_13

    if-nez v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lo/R;->b()Lo/l;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v1}, Lo/t;->a(Lo/l;)Lo/a;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_13

    move-result-object v0

    goto :goto_6

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lo/R;Lo/Q;)V
    .registers 4

    invoke-virtual {p0, p1}, Lo/t;->a(Lo/R;)Lo/a;

    move-result-object v0

    if-eqz p2, :cond_9

    invoke-interface {p2, p1, v0}, Lo/Q;->a(Lo/R;Lo/a;)V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
