.class final Lcom/google/ads/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/ae;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/ads/d;

.field private final d:Ljava/util/HashMap;

.field private final e:Z

.field private final f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/ads/ae;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/ag;->a:Lcom/google/ads/ae;

    iput-object p3, p0, Lcom/google/ads/ag;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ag;->f:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/ads/ag;->c:Lcom/google/ads/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/ads/ag;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/ads/ag;->d:Ljava/util/HashMap;

    const-string v1, "gwhirl_share_location"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    :goto_2a
    iput-boolean v0, p0, Lcom/google/ads/ag;->e:Z

    return-void

    :cond_2d
    if-eqz v0, :cond_4f

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received an illegal value, \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', for the special share location parameter from mediation server (expected \'0\' or \'1\'). Will not share the location."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    :cond_4f
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/ag;->a:Lcom/google/ads/ae;

    invoke-virtual {v0}, Lcom/google/ads/ae;->f()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to instantiate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/ag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/ag;->b:Ljava/lang/String;

    const-class v1, Lcom/google/ads/b/b;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/b;

    iget-object v1, p0, Lcom/google/ads/ag;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_54

    new-instance v0, Lcom/google/ads/ah;

    const-string v1, "Activity became null while trying to instantiate adapter."

    invoke-direct {v0, v1}, Lcom/google/ads/ah;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_38} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_a9

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find adapter class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/ag;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Did you link the ad network\'s mediation adapter? Skipping ad network."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/ads/ag;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_53
    return-void

    :cond_54
    :try_start_54
    iget-object v2, p0, Lcom/google/ads/ag;->a:Lcom/google/ads/ae;

    invoke-virtual {v2, v0}, Lcom/google/ads/ae;->a(Lcom/google/ads/b/b;)V

    invoke-interface {v0}, Lcom/google/ads/b/b;->c()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/e;

    iget-object v3, p0, Lcom/google/ads/ag;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/google/ads/b/e;->a(Ljava/util/Map;)V

    :cond_6a
    invoke-interface {v0}, Lcom/google/ads/b/b;->b()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_75

    iget-object v3, p0, Lcom/google/ads/ag;->c:Lcom/google/ads/d;

    invoke-virtual {v3, v2}, Lcom/google/ads/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    :cond_75
    new-instance v2, Lcom/google/ads/b/a;

    iget-object v3, p0, Lcom/google/ads/ag;->c:Lcom/google/ads/d;

    iget-boolean v4, p0, Lcom/google/ads/ag;->e:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/google/ads/b/a;-><init>(Lcom/google/ads/d;Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/google/ads/ag;->a:Lcom/google/ads/ae;

    iget-object v1, v1, Lcom/google/ads/ae;->a:Lcom/google/ads/a/w;

    invoke-virtual {v1}, Lcom/google/ads/a/w;->a()Z

    move-result v1

    if-eqz v1, :cond_c2

    instance-of v1, v0, Lcom/google/ads/b/d;

    if-nez v1, :cond_b0

    new-instance v0, Lcom/google/ads/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/ag;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the MediationInterstitialAdapter interface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/ah;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_54 .. :try_end_a9} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_a9} :catch_a9

    :catch_a9
    move-exception v0

    const-string v1, "Error while creating adapter and loading ad from ad network. Skipping ad network."

    invoke-direct {p0, v1, v0}, Lcom/google/ads/ag;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    :cond_b0
    :try_start_b0
    check-cast v0, Lcom/google/ads/b/d;

    new-instance v1, Lcom/google/ads/aj;

    iget-object v2, p0, Lcom/google/ads/ag;->a:Lcom/google/ads/ae;

    invoke-direct {v1, v2}, Lcom/google/ads/aj;-><init>(Lcom/google/ads/ae;)V

    invoke-interface {v0}, Lcom/google/ads/b/d;->d()V

    :goto_bc
    iget-object v0, p0, Lcom/google/ads/ag;->a:Lcom/google/ads/ae;

    invoke-virtual {v0}, Lcom/google/ads/ae;->g()V

    goto :goto_53

    :cond_c2
    instance-of v1, v0, Lcom/google/ads/b/c;

    if-nez v1, :cond_e3

    new-instance v0, Lcom/google/ads/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/ag;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the MediationBannerAdapter interface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e3
    check-cast v0, Lcom/google/ads/b/c;

    new-instance v1, Lcom/google/ads/ai;

    iget-object v2, p0, Lcom/google/ads/ag;->a:Lcom/google/ads/ae;

    invoke-direct {v1, v2}, Lcom/google/ads/ai;-><init>(Lcom/google/ads/ae;)V

    iget-object v1, p0, Lcom/google/ads/ag;->a:Lcom/google/ads/ae;

    iget-object v1, v1, Lcom/google/ads/ae;->a:Lcom/google/ads/a/w;

    invoke-virtual {v1}, Lcom/google/ads/a/w;->b()Lcom/google/ads/g;

    invoke-interface {v0}, Lcom/google/ads/b/c;->d()V
    :try_end_f6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b0 .. :try_end_f6} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_f6} :catch_a9

    goto :goto_bc
.end method
