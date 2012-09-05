.class public final Lcom/coremobility/i/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/i/h;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:J

.field protected c:Ljava/lang/String;

.field protected d:J

.field protected e:J

.field protected f:J

.field protected g:J

.field protected h:J

.field protected i:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;JJJJJJ)V
    .registers 17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coremobility/i/f;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/coremobility/i/f;->b:J

    iput-object p4, p0, Lcom/coremobility/i/f;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/coremobility/i/f;->e:J

    iput-wide p7, p0, Lcom/coremobility/i/f;->f:J

    iput-wide p11, p0, Lcom/coremobility/i/f;->g:J

    iput-wide p13, p0, Lcom/coremobility/i/f;->h:J

    iput-wide p15, p0, Lcom/coremobility/i/f;->d:J

    iput-wide p9, p0, Lcom/coremobility/i/f;->i:J

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/coremobility/i/h;
    .registers 24

    new-instance v19, Ljava/util/StringTokenizer;

    const-string v2, ","

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    :goto_3a
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_71

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_60
    sparse-switch v20, :sswitch_data_a6

    goto :goto_3a

    :sswitch_64
    const/4 v15, 0x1

    invoke-static {v2, v15}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v15

    const-wide/16 v20, 0x2

    or-long v17, v17, v20

    goto :goto_3a

    :cond_6e
    const-string v6, ""

    goto :goto_3a

    :cond_71
    const-string v2, ""

    goto :goto_60

    :sswitch_74
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v7

    const-wide/16 v20, 0x4

    or-long v17, v17, v20

    goto :goto_3a

    :sswitch_7e
    const/4 v9, 0x1

    invoke-static {v2, v9}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v9

    const-wide/16 v20, 0x8

    or-long v17, v17, v20

    goto :goto_3a

    :sswitch_88
    const/4 v13, 0x1

    invoke-static {v2, v13}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v13

    const-wide/16 v20, 0x1

    or-long v17, v17, v20

    goto :goto_3a

    :sswitch_92
    const/4 v11, 0x1

    invoke-static {v2, v11}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v11

    const-wide/16 v20, 0x10

    or-long v17, v17, v20

    goto :goto_3a

    :cond_9c
    new-instance v2, Lcom/coremobility/i/f;

    invoke-direct/range {v2 .. v18}, Lcom/coremobility/i/f;-><init>(Ljava/lang/String;JLjava/lang/String;JJJJJJ)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_a1} :catch_a2

    :goto_a1
    return-object v2

    :catch_a2
    move-exception v2

    :cond_a3
    const/4 v2, 0x0

    goto :goto_a1

    nop

    :sswitch_data_a6
    .sparse-switch
        0x43 -> :sswitch_64
        0x4d -> :sswitch_7e
        0x52 -> :sswitch_88
        0x53 -> :sswitch_74
        0x54 -> :sswitch_92
    .end sparse-switch
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/coremobility/i/f;->b:J

    return-wide v0
.end method

.method public final a(I)Z
    .registers 6

    iget-wide v0, p0, Lcom/coremobility/i/f;->d:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final b(I)J
    .registers 4

    const-wide/16 v0, 0x0

    packed-switch p1, :pswitch_data_12

    :goto_5
    :pswitch_5
    return-wide v0

    :pswitch_6
    iget-wide v0, p0, Lcom/coremobility/i/f;->g:J

    goto :goto_5

    :pswitch_9
    iget-wide v0, p0, Lcom/coremobility/i/f;->h:J

    goto :goto_5

    :pswitch_c
    iget-wide v0, p0, Lcom/coremobility/i/f;->e:J

    goto :goto_5

    :pswitch_f
    iget-wide v0, p0, Lcom/coremobility/i/f;->f:J

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_f
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/i/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/i/f;->c:Ljava/lang/String;

    return-object v0
.end method
