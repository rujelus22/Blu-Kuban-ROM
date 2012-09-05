.class Lay/g;
.super Lap/b;


# instance fields
.field final synthetic a:Lay/a;


# direct methods
.method constructor <init>(Lay/a;Lap/c;)V
    .registers 3

    iput-object p1, p0, Lay/g;->a:Lay/a;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    const/4 v7, 0x1

    :try_start_1
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "PROTO_CLIENT_SAVED_PHOTO_CACHE"

    invoke-interface {v0, v1}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_14

    array-length v1, v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_7f

    if-nez v1, :cond_1a

    :cond_14
    iget-object v0, p0, Lay/g;->a:Lay/a;

    :goto_16
    invoke-static {v0, v7}, Lay/a;->a(Lay/a;Z)Z

    return-void

    :cond_1a
    :try_start_1a
    new-instance v1, Lam/b;

    sget-object v2, LbD/Z;->u:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v1, v0}, Lam/b;->a([B)Lam/b;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lam/b;->l(I)I

    move-result v2

    iget-object v0, p0, Lay/g;->a:Lay/a;

    iget-object v3, v0, Lay/a;->a:Ljava/util/Hashtable;

    monitor-enter v3
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2e} :catch_7f

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v2, :cond_48

    const/4 v4, 0x1

    :try_start_32
    invoke-virtual {v1, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lay/o;->a(Lam/b;)Lay/o;

    move-result-object v4

    iget-object v5, p0, Lay/g;->a:Lay/a;

    iget-object v5, v5, Lay/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lay/o;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_32 .. :try_end_49} :catchall_7c

    :try_start_49
    iget-object v0, p0, Lay/g;->a:Lay/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lay/a;->a(Lay/a;Z)Z

    iget-object v0, p0, Lay/g;->a:Lay/a;

    invoke-static {v0}, Lay/a;->f(Lay/a;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_56} :catch_7f

    :try_start_56
    iget-object v0, p0, Lay/g;->a:Lay/a;

    invoke-static {v0}, Lay/a;->f(Lay/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_78

    iget-object v0, p0, Lay/g;->a:Lay/a;

    invoke-static {v0}, Lay/a;->f(Lay/a;)Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lay/g;->a:Lay/a;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v2, v3}, Lay/a;->c(Lay/a;Ljava/util/Vector;)Ljava/util/Vector;

    iget-object v2, p0, Lay/g;->a:Lay/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lay/a;->a(Ljava/util/Vector;Lay/q;)Z

    :cond_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_56 .. :try_end_79} :catchall_ab

    iget-object v0, p0, Lay/g;->a:Lay/a;

    goto :goto_16

    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7f} :catch_7f

    :catch_7f
    move-exception v0

    :try_start_80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOURCE_PROFILE_PHOTO_MANAGER_IMP-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lay/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to load IDs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lay/g;->a:Lay/a;

    invoke-static {v0}, Lay/a;->e(Lay/a;)V
    :try_end_a7
    .catchall {:try_start_80 .. :try_end_a7} :catchall_ae

    iget-object v0, p0, Lay/g;->a:Lay/a;

    goto/16 :goto_16

    :catchall_ab
    move-exception v0

    :try_start_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    :try_start_ad
    throw v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ae} :catch_7f

    :catchall_ae
    move-exception v0

    iget-object v1, p0, Lay/g;->a:Lay/a;

    invoke-static {v1, v7}, Lay/a;->a(Lay/a;Z)Z

    throw v0
.end method
