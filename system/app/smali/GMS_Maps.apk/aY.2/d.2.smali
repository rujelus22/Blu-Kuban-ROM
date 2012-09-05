.class LaY/d;
.super Lap/b;


# instance fields
.field final synthetic a:I

.field final synthetic e:LaY/f;

.field final synthetic f:Lcom/google/googlenav/android/ac;

.field final synthetic g:LaY/a;


# direct methods
.method constructor <init>(LaY/a;Lap/c;ILaY/f;Lcom/google/googlenav/android/ac;)V
    .registers 6

    iput-object p1, p0, LaY/d;->g:LaY/a;

    iput p3, p0, LaY/d;->a:I

    iput-object p4, p0, LaY/d;->e:LaY/f;

    iput-object p5, p0, LaY/d;->f:Lcom/google/googlenav/android/ac;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method

.method private a(Lak/m;Ljava/io/DataInput;)Lcom/google/googlenav/E;
    .registers 8

    new-instance v1, Lcom/google/googlenav/aV;

    invoke-direct {v1}, Lcom/google/googlenav/aV;-><init>()V

    :try_start_5
    invoke-virtual {v1, p2}, Lcom/google/googlenav/aV;->a(Ljava/io/DataInput;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_22

    :goto_8
    const-string v0, "SAVED_BGFS_EXTRA_3"

    invoke-static {p1, v0}, Laf/l;->a(Lak/m;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_30

    :try_start_10
    sget-object v2, LbD/Z;->g:Lam/e;

    invoke-static {v2, v0}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    const/16 v2, 0xf

    const-wide/high16 v3, -0x8000

    invoke-static {v0, v2, v3, v4}, Lam/g;->a(Lam/b;IJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/aV;->a(J)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_29

    :goto_21
    return-object v1

    :catch_22
    move-exception v0

    const-string v2, "-Error loading featureSet"

    invoke-static {p1, v0, v2}, LaY/a;->a(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_8

    :catch_29
    move-exception v0

    const-string v2, "-Error saving featureSet"

    invoke-static {p1, v0, v2}, LaY/a;->a(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_21

    :cond_30
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/aV;->a(J)V

    goto :goto_21
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAVED_BGFS_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, LaY/d;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v1, v2}, Laf/l;->a(Lak/m;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v2

    if-eqz v2, :cond_38

    iget v3, p0, LaY/d;->a:I

    packed-switch v3, :pswitch_data_48

    :goto_29
    iget-object v1, p0, LaY/d;->g:LaY/a;

    invoke-static {v1}, LaY/a;->a(LaY/a;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, LaY/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    iget-object v1, p0, LaY/d;->g:LaY/a;

    iget-object v2, p0, LaY/d;->e:LaY/f;

    iget-object v3, p0, LaY/d;->f:Lcom/google/googlenav/android/ac;

    invoke-static {v1, v0, v2, v3}, LaY/a;->a(LaY/a;Lcom/google/googlenav/E;LaY/f;Lcom/google/googlenav/android/ac;)V

    return-void

    :pswitch_42
    invoke-direct {p0, v1, v2}, LaY/d;->a(Lak/m;Ljava/io/DataInput;)Lcom/google/googlenav/E;

    move-result-object v0

    goto :goto_29

    nop

    :pswitch_data_48
    .packed-switch 0x3
        :pswitch_42
    .end packed-switch
.end method
