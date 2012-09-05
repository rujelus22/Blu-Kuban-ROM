.class Lcom/google/android/location/os/real/E;
.super Ljava/lang/Object;

# interfaces
.implements Lbw/n;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/C;

.field private final b:Lcom/google/android/location/os/real/F;

.field private final c:Ljava/lang/String;

.field private d:Lcom/google/android/location/os/real/G;

.field private volatile e:J


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/C;Lcom/google/android/location/os/real/F;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/os/real/E;->e:J

    iput-object p2, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    invoke-direct {p0}, Lcom/google/android/location/os/real/E;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/E;->c:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/android/location/os/real/D;->a:[I

    iget-object v1, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    invoke-virtual {v1}, Lcom/google/android/location/os/real/F;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    const-string v0, "GlsClient"

    :goto_f
    return-object v0

    :pswitch_10
    const-string v0, "GlsClient-query"

    goto :goto_f

    :pswitch_13
    const-string v0, "GlsClient-upload"

    goto :goto_f

    :pswitch_16
    const-string v0, "GlsClient-model-query"

    goto :goto_f

    :pswitch_19
    const-string v0, "GlsClient-device-location-query"

    goto :goto_f

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method private b()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/google/android/location/os/real/D;->a:[I

    iget-object v1, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    invoke-virtual {v1}, Lcom/google/android/location/os/real/F;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unhandled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2e
    const-string v0, "g:loc/ql"

    :goto_30
    return-object v0

    :pswitch_31
    const-string v0, "g:loc/ul"

    goto :goto_30

    :pswitch_34
    const-string v0, "g:loc/dl"

    goto :goto_30

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_31
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method

.method private c()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    sget-object v1, Lcom/google/android/location/os/real/F;->a:Lcom/google/android/location/os/real/F;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    sget-object v1, Lcom/google/android/location/os/real/F;->b:Lcom/google/android/location/os/real/F;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private d()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/location/os/real/D;->a:[I

    iget-object v1, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    invoke-virtual {v1}, Lcom/google/android/location/os/real/F;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unhandled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v0}, Lcom/google/android/location/os/real/C;->d(Lcom/google/android/location/os/real/C;)Lcom/google/android/location/os/real/u;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/real/u;->a(LW/a;)V

    :goto_38
    return-void

    :pswitch_39
    iget-object v0, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v0}, Lcom/google/android/location/os/real/C;->d(Lcom/google/android/location/os/real/C;)Lcom/google/android/location/os/real/u;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/real/u;->d(LW/a;)V

    goto :goto_38

    :pswitch_43
    iget-object v0, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v0}, Lcom/google/android/location/os/real/C;->d(Lcom/google/android/location/os/real/C;)Lcom/google/android/location/os/real/u;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/real/u;->b(LW/a;)V

    goto :goto_38

    :pswitch_4d
    iget-object v0, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v0}, Lcom/google/android/location/os/real/C;->d(Lcom/google/android/location/os/real/C;)Lcom/google/android/location/os/real/u;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/real/u;->c(LW/a;)V

    goto :goto_38

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_39
        :pswitch_43
        :pswitch_4d
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized a(LW/a;LW/a;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Gls request still outstanding."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const/4 v0, 0x1

    :try_start_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/location/os/real/C;->a(Ljava/util/Locale;LW/a;)LW/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LW/a;->b(ILW/a;)V

    invoke-direct {p0}, Lcom/google/android/location/os/real/E;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v1}, Lcom/google/android/location/os/real/C;->a(Lcom/google/android/location/os/real/C;)Li/C;

    move-result-object v1

    invoke-virtual {v1}, Li/C;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, LW/a;->g(II)V

    :cond_30
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, LW/a;->i(I)I

    move-result v0

    if-lez v0, :cond_60

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LW/a;->d(II)LW/a;

    move-result-object v1

    if-eqz v1, :cond_60

    iget-object v0, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v0}, Lcom/google/android/location/os/real/C;->b(Lcom/google/android/location/os/real/C;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/16 v0, 0x63

    invoke-virtual {v1, v0}, LW/a;->f(I)LW/a;

    move-result-object v0

    if-nez v0, :cond_5b

    new-instance v0, LW/a;

    sget-object v2, Lk/a;->N:LW/d;

    invoke-direct {v0, v2}, LW/a;-><init>(LW/d;)V

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, LW/a;->b(ILW/a;)V

    :cond_5b
    iget-object v1, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v1, v0}, Lcom/google/android/location/os/real/C;->a(Lcom/google/android/location/os/real/C;LW/a;)V

    :cond_60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_65
    .catchall {:try_start_11 .. :try_end_65} :catchall_d

    :try_start_65
    invoke-virtual {p1, v0}, LW/a;->a(Ljava/io/OutputStream;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_d
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_ad

    :try_start_68
    new-instance v1, Lcom/google/android/location/os/real/G;

    invoke-direct {p0}, Lcom/google/android/location/os/real/E;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/location/os/real/G;-><init>(Ljava/lang/String;I[B)V

    iput-object v1, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;

    iget-object v0, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;

    invoke-virtual {v0, p0}, Lcom/google/android/location/os/real/G;->a(Lbw/n;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/G;->b(I)V
    :try_end_83
    .catchall {:try_start_68 .. :try_end_83} :catchall_d

    :try_start_83
    iget-object v1, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;

    monitor-enter v1
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_d
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_b5

    :try_start_86
    iget-object v0, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/G;->c()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/google/android/location/os/real/E;->e:J

    monitor-exit v1
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_b2

    :goto_90
    :try_start_90
    iget-object v0, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    sget-object v1, Lcom/google/android/location/os/real/F;->b:Lcom/google/android/location/os/real/F;

    if-ne v0, v1, :cond_bb

    iget-object v0, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v0}, Lcom/google/android/location/os/real/C;->c(Lcom/google/android/location/os/real/C;)Lj/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/location/os/real/E;->e:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lj/a;->a(JZ)Z

    move-result v0

    if-nez v0, :cond_bb

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;

    invoke-direct {p0}, Lcom/google/android/location/os/real/E;->d()V
    :try_end_ab
    .catchall {:try_start_90 .. :try_end_ab} :catchall_d

    :goto_ab
    monitor-exit p0

    return-void

    :catch_ad
    move-exception v0

    :try_start_ae
    invoke-direct {p0}, Lcom/google/android/location/os/real/E;->d()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_d

    goto :goto_ab

    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_d
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b5} :catch_b5

    :catch_b5
    move-exception v0

    const-wide/16 v0, 0x0

    :try_start_b8
    iput-wide v0, p0, Lcom/google/android/location/os/real/E;->e:J

    goto :goto_90

    :cond_bb
    invoke-static {}, Lh/a;->a()Lh/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lh/a;->a(Lbw/m;Z)V
    :try_end_c5
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_d

    goto :goto_ab
.end method

.method public declared-synchronized a(Lbw/m;Lbw/o;)V
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;

    if-eq p1, v0, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Response to unexpected request."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    if-eqz p2, :cond_b9

    :try_start_13
    invoke-virtual {p2}, Lbw/o;->b_()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p2}, Lbw/o;->g()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_b9

    new-instance v0, LW/a;

    sget-object v3, Lk/a;->D:LW/d;

    invoke-direct {v0, v3}, LW/a;-><init>(LW/d;)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_26} :catch_b4

    :try_start_26
    invoke-virtual {v0, v2}, LW/a;->a(Ljava/io/InputStream;)LW/a;

    invoke-static {v0}, Lcom/google/android/location/os/real/C;->c(LW/a;)V

    invoke-direct {p0}, Lcom/google/android/location/os/real/E;->c()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v1}, Lcom/google/android/location/os/real/C;->a(Lcom/google/android/location/os/real/C;)Li/C;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, LW/a;->f(I)LW/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/C;->a(LW/a;)V
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_47} :catch_b7

    :cond_47
    :goto_47
    :try_start_47
    sget-object v1, Lcom/google/android/location/os/real/D;->a:[I

    iget-object v2, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    invoke-virtual {v2}, Lcom/google/android/location/os/real/F;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_bc

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unhandled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_75
    iget-object v1, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v1}, Lcom/google/android/location/os/real/C;->d(Lcom/google/android/location/os/real/C;)Lcom/google/android/location/os/real/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/real/u;->a(LW/a;)V

    :cond_7e
    :goto_7e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;
    :try_end_81
    .catchall {:try_start_47 .. :try_end_81} :catchall_e

    monitor-exit p0

    return-void

    :pswitch_83
    :try_start_83
    iget-object v1, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v1}, Lcom/google/android/location/os/real/C;->d(Lcom/google/android/location/os/real/C;)Lcom/google/android/location/os/real/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/real/u;->d(LW/a;)V

    iget-wide v0, p0, Lcom/google/android/location/os/real/E;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7e

    iget-object v0, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v0}, Lcom/google/android/location/os/real/C;->c(Lcom/google/android/location/os/real/C;)Lj/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/location/os/real/E;->e:J

    invoke-virtual {v0, v1, v2}, Lj/a;->a(J)V

    goto :goto_7e

    :pswitch_a0
    iget-object v1, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v1}, Lcom/google/android/location/os/real/C;->d(Lcom/google/android/location/os/real/C;)Lcom/google/android/location/os/real/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/real/u;->b(LW/a;)V

    goto :goto_7e

    :pswitch_aa
    iget-object v1, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v1}, Lcom/google/android/location/os/real/C;->d(Lcom/google/android/location/os/real/C;)Lcom/google/android/location/os/real/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/real/u;->c(LW/a;)V
    :try_end_b3
    .catchall {:try_start_83 .. :try_end_b3} :catchall_e

    goto :goto_7e

    :catch_b4
    move-exception v0

    move-object v0, v1

    goto :goto_47

    :catch_b7
    move-exception v1

    goto :goto_47

    :cond_b9
    move-object v0, v1

    goto :goto_47

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_75
        :pswitch_83
        :pswitch_a0
        :pswitch_aa
    .end packed-switch
.end method

.method public declared-synchronized a(Lbw/m;Ljava/lang/Exception;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;

    if-eq p1, v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Response to unexpected request."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/location/os/real/E;->b:Lcom/google/android/location/os/real/F;

    sget-object v1, Lcom/google/android/location/os/real/F;->b:Lcom/google/android/location/os/real/F;

    if-ne v0, v1, :cond_2d

    instance-of v0, p2, Lbv/d;

    if-eqz v0, :cond_2d

    iget-wide v0, p0, Lcom/google/android/location/os/real/E;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/location/os/real/E;->a:Lcom/google/android/location/os/real/C;

    invoke-static {v0}, Lcom/google/android/location/os/real/C;->c(Lcom/google/android/location/os/real/C;)Lj/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/location/os/real/E;->e:J

    invoke-virtual {v0, v1, v2}, Lj/a;->a(J)V

    :cond_2d
    invoke-direct {p0}, Lcom/google/android/location/os/real/E;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/E;->d:Lcom/google/android/location/os/real/G;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    monitor-exit p0

    return-void
.end method
