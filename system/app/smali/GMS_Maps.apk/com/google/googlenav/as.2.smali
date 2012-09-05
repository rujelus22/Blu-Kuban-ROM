.class public Lcom/google/googlenav/as;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lam/b;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/as;->a:I

    iput-object p2, p0, Lcom/google/googlenav/as;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/as;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/as;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/googlenav/as;->e:Lam/b;

    return-void
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/as;
    .registers 7

    const/4 v3, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lam/g;->g(Lam/b;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_1e0

    invoke-virtual {p0, v3}, Lam/b;->c(I)[B

    move-result-object v2

    sparse-switch v1, :sswitch_data_1e4

    :try_start_15
    const-string v2, "PlacePageStory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown story of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2d} :catch_1c9

    :goto_2d
    move-object v5, v0

    :goto_2e
    new-instance v0, Lcom/google/googlenav/as;

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/as;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/b;)V

    return-object v0

    :sswitch_43
    :try_start_43
    sget-object v3, LbA/U;->b:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto :goto_2d

    :sswitch_54
    sget-object v3, LbA/L;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto :goto_2d

    :sswitch_65
    sget-object v3, LbA/e;->c:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto :goto_2d

    :sswitch_76
    sget-object v3, LbA/aB;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto :goto_2d

    :sswitch_87
    sget-object v3, LbA/ac;->c:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto :goto_2d

    :sswitch_98
    sget-object v3, LbA/i;->b:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto :goto_2d

    :sswitch_a9
    sget-object v3, LbA/aV;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_bb
    sget-object v3, LbA/X;->c:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_cd
    sget-object v3, LbA/bi;->d:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_df
    sget-object v3, LbA/aY;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_f1
    sget-object v3, LbA/aQ;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_103
    sget-object v3, LbA/av;->e:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_115
    sget-object v3, LbA/q;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_127
    sget-object v3, LbA/H;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_139
    sget-object v3, LbA/ag;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_14b
    sget-object v3, LbA/i;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_15d
    sget-object v3, LbA/m;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_16f
    sget-object v3, LbA/al;->c:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_181
    sget-object v3, LbA/C;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_193
    sget-object v3, LbA/bp;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_1a5
    sget-object v3, LbA/J;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    goto/16 :goto_2d

    :sswitch_1b7
    sget-object v3, LbA/x;->a:Lam/e;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_1c6} :catch_1c9

    move-result-object v0

    goto/16 :goto_2d

    :catch_1c9
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLACE_PAGE, received corrupted data for story of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e0
    move-object v5, v0

    goto/16 :goto_2e

    nop

    :sswitch_data_1e4
    .sparse-switch
        0x7 -> :sswitch_54
        0xa -> :sswitch_65
        0xc -> :sswitch_43
        0xe -> :sswitch_87
        0xf -> :sswitch_76
        0x11 -> :sswitch_f1
        0x15 -> :sswitch_98
        0x1a -> :sswitch_df
        0x1b -> :sswitch_a9
        0x1c -> :sswitch_bb
        0x1f -> :sswitch_16f
        0x20 -> :sswitch_181
        0x23 -> :sswitch_127
        0x24 -> :sswitch_115
        0x27 -> :sswitch_14b
        0x31 -> :sswitch_15d
        0x32 -> :sswitch_103
        0x33 -> :sswitch_139
        0x4b -> :sswitch_1b7
        0x4c -> :sswitch_cd
        0x4e -> :sswitch_193
        0x4f -> :sswitch_1a5
    .end sparse-switch
.end method


# virtual methods
.method public a()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/as;->e:Lam/b;

    return-object v0
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/as;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/googlenav/as;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/as;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/as;->e:Lam/b;

    invoke-virtual {v1}, Lam/b;->e()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
