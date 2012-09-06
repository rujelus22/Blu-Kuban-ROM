.class public Lcom/estrongs/android/pop/d/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/pop/d/q;

.field private static d:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/pop/d/a;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/d/q;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    const/16 v2, 0x14

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/q;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/q;->c:Lcom/estrongs/android/pop/d/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/d/q;->e:I

    iput v1, p0, Lcom/estrongs/android/pop/d/q;->f:I

    iput v1, p0, Lcom/estrongs/android/pop/d/q;->g:I

    iput v2, p0, Lcom/estrongs/android/pop/d/q;->h:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/estrongs/android/pop/d/q;->i:I

    iput v2, p0, Lcom/estrongs/android/pop/d/q;->j:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/estrongs/android/pop/d/q;->k:I

    iput v1, p0, Lcom/estrongs/android/pop/d/q;->l:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/estrongs/android/pop/d/q;->m:I

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/q;->n:Ljava/text/NumberFormat;

    iput-object p1, p0, Lcom/estrongs/android/pop/d/q;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/q;->c:Lcom/estrongs/android/pop/d/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/q;->n:Ljava/text/NumberFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/q;
    .registers 2

    sget-object v0, Lcom/estrongs/android/pop/d/q;->a:Lcom/estrongs/android/pop/d/q;

    if-nez v0, :cond_e

    new-instance v0, Lcom/estrongs/android/pop/d/q;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/d/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/d/q;->a:Lcom/estrongs/android/pop/d/q;

    :cond_b
    :goto_b
    sget-object v0, Lcom/estrongs/android/pop/d/q;->a:Lcom/estrongs/android/pop/d/q;

    return-object v0

    :cond_e
    if-eqz p0, :cond_b

    sget-object v0, Lcom/estrongs/android/pop/d/q;->a:Lcom/estrongs/android/pop/d/q;

    iput-object p0, v0, Lcom/estrongs/android/pop/d/q;->b:Landroid/content/Context;

    goto :goto_b
.end method

.method private a(Lcom/estrongs/android/pop/d/e;)Ljava/lang/String;
    .registers 8

    const-string v1, ""

    iget-boolean v2, p1, Lcom/estrongs/android/pop/d/e;->d:Z

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/android/pop/d/q;->d:Ljava/lang/String;

    if-nez v0, :cond_7a

    const-string v0, "MM/dd/yy"

    :goto_c
    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_7d

    const-string v0, ""

    :goto_1c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v4, p1, Lcom/estrongs/android/pop/d/e;->j:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7a
    sget-object v0, Lcom/estrongs/android/pop/d/q;->d:Ljava/lang/String;

    goto :goto_c

    :cond_7d
    iget-wide v0, p1, Lcom/estrongs/android/pop/d/e;->e:J

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .registers 11

    const/4 v1, 0x1

    :try_start_1
    new-instance v2, Lcom/estrongs/android/pop/d/r;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/d/r;-><init>(Lcom/estrongs/android/pop/d/q;Lcom/estrongs/android/pop/d/r;)V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iput-object p1, v2, Lcom/estrongs/android/pop/d/r;->a:Ljava/lang/String;

    :goto_11
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/estrongs/android/pop/d/r;->g:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v2, Lcom/estrongs/android/pop/d/r;->h:Ljava/util/Queue;

    invoke-static {p1, v2}, Lcom/estrongs/android/pop/d/h;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_43

    :try_start_1e
    iget-object v0, v2, Lcom/estrongs/android/pop/d/r;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/e;
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_43
    .catch Ljava/util/NoSuchElementException; {:try_start_1e .. :try_end_26} :catch_45

    if-nez v0, :cond_48

    invoke-static {p2}, Lcom/estrongs/android/pop/d/h;->c(Ljava/lang/String;)Z

    const/4 v0, 0x0

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    :try_start_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/d/r;->a:Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_43

    goto :goto_11

    :catchall_43
    move-exception v0

    throw v0

    :catch_45
    move-exception v0

    move v0, v1

    goto :goto_2c

    :cond_48
    :try_start_48
    iget-boolean v0, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v0, :cond_58

    iget-object v0, v2, Lcom/estrongs/android/pop/d/r;->h:Ljava/util/Queue;

    invoke-direct {p0, v0, p2, p5, p6}, Lcom/estrongs/android/pop/d/q;->a(Ljava/util/Queue;Ljava/lang/String;J)Z
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_43

    move-result v0

    :goto_52
    if-nez v0, :cond_2c

    invoke-static {p2}, Lcom/estrongs/android/pop/d/h;->c(Ljava/lang/String;)Z

    goto :goto_2c

    :cond_58
    :try_start_58
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/d/h;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_43

    move-result v0

    goto :goto_52
.end method

.method private a(Ljava/util/Queue;Ljava/lang/String;J)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/estrongs/android/pop/d/e;",
            ">;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1d
    invoke-virtual {p0, p3, p4}, Lcom/estrongs/android/pop/d/q;->a(J)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p2, v2}, Lcom/estrongs/android/pop/d/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    :try_start_2b
    iget-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v3, :cond_4b

    iget-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->n:Z

    if-eqz v3, :cond_4b

    :cond_33
    :goto_33
    invoke-virtual {p0, p3, p4}, Lcom/estrongs/android/pop/d/q;->a(J)Z

    move-result v0

    if-nez v0, :cond_43

    if-eqz v2, :cond_43

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/e;
    :try_end_41
    .catch Ljava/util/NoSuchElementException; {:try_start_2b .. :try_end_41} :catch_b4

    if-nez v0, :cond_2b

    :cond_43
    :goto_43
    invoke-virtual {p0, p3, p4}, Lcom/estrongs/android/pop/d/q;->a(J)Z

    move-result v0

    if-eqz v0, :cond_b6

    move v0, v1

    goto :goto_2a

    :cond_4b
    :try_start_4b
    iget-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v3, :cond_9a

    new-instance v3, Lcom/estrongs/android/pop/d/r;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/estrongs/android/pop/d/r;-><init>(Lcom/estrongs/android/pop/d/q;Lcom/estrongs/android/pop/d/r;)V

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/estrongs/android/pop/d/r;->a:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/android/pop/d/r;->g:Z

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v3, Lcom/estrongs/android/pop/d/r;->h:Ljava/util/Queue;

    iget-object v4, v0, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/estrongs/android/pop/d/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/estrongs/android/pop/d/r;->h:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object v3, v3, Lcom/estrongs/android/pop/d/r;->h:Ljava/util/Queue;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, p3, p4}, Lcom/estrongs/android/pop/d/q;->a(Ljava/util/Queue;Ljava/lang/String;J)Z

    move-result v2

    goto :goto_33

    :cond_9a
    iget-object v3, v0, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/d/h;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b2
    .catch Ljava/util/NoSuchElementException; {:try_start_4b .. :try_end_b2} :catch_b4

    move-result v2

    goto :goto_33

    :catch_b4
    move-exception v0

    goto :goto_43

    :cond_b6
    move v0, v2

    goto/16 :goto_2a
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 12

    iget-object v0, p0, Lcom/estrongs/android/pop/d/q;->c:Lcom/estrongs/android/pop/d/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/d/q;->b:Landroid/content/Context;

    const v2, 0x7f090178

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v0, p0, Lcom/estrongs/android/pop/d/q;->c:Lcom/estrongs/android/pop/d/a;

    invoke-virtual {v0, v5, v6}, Lcom/estrongs/android/pop/d/a;->c(J)V

    invoke-static {p1, p2}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p1, p2}, Lcom/estrongs/android/pop/d/h;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/estrongs/android/pop/d/q;->c:Lcom/estrongs/android/pop/d/a;

    invoke-virtual {v1, v5, v6, v0}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    return v0

    :cond_28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/q;->a(Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1}, Lcom/estrongs/android/pop/d/h;->c(Ljava/lang/String;)Z

    goto :goto_22
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/estrongs/android/pop/d/q;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    if-eq v2, v3, :cond_a3

    iget-object v2, p0, Lcom/estrongs/android/pop/d/q;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_a3

    move v3, v1

    :goto_1f
    iget-object v1, p0, Lcom/estrongs/android/pop/d/q;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v4

    iget-object v1, p0, Lcom/estrongs/android/pop/d/q;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/d/q;->d:Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/d/q;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->k()I

    move-result v6

    iget-object v1, p0, Lcom/estrongs/android/pop/d/q;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->l()I

    move-result v2

    const/4 v1, 0x4

    if-ge v6, v1, :cond_b1

    new-instance v1, Lcom/estrongs/android/pop/b/a;

    const/4 v7, 0x2

    invoke-direct {v1, v6, v2, v5, v7}, Lcom/estrongs/android/pop/b/a;-><init>(IILjava/lang/Object;I)V

    move-object v2, v1

    :goto_58
    if-eqz v2, :cond_a7

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v0, v1

    :goto_60
    new-instance v1, Lcom/estrongs/android/pop/d/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/d/r;-><init>(Lcom/estrongs/android/pop/d/q;Lcom/estrongs/android/pop/d/r;)V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ae

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/d/r;->a:Ljava/lang/String;

    :goto_8b
    iput-object v0, v1, Lcom/estrongs/android/pop/d/r;->b:Ljava/util/Map;

    iput-boolean v3, v1, Lcom/estrongs/android/pop/d/r;->c:Z

    iput-boolean v4, v1, Lcom/estrongs/android/pop/d/r;->d:Z

    iput v6, v1, Lcom/estrongs/android/pop/d/r;->e:I

    iput-object v5, v1, Lcom/estrongs/android/pop/d/r;->f:Ljava/util/Map;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/estrongs/android/pop/d/r;->g:Z

    invoke-static {p1, v1}, Lcom/estrongs/android/pop/d/h;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9b} :catch_9d

    goto/16 :goto_5

    :catch_9d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_a3
    const/4 v1, 0x1

    move v3, v1

    goto/16 :goto_1f

    :cond_a7
    :try_start_a7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    goto :goto_60

    :cond_ae
    iput-object p1, v1, Lcom/estrongs/android/pop/d/r;->a:Ljava/lang/String;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b0} :catch_9d

    goto :goto_8b

    :cond_b1
    move-object v2, v0

    goto :goto_58
.end method

.method public a(J)Z
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/d/q;->c:Lcom/estrongs/android/pop/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lcom/estrongs/android/pop/d/c;->e:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Lcom/estrongs/android/pop/d/e;Ljava/lang/Object;)Z
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    check-cast p2, Lcom/estrongs/android/pop/d/r;

    iget-boolean v0, p2, Lcom/estrongs/android/pop/d/r;->g:Z

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/estrongs/android/pop/d/r;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_d
    return v5

    :cond_e
    iget-boolean v0, p1, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p2, Lcom/estrongs/android/pop/d/r;->i:Z

    if-eqz v0, :cond_19

    iput-boolean v6, p2, Lcom/estrongs/android/pop/d/r;->i:Z

    goto :goto_d

    :cond_19
    iget-boolean v0, p2, Lcom/estrongs/android/pop/d/r;->d:Z

    if-nez v0, :cond_27

    iget-object v0, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_d

    :cond_27
    iget-object v0, p2, Lcom/estrongs/android/pop/d/r;->f:Ljava/util/Map;

    if-eqz v0, :cond_32

    iget-object v0, p2, Lcom/estrongs/android/pop/d/r;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    iget-boolean v0, p2, Lcom/estrongs/android/pop/d/r;->c:Z

    if-eqz v0, :cond_4f

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/d/q;->a(Lcom/estrongs/android/pop/d/e;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/estrongs/android/pop/d/r;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p1, Lcom/estrongs/android/pop/d/e;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_4f
    iget-object v0, p2, Lcom/estrongs/android/pop/d/r;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget-boolean v3, p1, Lcom/estrongs/android/pop/d/e;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method public a(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/Object;)Z
    .registers 16

    const/16 v7, 0x65

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, p7

    check-cast v0, Lcom/estrongs/android/pop/d/r;

    new-instance v4, Lcom/estrongs/android/pop/d/e;

    const-string v1, ""

    invoke-direct {v4, v1}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    iput-object p6, v4, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x64

    if-eq v1, v5, :cond_73

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_73

    move v1, v2

    :goto_1f
    iput-boolean v1, v4, Lcom/estrongs/android/pop/d/e;->d:Z

    iget-boolean v1, v4, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v1, :cond_75

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/r;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    :goto_42
    iget-boolean v0, v4, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v0, :cond_8d

    const-wide/16 v0, 0x0

    iput-wide v0, v4, Lcom/estrongs/android/pop/d/e;->e:J

    :goto_4a
    int-to-long v0, p4

    iput-wide v0, v4, Lcom/estrongs/android/pop/d/e;->j:J

    iget-wide v0, v4, Lcom/estrongs/android/pop/d/e;->j:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    iput-wide v0, v4, Lcom/estrongs/android/pop/d/e;->j:J

    iput p5, v4, Lcom/estrongs/android/pop/d/e;->q:I

    const/16 v0, 0xa

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_6c

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_6e

    :cond_6c
    iput-boolean v3, v4, Lcom/estrongs/android/pop/d/e;->n:Z

    :cond_6e
    invoke-virtual {p0, v4, p7}, Lcom/estrongs/android/pop/d/q;->a(Lcom/estrongs/android/pop/d/e;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_73
    move v1, v3

    goto :goto_1f

    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/r;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    goto :goto_42

    :cond_8d
    iput-wide p2, v4, Lcom/estrongs/android/pop/d/e;->e:J

    goto :goto_4a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/d/q;->b(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 4

    invoke-static {p1, p2}, Lcom/estrongs/android/pop/d/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/estrongs/android/pop/d/h;->d(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
