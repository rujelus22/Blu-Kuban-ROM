.class public final Lcom/coremobility/l/aq;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field static j:Ljava/util/Hashtable;


# instance fields
.field a:Ljava/lang/StringBuffer;

.field b:I

.field c:I

.field d:Lcom/coremobility/l/an;

.field e:Lcom/coremobility/l/aj;

.field f:Lcom/coremobility/l/ak;

.field g:Lcom/coremobility/l/al;

.field h:Lcom/coremobility/l/am;

.field i:Lcom/coremobility/l/ai;

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/l/aq;->j:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    iput v2, p0, Lcom/coremobility/l/aq;->b:I

    iput v2, p0, Lcom/coremobility/l/aq;->c:I

    iput-object v1, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    iput-object v1, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iput-object v1, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iput-object v1, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    iput-object v1, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    iput-object v1, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iput-boolean v2, p0, Lcom/coremobility/l/aq;->k:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 3

    const/4 v1, -0x1

    if-nez p0, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    sget-object v0, Lcom/coremobility/l/aq;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_4

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4
.end method

.method private static a()V
    .registers 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/coremobility/l/aq;->j:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_8
    sget-object v1, Lcom/coremobility/l/ao;->a:[Lcom/coremobility/j/o;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    sget-object v1, Lcom/coremobility/l/aq;->j:Ljava/util/Hashtable;

    sget-object v2, Lcom/coremobility/l/ao;->a:[Lcom/coremobility/j/o;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/coremobility/j/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/Integer;

    sget-object v4, Lcom/coremobility/l/ao;->a:[Lcom/coremobility/j/o;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/coremobility/j/o;->b:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_26
    return-void
.end method


# virtual methods
.method public final a(Lcom/coremobility/l/an;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    iput v2, p0, Lcom/coremobility/l/aq;->b:I

    iput v2, p0, Lcom/coremobility/l/aq;->c:I

    iput-object v1, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iput-object v1, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iput-object v1, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    iput-object v1, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    iput-object v1, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    sget-object v0, Lcom/coremobility/l/aq;->j:Ljava/util/Hashtable;

    if-nez v0, :cond_20

    invoke-static {}, Lcom/coremobility/l/aq;->a()V

    :cond_20
    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/l/v;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/l/aq;->k:Z

    return-void
.end method

.method public final characters([CII)V
    .registers 8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-boolean v1, p0, Lcom/coremobility/l/aq;->k:Z

    if-eqz v1, :cond_24

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

    :cond_24
    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-static {p2}, Lcom/coremobility/l/aq;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/coremobility/l/aq;->c:I

    packed-switch v1, :pswitch_data_1d2

    :cond_e
    :goto_e
    :pswitch_e
    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coremobility/l/aq;->b:I

    return-void

    :pswitch_15
    if-nez v0, :cond_1f

    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v0, v5, :cond_1f

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_e

    :cond_1f
    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v0, v2, :cond_e

    goto :goto_e

    :pswitch_24
    if-ne v0, v2, :cond_e

    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    iget-object v0, v0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iput v5, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_e

    :pswitch_38
    const/16 v1, 0x8

    if-ne v0, v1, :cond_43

    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v6, :cond_43

    iput v2, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_e

    :cond_43
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v4, :cond_e

    packed-switch v0, :pswitch_data_1e8

    goto :goto_e

    :pswitch_4b
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/aj;->a:Ljava/lang/String;

    goto :goto_e

    :pswitch_56
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/aj;->b:Ljava/lang/String;

    goto :goto_e

    :pswitch_61
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/aj;->c:Ljava/lang/String;

    goto :goto_e

    :pswitch_6c
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/aj;->d:Ljava/lang/String;

    goto :goto_e

    :pswitch_77
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v0, v0, Lcom/coremobility/l/aj;->e:Ljava/util/Vector;

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/aj;->e:Ljava/util/Vector;

    :cond_86
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v0, v0, Lcom/coremobility/l/aj;->e:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_9f
    const/16 v1, 0xa

    if-ne v0, v1, :cond_b6

    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v6, :cond_b6

    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v0, v0, Lcom/coremobility/l/aj;->f:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iput v2, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_e

    :cond_b6
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v4, :cond_e

    packed-switch v0, :pswitch_data_1f6

    goto/16 :goto_e

    :pswitch_bf
    iget-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ak;->c:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_cb
    iget-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ak;->a:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_d7
    iget-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ak;->b:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_e3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v0, v4, :cond_e

    iput v4, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_e

    :pswitch_ef
    const/16 v1, 0xf

    if-ne v0, v1, :cond_108

    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_108

    iget-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iget-object v0, v0, Lcom/coremobility/l/ak;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    const/4 v0, 0x5

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_e

    :cond_108
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_e

    packed-switch v0, :pswitch_data_200

    goto/16 :goto_e

    :pswitch_112
    iget-object v0, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/al;->a:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_11e
    iget-object v0, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/al;->b:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_12a
    const/16 v1, 0x12

    if-ne v0, v1, :cond_143

    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_143

    iget-object v0, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    iget-object v0, v0, Lcom/coremobility/l/al;->c:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    const/4 v0, 0x6

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_e

    :cond_143
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_e

    sparse-switch v0, :sswitch_data_208

    goto/16 :goto_e

    :sswitch_14d
    iget-object v0, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/am;->a:Ljava/lang/String;

    goto/16 :goto_e

    :sswitch_159
    iget-object v0, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/am;->b:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_165
    const/16 v1, 0x14

    if-ne v0, v1, :cond_17c

    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v2, :cond_17c

    iput v5, p0, Lcom/coremobility/l/aq;->c:I

    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    iget-object v0, v0, Lcom/coremobility/l/an;->c:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    goto/16 :goto_e

    :cond_17c
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v6, :cond_e

    packed-switch v0, :pswitch_data_212

    :pswitch_183
    goto/16 :goto_e

    :pswitch_185
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ai;->c:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_191
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ai;->a:I

    goto/16 :goto_e

    :pswitch_1a2
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ai;->b:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_1ae
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ai;->d:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_1ba
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ai;->e:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_1c6
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ai;->f:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_15
        :pswitch_24
        :pswitch_38
        :pswitch_9f
        :pswitch_e3
        :pswitch_ef
        :pswitch_12a
        :pswitch_165
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0x3
        :pswitch_4b
        :pswitch_56
        :pswitch_61
        :pswitch_77
        :pswitch_6c
    .end packed-switch

    :pswitch_data_1f6
    .packed-switch 0xb
        :pswitch_bf
        :pswitch_cb
        :pswitch_d7
    .end packed-switch

    :pswitch_data_200
    .packed-switch 0x10
        :pswitch_112
        :pswitch_11e
    .end packed-switch

    :sswitch_data_208
    .sparse-switch
        0xd -> :sswitch_14d
        0x13 -> :sswitch_159
    .end sparse-switch

    :pswitch_data_212
    .packed-switch 0xd
        :pswitch_185
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_191
        :pswitch_1a2
        :pswitch_1ae
        :pswitch_1ba
        :pswitch_1c6
    .end packed-switch
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 13

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/coremobility/l/aq;->k:Z

    if-eqz v0, :cond_24

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-static {p2}, Lcom/coremobility/l/aq;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/coremobility/l/aq;->c:I

    packed-switch v1, :pswitch_data_e4

    :cond_3d
    :goto_3d
    :pswitch_3d
    return-void

    :pswitch_3e
    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v0, v3, :cond_3d

    iput v3, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_3d

    :pswitch_45
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v4, :cond_3d

    sparse-switch v0, :sswitch_data_f6

    goto :goto_3d

    :sswitch_4d
    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    iget-object v0, v0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    :cond_5c
    new-instance v0, Lcom/coremobility/l/aj;

    invoke-direct {v0}, Lcom/coremobility/l/aj;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iput v4, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_3d

    :sswitch_66
    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    iget-object v0, v0, Lcom/coremobility/l/an;->c:Ljava/util/Vector;

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/an;->c:Ljava/util/Vector;

    :cond_75
    new-instance v0, Lcom/coremobility/l/ai;

    invoke-direct {v0}, Lcom/coremobility/l/ai;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    const/16 v0, 0x8

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_3d

    :pswitch_81
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v5, :cond_3d

    packed-switch v0, :pswitch_data_100

    :pswitch_88
    goto :goto_3d

    :pswitch_89
    iput v5, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_3d

    :pswitch_8c
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v0, v0, Lcom/coremobility/l/aj;->f:Ljava/util/Vector;

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/aj;->f:Ljava/util/Vector;

    :cond_9b
    new-instance v0, Lcom/coremobility/l/ak;

    invoke-direct {v0}, Lcom/coremobility/l/ak;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iput v6, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_3d

    :pswitch_a5
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v6, :cond_3d

    packed-switch v0, :pswitch_data_10a

    goto :goto_3d

    :pswitch_ad
    iget-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/ak;->d:Ljava/util/Vector;

    iput v7, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_3d

    :pswitch_b9
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v7, :cond_3d

    packed-switch v0, :pswitch_data_110

    goto/16 :goto_3d

    :pswitch_c2
    new-instance v0, Lcom/coremobility/l/al;

    invoke-direct {v0}, Lcom/coremobility/l/al;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    const/4 v0, 0x6

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_3d

    :pswitch_ce
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3d

    packed-switch v0, :pswitch_data_116

    goto/16 :goto_3d

    :pswitch_d8
    new-instance v0, Lcom/coremobility/l/am;

    invoke-direct {v0}, Lcom/coremobility/l/am;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    const/4 v0, 0x7

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_3d

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_45
        :pswitch_81
        :pswitch_3d
        :pswitch_a5
        :pswitch_b9
        :pswitch_ce
    .end packed-switch

    :sswitch_data_f6
    .sparse-switch
        0x2 -> :sswitch_4d
        0x14 -> :sswitch_66
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x8
        :pswitch_89
        :pswitch_88
        :pswitch_8c
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0xe
        :pswitch_ad
    .end packed-switch

    :pswitch_data_110
    .packed-switch 0xf
        :pswitch_c2
    .end packed-switch

    :pswitch_data_116
    .packed-switch 0x12
        :pswitch_d8
    .end packed-switch
.end method
