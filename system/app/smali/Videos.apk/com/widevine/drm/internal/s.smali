.class public final Lcom/widevine/drm/internal/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/widevine/drm/internal/s;


# instance fields
.field private b:Lcom/widevine/drm/internal/o;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/widevine/drm/internal/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/widevine/drm/internal/s;->a:Lcom/widevine/drm/internal/s;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/widevine/drm/internal/s;->c:Ljava/util/Queue;

    return-void
.end method

.method public static a()Lcom/widevine/drm/internal/s;
    .registers 1

    sget-object v0, Lcom/widevine/drm/internal/s;->a:Lcom/widevine/drm/internal/s;

    if-nez v0, :cond_b

    new-instance v0, Lcom/widevine/drm/internal/s;

    invoke-direct {v0}, Lcom/widevine/drm/internal/s;-><init>()V

    sput-object v0, Lcom/widevine/drm/internal/s;->a:Lcom/widevine/drm/internal/s;

    :cond_b
    sget-object v0, Lcom/widevine/drm/internal/s;->a:Lcom/widevine/drm/internal/s;

    return-object v0
.end method

.method private b(Lcom/widevine/drm/internal/x;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/widevine/drm/internal/s;->b()Lcom/widevine/drm/internal/u;

    move-result-object v1

    if-nez v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RQ: remove: unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/widevine/drm/internal/x;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    :goto_21
    return v0

    :cond_22
    invoke-virtual {v1}, Lcom/widevine/drm/internal/u;->a()Lcom/widevine/drm/internal/x;

    move-result-object v2

    if-eq v2, p1, :cond_51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RQ: remove: unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/widevine/drm/internal/x;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expecting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/widevine/drm/internal/u;->a()Lcom/widevine/drm/internal/x;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    goto :goto_21

    :cond_51
    :try_start_51
    iget-object v1, p0, Lcom/widevine/drm/internal/s;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_56
    .catch Ljava/util/NoSuchElementException; {:try_start_51 .. :try_end_56} :catch_58

    const/4 v0, 0x1

    goto :goto_21

    :catch_58
    move-exception v1

    goto :goto_21
.end method

.method public static c()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/widevine/drm/internal/s;->a:Lcom/widevine/drm/internal/s;

    return-void
.end method

.method private e()Z
    .registers 9

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/widevine/drm/internal/s;->b()Lcom/widevine/drm/internal/u;

    move-result-object v6

    if-eqz v6, :cond_58

    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->a()Lcom/widevine/drm/internal/x;

    move-result-object v0

    sget-object v1, Lcom/widevine/drm/internal/x;->l:Lcom/widevine/drm/internal/x;

    if-eq v0, v1, :cond_18

    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->a()Lcom/widevine/drm/internal/x;

    move-result-object v0

    sget-object v1, Lcom/widevine/drm/internal/x;->o:Lcom/widevine/drm/internal/x;

    if-ne v0, v1, :cond_30

    :cond_18
    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_42

    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->d()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_42

    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->e()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_42

    :cond_30
    new-instance v0, Lcom/widevine/drm/internal/v;

    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->a()Lcom/widevine/drm/internal/x;

    move-result-object v1

    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/v;-><init>(Lcom/widevine/drm/internal/x;Ljava/lang/String;)V

    :goto_3d
    invoke-virtual {v0}, Lcom/widevine/drm/internal/v;->start()V

    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    new-instance v0, Lcom/widevine/drm/internal/v;

    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->a()Lcom/widevine/drm/internal/x;

    move-result-object v1

    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->c()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->d()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/widevine/drm/internal/u;->e()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/widevine/drm/internal/v;-><init>(Lcom/widevine/drm/internal/x;JJJ)V

    goto :goto_3d

    :cond_58
    const/4 v0, 0x0

    goto :goto_41
.end method

.method private f()I
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/s;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/widevine/drm/internal/o;)V
    .registers 2

    iput-object p1, p0, Lcom/widevine/drm/internal/s;->b:Lcom/widevine/drm/internal/o;

    return-void
.end method

.method public final a(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V
    .registers 7

    sget-object v0, Lcom/widevine/drm/internal/t;->a:[I

    invoke-virtual {p1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected requestType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (rq:he)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    :pswitch_2b
    return-void

    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/widevine/drm/internal/s;->b(Lcom/widevine/drm/internal/x;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->e()Z

    goto :goto_2b

    :pswitch_36
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq p2, v0, :cond_4b

    iget-object v0, p0, Lcom/widevine/drm/internal/s;->b:Lcom/widevine/drm/internal/o;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/widevine/drm/internal/s;->b:Lcom/widevine/drm/internal/o;

    const/4 v1, 0x0

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/widevine/drm/internal/s;->b:Lcom/widevine/drm/internal/o;

    :cond_4b
    sget-object v0, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    invoke-direct {p0, v0}, Lcom/widevine/drm/internal/s;->b(Lcom/widevine/drm/internal/x;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->e()Z

    goto :goto_2b

    :pswitch_57
    sget-object v0, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    invoke-direct {p0, v0}, Lcom/widevine/drm/internal/s;->b(Lcom/widevine/drm/internal/x;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->e()Z

    goto :goto_2b

    :pswitch_63
    sget-object v0, Lcom/widevine/drm/internal/x;->f:Lcom/widevine/drm/internal/x;

    invoke-direct {p0, v0}, Lcom/widevine/drm/internal/s;->b(Lcom/widevine/drm/internal/x;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq p2, v0, :cond_74

    sget-object v0, Lcom/widevine/drm/internal/x;->g:Lcom/widevine/drm/internal/x;

    invoke-direct {p0, v0}, Lcom/widevine/drm/internal/s;->b(Lcom/widevine/drm/internal/x;)Z

    :cond_74
    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->e()Z

    goto :goto_2b

    :pswitch_78
    invoke-virtual {p0}, Lcom/widevine/drm/internal/s;->b()Lcom/widevine/drm/internal/u;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/widevine/drm/internal/u;->a()Lcom/widevine/drm/internal/x;

    move-result-object v1

    sget-object v2, Lcom/widevine/drm/internal/x;->m:Lcom/widevine/drm/internal/x;

    if-ne v1, v2, :cond_2b

    invoke-virtual {v0}, Lcom/widevine/drm/internal/u;->a()Lcom/widevine/drm/internal/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/widevine/drm/internal/s;->b(Lcom/widevine/drm/internal/x;)Z

    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->e()Z

    goto :goto_2b

    :pswitch_91
    sget-object v0, Lcom/widevine/drm/internal/x;->i:Lcom/widevine/drm/internal/x;

    invoke-direct {p0, v0}, Lcom/widevine/drm/internal/s;->b(Lcom/widevine/drm/internal/x;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq p2, v0, :cond_a2

    sget-object v0, Lcom/widevine/drm/internal/x;->j:Lcom/widevine/drm/internal/x;

    invoke-direct {p0, v0}, Lcom/widevine/drm/internal/s;->b(Lcom/widevine/drm/internal/x;)Z

    :cond_a2
    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->e()Z

    goto :goto_2b

    :pswitch_a6
    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->e()Z

    goto :goto_2b

    :pswitch_aa
    invoke-virtual {p0}, Lcom/widevine/drm/internal/s;->b()Lcom/widevine/drm/internal/u;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/widevine/drm/internal/u;->a()Lcom/widevine/drm/internal/x;

    move-result-object v1

    sget-object v2, Lcom/widevine/drm/internal/x;->j:Lcom/widevine/drm/internal/x;

    if-ne v1, v2, :cond_2b

    invoke-virtual {v0}, Lcom/widevine/drm/internal/u;->a()Lcom/widevine/drm/internal/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/widevine/drm/internal/s;->b(Lcom/widevine/drm/internal/x;)Z

    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->e()Z

    goto/16 :goto_2b

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_91
        :pswitch_a6
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_36
        :pswitch_57
        :pswitch_63
        :pswitch_78
        :pswitch_aa
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public final a(Lcom/widevine/drm/internal/x;JJJ)Z
    .registers 16

    new-instance v0, Lcom/widevine/drm/internal/u;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/widevine/drm/internal/u;-><init>(Lcom/widevine/drm/internal/x;JJJ)V

    iget-object v1, p0, Lcom/widevine/drm/internal/s;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->e()Z

    :cond_19
    return v0
.end method

.method public final a(Lcom/widevine/drm/internal/x;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Lcom/widevine/drm/internal/u;

    invoke-direct {v0, p1, p2}, Lcom/widevine/drm/internal/u;-><init>(Lcom/widevine/drm/internal/x;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/widevine/drm/internal/s;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    invoke-direct {p0}, Lcom/widevine/drm/internal/s;->e()Z

    :cond_15
    return v0
.end method

.method public final b()Lcom/widevine/drm/internal/u;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/s;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/widevine/drm/internal/u;

    return-object v0
.end method
