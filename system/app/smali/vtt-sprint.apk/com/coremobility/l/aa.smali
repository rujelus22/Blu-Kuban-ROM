.class public final Lcom/coremobility/l/aa;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:Lcom/coremobility/l/ac;

.field b:Lcom/coremobility/l/ag;

.field c:Ljava/lang/StringBuffer;

.field d:I

.field final synthetic e:Lcom/coremobility/l/v;


# direct methods
.method protected constructor <init>(Lcom/coremobility/l/v;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iput-object v0, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/l/aa;->d:I

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    const/4 v1, -0x1

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->M:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_4

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4
.end method

.method private a(III)V
    .registers 7

    const/16 v0, 0xa

    if-ne p1, v0, :cond_d

    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v0, p2, :cond_d

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput p3, v0, Lcom/coremobility/l/v;->H:I

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_c

    packed-switch p1, :pswitch_data_3a

    goto :goto_c

    :pswitch_17
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/coremobility/l/af;->b:J

    goto :goto_c

    :pswitch_28
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/af;->a:I

    goto :goto_c

    :pswitch_data_3a
    .packed-switch 0xb
        :pswitch_17
        :pswitch_28
    .end packed-switch
.end method

.method private b(III)V
    .registers 7

    const/16 v0, 0xd

    if-ne p1, v0, :cond_d

    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v0, p2, :cond_d

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput p3, v0, Lcom/coremobility/l/v;->H:I

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_c

    packed-switch p1, :pswitch_data_44

    goto :goto_c

    :pswitch_17
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ad;->c:I

    goto :goto_c

    :pswitch_29
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    goto :goto_c

    :pswitch_36
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    goto :goto_c

    nop

    :pswitch_data_44
    .packed-switch 0xe
        :pswitch_17
        :pswitch_29
        :pswitch_36
    .end packed-switch
.end method

.method private c(III)V
    .registers 7

    const/4 v2, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v0, p2, :cond_d

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput p3, v0, Lcom/coremobility/l/v;->H:I

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_c

    packed-switch p1, :pswitch_data_7a

    goto :goto_c

    :pswitch_17
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    goto :goto_c

    :pswitch_24
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->b:I

    goto :goto_c

    :pswitch_35
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->f:I

    goto :goto_c

    :pswitch_46
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    goto :goto_c

    :pswitch_53
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    goto :goto_c

    :pswitch_60
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    goto :goto_c

    :pswitch_6d
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    goto :goto_c

    :pswitch_data_7a
    .packed-switch 0x2
        :pswitch_17
        :pswitch_24
        :pswitch_53
        :pswitch_60
        :pswitch_6d
        :pswitch_35
        :pswitch_46
    .end packed-switch
.end method


# virtual methods
.method public final characters([CII)V
    .registers 8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-boolean v1, v1, Lcom/coremobility/l/v;->u:Z

    if-eqz v1, :cond_26

    const/16 v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chars: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, p2}, Lcom/coremobility/l/aa;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget v1, v1, Lcom/coremobility/l/v;->H:I

    packed-switch v1, :pswitch_data_1e8

    :cond_10
    :goto_10
    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coremobility/l/aa;->d:I

    return-void

    :pswitch_17
    invoke-direct {p0, v0, v2, v3}, Lcom/coremobility/l/aa;->a(III)V

    goto :goto_10

    :pswitch_1b
    invoke-direct {p0, v0, v6, v2}, Lcom/coremobility/l/aa;->b(III)V

    goto :goto_10

    :pswitch_1f
    invoke-direct {p0, v0, v6, v2}, Lcom/coremobility/l/aa;->c(III)V

    goto :goto_10

    :pswitch_23
    invoke-direct {p0, v0, v3, v5}, Lcom/coremobility/l/aa;->a(III)V

    goto :goto_10

    :pswitch_27
    const/4 v1, 0x6

    invoke-direct {p0, v0, v2, v1}, Lcom/coremobility/l/aa;->b(III)V

    goto :goto_10

    :pswitch_2c
    const/4 v1, 0x6

    invoke-direct {p0, v0, v2, v1}, Lcom/coremobility/l/aa;->c(III)V

    goto :goto_10

    :pswitch_31
    if-nez v0, :cond_3c

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_3c

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v5, v0, Lcom/coremobility/l/v;->H:I

    goto :goto_10

    :cond_3c
    if-ne v0, v3, :cond_4c

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v2, :cond_4c

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_4c
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v6, :cond_10

    packed-switch v0, :pswitch_data_202

    goto :goto_10

    :pswitch_54
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    goto :goto_10

    :pswitch_5f
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->b:I

    goto :goto_10

    :pswitch_6e
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->f:I

    goto :goto_10

    :pswitch_7d
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    goto :goto_10

    :pswitch_88
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_94
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_a0
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_ac
    if-nez v0, :cond_b8

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v2, :cond_b8

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v3, v0, Lcom/coremobility/l/v;->H:I

    goto/16 :goto_10

    :cond_b8
    if-ne v0, v3, :cond_c9

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v6, :cond_c9

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_c9
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    packed-switch v0, :pswitch_data_214

    goto/16 :goto_10

    :pswitch_d3
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_df
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->b:I

    goto/16 :goto_10

    :pswitch_ef
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->f:I

    goto/16 :goto_10

    :pswitch_ff
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_10b
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_117
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_123
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_12f
    const/16 v1, 0x12

    if-ne v0, v1, :cond_142

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_142

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->G:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_142
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v2, :cond_10

    packed-switch v0, :pswitch_data_226

    goto/16 :goto_10

    :pswitch_14b
    iget-object v0, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ag;->a:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_157
    iget-object v0, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ag;->b:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_163
    iget-object v0, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ag;->c:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_16f
    const/16 v1, 0xd

    if-ne v0, v1, :cond_17d

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_17d

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v5, v0, Lcom/coremobility/l/v;->H:I

    goto/16 :goto_10

    :cond_17d
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v2, :cond_10

    packed-switch v0, :pswitch_data_230

    goto/16 :goto_10

    :pswitch_186
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ad;->c:I

    goto/16 :goto_10

    :pswitch_198
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_1a6
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_1b4
    const/16 v1, 0x16

    if-ne v0, v1, :cond_1c2

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_1c2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v5, v0, Lcom/coremobility/l/v;->H:I

    goto/16 :goto_10

    :cond_1c2
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v2, :cond_10

    packed-switch v0, :pswitch_data_23a

    goto/16 :goto_10

    :pswitch_1cb
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->L:Lcom/coremobility/l/ae;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ae;->a:Ljava/lang/String;

    goto/16 :goto_10

    :pswitch_1d9
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->L:Lcom/coremobility/l/ae;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ae;->b:Ljava/lang/String;

    goto/16 :goto_10

    nop

    :pswitch_data_1e8
    .packed-switch 0x2
        :pswitch_17
        :pswitch_ac
        :pswitch_1f
        :pswitch_1b
        :pswitch_23
        :pswitch_2c
        :pswitch_27
        :pswitch_31
        :pswitch_16f
        :pswitch_12f
        :pswitch_1b4
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x2
        :pswitch_54
        :pswitch_5f
        :pswitch_88
        :pswitch_94
        :pswitch_a0
        :pswitch_6e
        :pswitch_7d
    .end packed-switch

    :pswitch_data_214
    .packed-switch 0x2
        :pswitch_d3
        :pswitch_df
        :pswitch_10b
        :pswitch_117
        :pswitch_123
        :pswitch_ef
        :pswitch_ff
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0x13
        :pswitch_14b
        :pswitch_157
        :pswitch_163
    .end packed-switch

    :pswitch_data_230
    .packed-switch 0xe
        :pswitch_186
        :pswitch_198
        :pswitch_1a6
    .end packed-switch

    :pswitch_data_23a
    .packed-switch 0x17
        :pswitch_1cb
        :pswitch_1d9
    .end packed-switch
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 12

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/16 v5, 0x31

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-boolean v0, v0, Lcom/coremobility/l/v;->u:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/l/aa;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lcom/coremobility/l/aa;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget v2, v2, Lcom/coremobility/l/v;->H:I

    packed-switch v2, :pswitch_data_34e

    :cond_3f
    :goto_3f
    :pswitch_3f
    return-void

    :pswitch_40
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v4, :cond_3f

    sparse-switch v0, :sswitch_data_36a

    goto :goto_3f

    :sswitch_48
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/16 v1, 0x9

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    goto :goto_3f

    :sswitch_58
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v4, v0, Lcom/coremobility/l/v;->H:I

    goto :goto_3f

    :sswitch_5d
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/4 v1, 0x6

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/af;

    invoke-direct {v1}, Lcom/coremobility/l/af;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    goto :goto_3f

    :sswitch_6c
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/16 v1, 0xb

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->G:Ljava/util/Vector;

    goto :goto_3f

    :sswitch_7c
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/16 v1, 0xc

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ae;

    invoke-direct {v1}, Lcom/coremobility/l/ae;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->L:Lcom/coremobility/l/ae;

    goto :goto_3f

    :sswitch_8c
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/16 v1, 0xa

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ad;

    invoke-direct {v1}, Lcom/coremobility/l/ad;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    goto :goto_3f

    :pswitch_9c
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_3f

    sparse-switch v0, :sswitch_data_384

    goto :goto_3f

    :sswitch_a4
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v6, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    goto :goto_3f

    :sswitch_b2
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v3, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/af;

    invoke-direct {v1}, Lcom/coremobility/l/af;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    goto :goto_3f

    :pswitch_c0
    iget v2, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v2, v6, :cond_3f

    sparse-switch v0, :sswitch_data_38e

    goto/16 :goto_3f

    :sswitch_c9
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/4 v1, 0x4

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ac;

    invoke-direct {v1}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    goto/16 :goto_3f

    :sswitch_d9
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/4 v1, 0x5

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ad;

    invoke-direct {v1}, Lcom/coremobility/l/ad;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    goto/16 :goto_3f

    :sswitch_e9
    move v0, v1

    :goto_ea
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_12f

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coremobility/l/aa;->a(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_39c

    :goto_fb
    add-int/lit8 v0, v0, 0x1

    goto :goto_ea

    :sswitch_fe
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    goto :goto_fb

    :sswitch_109
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    goto :goto_fb

    :sswitch_114
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    goto :goto_fb

    :sswitch_11f
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/coremobility/l/af;->g:I

    goto :goto_fb

    :cond_12f
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-boolean v0, v0, Lcom/coremobility/l/v;->u:Z

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    if-nez v0, :cond_1bb

    const-string v0, ""

    :goto_14a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    if-nez v0, :cond_1c2

    const-string v0, ""

    :goto_16c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorDescription: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    if-nez v0, :cond_1c9

    const-string v0, ""

    :goto_18e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetryActionTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3f

    :cond_1bb
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    goto :goto_14a

    :cond_1c2
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    goto :goto_16c

    :cond_1c9
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    goto :goto_18e

    :pswitch_1d0
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v6, :cond_3f

    if-ne v0, v4, :cond_3f

    new-instance v0, Lcom/coremobility/l/ac;

    invoke-direct {v0}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    goto/16 :goto_3f

    :pswitch_1df
    iget v2, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v2, v3, :cond_3f

    sparse-switch v0, :sswitch_data_3ae

    goto/16 :goto_3f

    :sswitch_1e8
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/4 v1, 0x7

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ac;

    invoke-direct {v1}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    goto/16 :goto_3f

    :sswitch_1f8
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/16 v1, 0x8

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ad;

    invoke-direct {v1}, Lcom/coremobility/l/ad;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    goto/16 :goto_3f

    :sswitch_209
    move v0, v1

    :goto_20a
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_24f

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coremobility/l/aa;->a(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_3bc

    :goto_21b
    add-int/lit8 v0, v0, 0x1

    goto :goto_20a

    :sswitch_21e
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    goto :goto_21b

    :sswitch_229
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    goto :goto_21b

    :sswitch_234
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    goto :goto_21b

    :sswitch_23f
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/coremobility/l/af;->g:I

    goto :goto_21b

    :cond_24f
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-boolean v0, v0, Lcom/coremobility/l/v;->u:Z

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    if-nez v0, :cond_2db

    const-string v0, ""

    :goto_26a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    if-nez v0, :cond_2e2

    const-string v0, ""

    :goto_28c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorDescription: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    if-nez v0, :cond_2e9

    const-string v0, ""

    :goto_2ae
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetryActionTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3f

    :cond_2db
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    goto :goto_26a

    :cond_2e2
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    goto :goto_28c

    :cond_2e9
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    goto :goto_2ae

    :pswitch_2f0
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_3f

    if-ne v0, v4, :cond_3f

    new-instance v0, Lcom/coremobility/l/ac;

    invoke-direct {v0}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    goto/16 :goto_3f

    :pswitch_2ff
    iget v2, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v2, v3, :cond_3f

    const/16 v2, 0x19

    if-ne v0, v2, :cond_3f

    :goto_307
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_3f

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/l/aa;->a(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_3ce

    :goto_318
    add-int/lit8 v1, v1, 0x1

    goto :goto_307

    :sswitch_31b
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coremobility/l/ad;->d:Ljava/lang/String;

    goto :goto_318

    :sswitch_326
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coremobility/l/ad;->e:Ljava/lang/String;

    goto :goto_318

    :sswitch_331
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coremobility/l/ad;->f:Ljava/lang/String;

    goto :goto_318

    :pswitch_33c
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_3f

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3f

    new-instance v0, Lcom/coremobility/l/ag;

    invoke-direct {v0}, Lcom/coremobility/l/ag;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    goto/16 :goto_3f

    nop

    :pswitch_data_34e
    .packed-switch 0x0
        :pswitch_40
        :pswitch_9c
        :pswitch_c0
        :pswitch_1d0
        :pswitch_3f
        :pswitch_3f
        :pswitch_1df
        :pswitch_3f
        :pswitch_3f
        :pswitch_2f0
        :pswitch_2ff
        :pswitch_33c
    .end packed-switch

    :sswitch_data_36a
    .sparse-switch
        0x0 -> :sswitch_48
        0x9 -> :sswitch_58
        0xa -> :sswitch_5d
        0xd -> :sswitch_8c
        0x11 -> :sswitch_6c
        0x16 -> :sswitch_7c
    .end sparse-switch

    :sswitch_data_384
    .sparse-switch
        0x0 -> :sswitch_a4
        0xa -> :sswitch_b2
    .end sparse-switch

    :sswitch_data_38e
    .sparse-switch
        0x1 -> :sswitch_c9
        0xd -> :sswitch_d9
        0x19 -> :sswitch_e9
    .end sparse-switch

    :sswitch_data_39c
    .sparse-switch
        0x8 -> :sswitch_114
        0x1a -> :sswitch_fe
        0x1b -> :sswitch_109
        0x1c -> :sswitch_11f
    .end sparse-switch

    :sswitch_data_3ae
    .sparse-switch
        0x1 -> :sswitch_1e8
        0xd -> :sswitch_1f8
        0x19 -> :sswitch_209
    .end sparse-switch

    :sswitch_data_3bc
    .sparse-switch
        0x8 -> :sswitch_234
        0x1a -> :sswitch_21e
        0x1b -> :sswitch_229
        0x1c -> :sswitch_23f
    .end sparse-switch

    :sswitch_data_3ce
    .sparse-switch
        0x8 -> :sswitch_331
        0x1a -> :sswitch_31b
        0x1b -> :sswitch_326
    .end sparse-switch
.end method
