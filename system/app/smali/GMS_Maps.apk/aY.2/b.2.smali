.class LaY/b;
.super Lap/b;


# instance fields
.field final synthetic a:I

.field final synthetic e:Lcom/google/googlenav/E;

.field final synthetic f:LaY/g;

.field final synthetic g:Lcom/google/googlenav/android/ac;

.field final synthetic h:LaY/a;


# direct methods
.method constructor <init>(LaY/a;Lap/c;ILcom/google/googlenav/E;LaY/g;Lcom/google/googlenav/android/ac;)V
    .registers 7

    iput-object p1, p0, LaY/b;->h:LaY/a;

    iput p3, p0, LaY/b;->a:I

    iput-object p4, p0, LaY/b;->e:Lcom/google/googlenav/E;

    iput-object p5, p0, LaY/b;->f:LaY/g;

    iput-object p6, p0, LaY/b;->g:Lcom/google/googlenav/android/ac;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method

.method private a(Lam/b;Ljava/lang/String;Lak/m;)V
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_a
    invoke-static {v1, p1}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_14} :catch_1c

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "-Error saving featureSet"

    invoke-static {p3, v0, v1}, LaY/a;->a(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_14

    :catch_1c
    move-exception v0

    const-string v1, "-OOME saving featureSet"

    invoke-static {p3, v0, v1}, LaY/a;->a(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private a(Lcom/google/googlenav/aV;Ljava/lang/String;Lak/m;)V
    .registers 8

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->af()Lam/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aV;->b(Lam/b;)Lam/b;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, LaY/b;->a(Lam/b;Ljava/lang/String;Lak/m;)V

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->g:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/16 v1, 0xf

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->av()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    const-string v1, "SAVED_BGFS_EXTRA_3"

    invoke-direct {p0, v0, v1, p3}, LaY/b;->a(Lam/b;Ljava/lang/String;Lak/m;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAVED_BGFS_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, LaY/b;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, LaY/b;->e:Lcom/google/googlenav/E;

    if-nez v0, :cond_47

    invoke-interface {v1, v2}, Lak/m;->b(Ljava/lang/String;)Z

    iget-object v0, p0, LaY/b;->h:LaY/a;

    invoke-static {v0}, LaY/a;->a(LaY/a;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, LaY/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_33
    iget-object v0, p0, LaY/b;->f:LaY/g;

    if-eqz v0, :cond_46

    iget-object v0, p0, LaY/b;->g:Lcom/google/googlenav/android/ac;

    if-eqz v0, :cond_66

    const/4 v0, 0x0

    iget-object v1, p0, LaY/b;->g:Lcom/google/googlenav/android/ac;

    new-instance v2, LaY/c;

    invoke-direct {v2, p0}, LaY/c;-><init>(LaY/b;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    iget v0, p0, LaY/b;->a:I

    packed-switch v0, :pswitch_data_6c

    :goto_4c
    iget-object v0, p0, LaY/b;->h:LaY/a;

    invoke-static {v0}, LaY/a;->a(LaY/a;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, LaY/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, LaY/b;->e:Lcom/google/googlenav/E;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :pswitch_5e
    iget-object v0, p0, LaY/b;->e:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/aV;

    invoke-direct {p0, v0, v2, v1}, LaY/b;->a(Lcom/google/googlenav/aV;Ljava/lang/String;Lak/m;)V

    goto :goto_4c

    :cond_66
    iget-object v0, p0, LaY/b;->f:LaY/g;

    invoke-interface {v0}, LaY/g;->a()V

    goto :goto_46

    :pswitch_data_6c
    .packed-switch 0x3
        :pswitch_5e
    .end packed-switch
.end method
