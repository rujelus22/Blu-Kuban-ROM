.class public Lcom/google/googlenav/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3438
    iput p1, p0, Lcom/google/googlenav/au;->a:I

    .line 3439
    iput-object p2, p0, Lcom/google/googlenav/au;->b:Ljava/lang/String;

    .line 3440
    iput-object p3, p0, Lcom/google/googlenav/au;->c:Ljava/lang/String;

    .line 3441
    iput-object p4, p0, Lcom/google/googlenav/au;->d:Ljava/lang/String;

    .line 3442
    iput-object p5, p0, Lcom/google/googlenav/au;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3443
    iput-object p6, p0, Lcom/google/googlenav/au;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3444
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/au;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x5

    .line 3447
    .line 3450
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v0

    long-to-int v1, v0

    .line 3455
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 3457
    const/4 v0, 0x6

    :try_start_10
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 3458
    sget-object v3, Lbm/aD;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_23} :catch_3a

    move-result-object v5

    move-object v6, v2

    .line 3595
    :goto_25
    new-instance v0, Lcom/google/googlenav/au;

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/au;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0

    .line 3461
    :catch_3a
    move-exception v0

    .line 3462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLACE_PAGE, received corrupted data for story protoof type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v2

    move-object v5, v2

    .line 3465
    goto :goto_25

    .line 3466
    :cond_54
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_23d

    .line 3467
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 3469
    sparse-switch v1, :sswitch_data_242

    .line 3587
    :try_start_61
    const-string v0, "PlacePageStory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown story of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_7a
    move-object v6, v0

    move-object v5, v2

    .line 3593
    goto :goto_25

    .line 3471
    :sswitch_7d
    sget-object v3, Lbm/e;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_7a

    .line 3475
    :sswitch_8e
    sget-object v3, Lbm/az;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_7a

    .line 3480
    :sswitch_9f
    sget-object v3, Lbm/aa;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_7a

    .line 3484
    :sswitch_b0
    sget-object v3, Lbm/i;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_7a

    .line 3488
    :sswitch_c1
    sget-object v3, Lbm/aX;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_7a

    .line 3493
    :sswitch_d2
    sget-object v3, Lbm/O;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_7a

    .line 3498
    :sswitch_e3
    sget-object v3, Lbm/bm;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_7a

    .line 3503
    :sswitch_f4
    sget-object v3, Lbm/ba;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3508
    :sswitch_106
    sget-object v3, Lbm/aP;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3513
    :sswitch_118
    sget-object v3, Lbm/at;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3518
    :sswitch_12a
    sget-object v3, Lbm/q;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3523
    :sswitch_13c
    sget-object v3, Lbm/I;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3527
    :sswitch_14e
    sget-object v3, Lbm/ae;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3532
    :sswitch_160
    sget-object v3, Lbm/i;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3536
    :sswitch_172
    sget-object v3, Lbm/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3541
    :sswitch_184
    sget-object v3, Lbm/aj;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3545
    :sswitch_196
    sget-object v3, Lbm/C;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3549
    :sswitch_1a8
    sget-object v3, Lbm/bt;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3554
    :sswitch_1ba
    sget-object v3, Lbm/K;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3558
    :sswitch_1cc
    sget-object v3, Lbm/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3563
    :sswitch_1de
    sget-object v3, Lbm/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3568
    :sswitch_1f0
    sget-object v3, Lbm/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3573
    :sswitch_202
    sget-object v3, Lbm/U;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_7a

    .line 3578
    :sswitch_214
    sget-object v3, Lbm/X;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_223} :catch_226

    move-result-object v0

    goto/16 :goto_7a

    .line 3589
    :catch_226
    move-exception v0

    .line 3590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLACE_PAGE, received corrupted data for story of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23d
    move-object v6, v2

    move-object v5, v2

    goto/16 :goto_25

    .line 3469
    nop

    :sswitch_data_242
    .sparse-switch
        0xa -> :sswitch_7d
        0xe -> :sswitch_9f
        0xf -> :sswitch_8e
        0x11 -> :sswitch_106
        0x15 -> :sswitch_b0
        0x1a -> :sswitch_f4
        0x1b -> :sswitch_c1
        0x1c -> :sswitch_d2
        0x1f -> :sswitch_184
        0x20 -> :sswitch_196
        0x23 -> :sswitch_13c
        0x24 -> :sswitch_12a
        0x27 -> :sswitch_160
        0x2d -> :sswitch_202
        0x31 -> :sswitch_172
        0x32 -> :sswitch_118
        0x33 -> :sswitch_14e
        0x4a -> :sswitch_1de
        0x4b -> :sswitch_1cc
        0x4c -> :sswitch_e3
        0x4e -> :sswitch_1a8
        0x4f -> :sswitch_1ba
        0x50 -> :sswitch_214
        0x56 -> :sswitch_1f0
    .end sparse-switch
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3643
    iget-object v0, p0, Lcom/google/googlenav/au;->b:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/au;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_b
    add-int/lit8 v2, v0, 0x4

    iget-object v0, p0, Lcom/google/googlenav/au;->c:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/au;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlenav/au;->d:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v1, p0, Lcom/google/googlenav/au;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    .line 3647
    iget-object v1, p0, Lcom/google/googlenav/au;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_2e

    .line 3648
    iget-object v1, p0, Lcom/google/googlenav/au;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getNumBytesUsed()I

    move-result v1

    add-int/2addr v0, v1

    .line 3650
    :cond_2e
    iget-object v1, p0, Lcom/google/googlenav/au;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_39

    .line 3651
    iget-object v1, p0, Lcom/google/googlenav/au;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getNumBytesUsed()I

    move-result v1

    add-int/2addr v0, v1

    .line 3653
    :cond_39
    return v0

    :cond_3a
    move v0, v1

    .line 3643
    goto :goto_b

    :cond_3c
    move v0, v1

    goto :goto_17
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3626
    iget-object v1, p0, Lcom/google/googlenav/au;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v1, :cond_1a

    .line 3627
    iget-object v1, p0, Lcom/google/googlenav/au;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/googlenav/au;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType()Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v1

    iget-object v2, p1, Lcom/google/googlenav/common/io/protocol/Extension;->messageType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3629
    iget-object v0, p0, Lcom/google/googlenav/au;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3637
    :cond_19
    :goto_19
    return-object v0

    .line 3634
    :cond_1a
    iget-object v1, p0, Lcom/google/googlenav/au;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget v2, p1, Lcom/google/googlenav/common/io/protocol/Extension;->fieldNumber:I

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3637
    iget-object v0, p0, Lcom/google/googlenav/au;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBufExtension(Lcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_19
.end method
