.class public final Lcom/coremobility/j/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/a;
.implements Lcom/coremobility/integration/v;
.implements Lcom/coremobility/j/c;


# instance fields
.field A:I

.field B:I

.field C:I

.field D:Lcom/coremobility/f/l;

.field E:Z

.field public F:[B

.field public G:Ljava/lang/String;

.field public H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lcom/coremobility/j/a;

.field a:Lcom/coremobility/integration/k;

.field b:Lcom/coremobility/g/b;

.field c:Ljava/lang/String;

.field d:Ljava/util/Hashtable;

.field e:[B

.field f:Z

.field g:Ljava/io/ByteArrayOutputStream;

.field h:Ljava/lang/String;

.field i:Ljava/util/Hashtable;

.field j:Lcom/coremobility/j/g;

.field k:Lcom/coremobility/integration/t;

.field l:Lcom/coremobility/j/f;

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:Lcom/coremobility/j/d;

.field protected w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/e;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/j/e;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/j/e;->K:Lcom/coremobility/j/a;

    iput-object v0, p0, Lcom/coremobility/j/e;->F:[B

    iput-object v0, p0, Lcom/coremobility/j/e;->G:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/j/e;->H:I

    iput v1, p0, Lcom/coremobility/j/e;->y:I

    iput-object v0, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    iput-boolean v1, p0, Lcom/coremobility/j/e;->E:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 10

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {p3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    :cond_1d
    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2c
    invoke-static {p3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; charset=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Content-Transfer-Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5a
    return-object v0

    :cond_5b
    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; filename=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c
.end method

.method private static g(I)I
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x2

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_1a

    move v0, v2

    :goto_8
    :pswitch_8
    return v0

    :pswitch_9
    const/4 v0, 0x0

    goto :goto_8

    :pswitch_b
    move v0, v1

    goto :goto_8

    :pswitch_d
    const/4 v0, 0x4

    goto :goto_8

    :pswitch_f
    const/4 v0, 0x5

    goto :goto_8

    :pswitch_11
    const/4 v0, 0x6

    goto :goto_8

    :pswitch_13
    const/4 v0, 0x7

    goto :goto_8

    :pswitch_15
    move v0, v2

    goto :goto_8

    :pswitch_17
    move v0, v1

    goto :goto_8

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_17
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method

.method public static h()Ljava/lang/String;
    .registers 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    invoke-interface {v0, v2, v4, v5}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-interface {v0, v2, v4, v5}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_32

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    const/16 v2, 0xd

    invoke-interface {v0, v2, v4, v5}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_48

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4d
    const-string v0, "CM-Lib/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Z
    .registers 3

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    if-gtz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private j()Z
    .registers 3

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    if-gtz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private k()V
    .registers 4

    const v2, 0xc0002

    invoke-static {v2, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/j/e;->b:Lcom/coremobility/g/b;

    const/16 v1, 0x3c

    invoke-virtual {v0, v2, v1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private l()V
    .registers 4

    const v2, 0xc0002

    invoke-static {v2, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/j/e;->b:Lcom/coremobility/g/b;

    iget v1, p0, Lcom/coremobility/j/e;->z:I

    invoke-virtual {v0, v2, v1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private m()V
    .registers 9

    const/16 v7, 0xc

    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/coremobility/j/e;->e:[B

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/coremobility/j/e;->r:I

    if-nez v0, :cond_1e

    :cond_13
    iput v6, p0, Lcom/coremobility/j/e;->y:I

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->d()V

    invoke-direct {p0}, Lcom/coremobility/j/e;->k()V

    goto :goto_a

    :cond_1e
    iget v0, p0, Lcom/coremobility/j/e;->x:I

    iget v3, p0, Lcom/coremobility/j/e;->r:I

    if-gt v0, v3, :cond_6d

    move v0, v1

    :goto_25
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/e;->r:I

    iget v3, p0, Lcom/coremobility/j/e;->x:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    iget-object v4, p0, Lcom/coremobility/j/e;->e:[B

    iget v5, p0, Lcom/coremobility/j/e;->x:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/coremobility/j/g;->a([BII)I

    move-result v0

    if-nez v0, :cond_6f

    invoke-direct {p0}, Lcom/coremobility/j/e;->l()V

    const-string v3, "CM+HT send wouldblock"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_43
    iget v3, p0, Lcom/coremobility/j/e;->x:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/coremobility/j/e;->x:I

    iget v0, p0, Lcom/coremobility/j/e;->x:I

    iget v3, p0, Lcom/coremobility/j/e;->r:I

    if-gt v0, v3, :cond_88

    :goto_4e
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/e;->x:I

    iget v1, p0, Lcom/coremobility/j/e;->r:I

    if-ne v0, v1, :cond_67

    iput v2, p0, Lcom/coremobility/j/e;->x:I

    iget v0, p0, Lcom/coremobility/j/e;->q:I

    iget v1, p0, Lcom/coremobility/j/e;->s:I

    if-ge v0, v1, :cond_8a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/e;->e:[B

    iput v2, p0, Lcom/coremobility/j/e;->r:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    :cond_67
    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->e()V

    goto :goto_a

    :cond_6d
    move v0, v2

    goto :goto_25

    :cond_6f
    if-gez v0, :cond_81

    const-string v0, "CM+HT Post err "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x28

    iput v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    goto :goto_a

    :cond_81
    const v3, 0xc0002

    invoke-static {v3, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    goto :goto_43

    :cond_88
    move v1, v2

    goto :goto_4e

    :cond_8a
    iput v6, p0, Lcom/coremobility/j/e;->y:I

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->d()V

    invoke-direct {p0}, Lcom/coremobility/j/e;->k()V

    goto/16 :goto_a
.end method

.method private n()V
    .registers 16

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_15

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_4

    :cond_13
    const/4 v0, 0x0

    goto :goto_c

    :cond_15
    iget v0, p0, Lcom/coremobility/j/e;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/j/e;->p:I

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/j/e;->y:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_29

    iget v1, p0, Lcom/coremobility/j/e;->y:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_29b

    :cond_29
    iget-object v0, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v1, v0, Lcom/coremobility/j/f;->b:I

    iget v0, v0, Lcom/coremobility/j/f;->a:I

    sub-int v0, v1, v0

    if-eqz v0, :cond_29b

    iget-object v1, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v5, v1, Lcom/coremobility/j/f;->a:I

    iget v1, p0, Lcom/coremobility/j/e;->t:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/coremobility/j/e;->u:I

    if-lt v1, v2, :cond_6d

    iget v2, p0, Lcom/coremobility/j/e;->u:I

    if-lez v2, :cond_6d

    const/16 v2, 0x9

    iput v2, p0, Lcom/coremobility/j/e;->y:I

    iget v2, p0, Lcom/coremobility/j/e;->u:I

    if-le v1, v2, :cond_6d

    const/16 v0, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT got extra bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/e;->u:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/j/e;->u:I

    iget v1, p0, Lcom/coremobility/j/e;->t:I

    sub-int/2addr v0, v1

    :cond_6d
    iget-object v1, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_29b

    iget-object v1, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0xfff0

    if-ge v1, v2, :cond_27a

    iget-object v1, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget-object v2, v2, Lcom/coremobility/j/f;->d:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v1, 0x0

    :goto_87
    if-ge v1, v0, :cond_95

    iget-object v2, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget-object v2, v2, Lcom/coremobility/j/f;->d:[B

    add-int v3, v5, v1

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_95
    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes to simple resp c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move v6, v0

    :goto_b7
    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_f0

    iget v0, p0, Lcom/coremobility/j/e;->t:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/coremobility/j/e;->u:I

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_e6

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_e6

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_e6

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v1, 0x29

    if-eq v0, v1, :cond_e6

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_e6

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_f0

    :cond_e6
    invoke-static {}, Lcom/coremobility/f/l;->b()Z

    move-result v0

    if-nez v0, :cond_f0

    const/16 v0, 0x8

    iput v0, p0, Lcom/coremobility/j/e;->w:I

    :cond_f0
    iget-object v0, p0, Lcom/coremobility/j/e;->k:Lcom/coremobility/integration/t;

    if-eqz v0, :cond_2b4

    iget-object v0, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_2b4

    const/16 v1, 0xc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT >cb "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/e;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/e;->u:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_29e

    iget-object v0, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    :goto_12d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/j/e;->k:Lcom/coremobility/integration/t;

    iget v1, p0, Lcom/coremobility/j/e;->w:I

    iget-object v2, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    if-eqz v2, :cond_2a2

    iget-object v2, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    :goto_145
    iget v3, p0, Lcom/coremobility/j/e;->u:I

    iget-object v4, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget-object v4, v4, Lcom/coremobility/j/f;->d:[B

    invoke-interface/range {v0 .. v6}, Lcom/coremobility/integration/t;->a(ILjava/lang/String;I[BII)I

    move-result v0

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT <cb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_16a
    iget v1, p0, Lcom/coremobility/j/e;->y:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_176

    iget v1, p0, Lcom/coremobility/j/e;->y:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_193

    :cond_176
    iget v1, p0, Lcom/coremobility/j/e;->t:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/coremobility/j/e;->t:I

    iget v1, p0, Lcom/coremobility/j/e;->u:I

    if-lez v1, :cond_193

    iget v1, p0, Lcom/coremobility/j/e;->t:I

    iget v2, p0, Lcom/coremobility/j/e;->u:I

    if-gt v1, v2, :cond_2a5

    const/4 v1, 0x1

    :goto_186
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v1, p0, Lcom/coremobility/j/e;->t:I

    iget v2, p0, Lcom/coremobility/j/e;->u:I

    if-ne v1, v2, :cond_193

    const/16 v1, 0xa

    iput v1, p0, Lcom/coremobility/j/e;->y:I

    :cond_193
    iget-object v1, p0, Lcom/coremobility/j/e;->k:Lcom/coremobility/integration/t;

    if-eqz v1, :cond_232

    iget-object v1, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_232

    invoke-direct {p0}, Lcom/coremobility/j/e;->j()Z

    move-result v1

    if-eqz v1, :cond_232

    iget-object v0, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    iget v0, p0, Lcom/coremobility/j/e;->u:I

    if-eq v0, v10, :cond_1c8

    const/16 v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT ig hdr c-len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/j/e;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c8
    const/16 v1, 0xc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT >cb "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/e;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_2a8

    iget-object v0, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    :goto_1f1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/coremobility/j/e;->k:Lcom/coremobility/integration/t;

    iget v8, p0, Lcom/coremobility/j/e;->w:I

    iget-object v0, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_2ac

    iget-object v9, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    :goto_209
    if-lez v10, :cond_2af

    iget-object v0, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    :goto_211
    const/4 v12, 0x0

    move v13, v10

    invoke-interface/range {v7 .. v13}, Lcom/coremobility/integration/t;->a(ILjava/lang/String;I[BII)I

    move-result v0

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT <cb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_232
    invoke-direct {p0}, Lcom/coremobility/j/e;->i()Z

    move-result v1

    if-eqz v1, :cond_23e

    const v1, 0xc0002

    invoke-static {v1, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_23e
    iget-object v1, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    const/4 v2, 0x0

    iput v2, v1, Lcom/coremobility/j/f;->a:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/coremobility/j/f;->b:I

    sub-int v1, v6, v0

    if-lez v1, :cond_272

    move v14, v1

    move v1, v0

    move v0, v14

    :goto_24d
    iget-object v2, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget-object v3, v2, Lcom/coremobility/j/f;->d:[B

    iget-object v2, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v4, v2, Lcom/coremobility/j/f;->b:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v2, Lcom/coremobility/j/f;->b:I

    iget-object v2, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget-object v6, v2, Lcom/coremobility/j/f;->d:[B

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v5

    aget-byte v1, v6, v1

    aput-byte v1, v3, v4

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2b2

    iget-object v0, p0, Lcom/coremobility/j/e;->b:Lcom/coremobility/g/b;

    const v1, 0xc0001

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_272
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->g()V

    invoke-virtual {p0}, Lcom/coremobility/j/e;->d()V

    goto/16 :goto_4

    :cond_27a
    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT resp c too big, ig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_29b
    move v6, v0

    goto/16 :goto_b7

    :cond_29e
    const-string v0, "null"

    goto/16 :goto_12d

    :cond_2a2
    const/4 v2, 0x0

    goto/16 :goto_145

    :cond_2a5
    const/4 v1, 0x0

    goto/16 :goto_186

    :cond_2a8
    const-string v0, "null"

    goto/16 :goto_1f1

    :cond_2ac
    const/4 v9, 0x0

    goto/16 :goto_209

    :cond_2af
    const/4 v11, 0x0

    goto/16 :goto_211

    :cond_2b2
    move v1, v2

    goto :goto_24d

    :cond_2b4
    move v0, v6

    goto/16 :goto_16a
.end method

.method private o()V
    .registers 9

    const v7, 0xc0002

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    invoke-virtual {v0}, Lcom/coremobility/j/f;->a()I

    move-result v0

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    invoke-virtual {v0}, Lcom/coremobility/j/f;->a()I

    move-result v2

    iget v0, p0, Lcom/coremobility/j/e;->u:I

    if-lez v0, :cond_39

    iget v0, p0, Lcom/coremobility/j/e;->u:I

    iget v3, p0, Lcom/coremobility/j/e;->t:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v4, v3, Lcom/coremobility/j/f;->b:I

    iget v3, v3, Lcom/coremobility/j/f;->a:I

    sub-int v3, v4, v3

    sub-int v3, v0, v3

    if-ltz v3, :cond_37

    const/4 v0, 0x1

    :goto_2c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-ge v3, v2, :cond_ba

    move v0, v3

    :goto_32
    if-nez v0, :cond_3a

    iput v5, p0, Lcom/coremobility/j/e;->y:I

    :cond_36
    :goto_36
    return-void

    :cond_37
    move v0, v1

    goto :goto_2c

    :cond_39
    move v0, v2

    :cond_3a
    iget-object v2, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    iget-object v3, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget-object v3, v3, Lcom/coremobility/j/f;->d:[B

    iget-object v4, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v4, v4, Lcom/coremobility/j/f;->b:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/coremobility/j/g;->b([BII)I

    move-result v0

    if-lez v0, :cond_5a

    iget-object v1, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v2, v1, Lcom/coremobility/j/f;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/coremobility/j/f;->b:I

    invoke-static {v7, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :goto_54
    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->f()V

    goto :goto_36

    :cond_5a
    if-nez v0, :cond_67

    invoke-direct {p0}, Lcom/coremobility/j/e;->l()V

    const-string v0, "CM+HT recv wouldblock"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_54

    :cond_67
    const/4 v2, -0x2

    if-ne v0, v2, :cond_8b

    invoke-static {v7, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/j/e;->u:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_88

    iget v0, p0, Lcom/coremobility/j/e;->t:I

    iget-object v2, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v3, v2, Lcom/coremobility/j/f;->b:I

    iget v2, v2, Lcom/coremobility/j/f;->a:I

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/j/e;->u:I

    const-string v0, "CM+HT http done recv no c-len "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_88
    iput v5, p0, Lcom/coremobility/j/e;->y:I

    goto :goto_36

    :cond_8b
    invoke-static {v7, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/j/e;->t:I

    iget-object v2, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v3, v2, Lcom/coremobility/j/f;->b:I

    iget v2, v2, Lcom/coremobility/j/f;->a:I

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    invoke-virtual {v2}, Lcom/coremobility/j/f;->a()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/j/e;->u:I

    iget-object v0, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v2, v0, Lcom/coremobility/j/f;->b:I

    iget-object v3, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    invoke-virtual {v3}, Lcom/coremobility/j/f;->a()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/coremobility/j/f;->b:I

    const-string v0, "CM+HT http recv err "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v5, p0, Lcom/coremobility/j/e;->y:I

    goto/16 :goto_36

    :cond_ba
    move v0, v2

    goto/16 :goto_32
.end method


# virtual methods
.method public final a(ILjava/lang/String;)I
    .registers 14

    const/16 v3, 0x79

    const/16 v10, 0xc

    const/16 v9, 0x110

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    if-nez v0, :cond_2a

    move v0, v1

    :goto_d
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    invoke-static {v2}, Lcom/coremobility/f/m;->a(I)Lcom/coremobility/f/f;

    invoke-static {}, Lcom/coremobility/f/m;->c()[Lcom/coremobility/f/g;

    move-result-object v4

    if-eqz v4, :cond_2c

    move v0, v2

    :goto_1d
    array-length v5, v4

    if-ge v0, v5, :cond_2c

    aget-object v5, v4, v0

    if-eqz v5, :cond_27

    invoke-virtual {v5}, Lcom/coremobility/f/g;->b()V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2a
    move v0, v2

    goto :goto_d

    :cond_2c
    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    invoke-static {v2}, Lcom/coremobility/f/m;->a(I)Lcom/coremobility/f/f;

    invoke-static {}, Lcom/coremobility/f/m;->c()[Lcom/coremobility/f/g;

    move-result-object v5

    if-nez v5, :cond_63

    :cond_38
    :goto_38
    if-lez v3, :cond_91

    const/4 v0, 0x7

    if-ge v3, v0, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+HT CM_NetResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    invoke-static {v2}, Lcom/coremobility/f/m;->a(I)Lcom/coremobility/f/f;

    invoke-static {}, Lcom/coremobility/f/f;->a()V

    invoke-static {v3}, Lcom/coremobility/j/e;->g(I)I

    move-result v2

    :goto_62
    return v2

    :cond_63
    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    invoke-static {}, Lcom/coremobility/integration/e/e;->c()I

    move-result v6

    move v0, v2

    move v4, v2

    :goto_6c
    array-length v7, v5

    if-ge v4, v7, :cond_84

    aget-object v7, v5, v4

    if-eqz v7, :cond_81

    invoke-virtual {v7}, Lcom/coremobility/f/g;->g()I

    move-result v8

    if-ne v8, v6, :cond_81

    invoke-virtual {v7}, Lcom/coremobility/f/g;->h()I

    move-result v0

    if-eqz v0, :cond_12f

    move v3, v0

    move v0, v1

    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    :cond_84
    if-nez v0, :cond_38

    invoke-static {}, Lcom/coremobility/f/m;->b()Lcom/coremobility/f/g;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/coremobility/f/g;->h()I

    move-result v3

    goto :goto_38

    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v1, p0, Lcom/coremobility/j/e;->y:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    iput v1, p0, Lcom/coremobility/j/e;->p:I

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/e;->a:Lcom/coremobility/integration/k;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/e;->b:Lcom/coremobility/g/b;

    new-instance v0, Lcom/coremobility/j/f;

    invoke-direct {v0, p0}, Lcom/coremobility/j/f;-><init>(Lcom/coremobility/j/e;)V

    iput-object v0, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    new-instance v0, Lcom/coremobility/f/l;

    invoke-direct {v0}, Lcom/coremobility/f/l;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/e;->D:Lcom/coremobility/f/l;

    iget-object v0, p0, Lcom/coremobility/j/e;->b:Lcom/coremobility/g/b;

    const/high16 v3, 0xc

    invoke-virtual {v0, v3, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/e;->d:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/e;->i:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/coremobility/j/e;->a:Lcom/coremobility/integration/k;

    const/16 v3, 0x1400

    const/16 v4, 0x2800

    invoke-interface {v0, v3, v2, v4}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    if-lez v0, :cond_12d

    :goto_f1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    invoke-virtual {v1, v0}, Lcom/coremobility/j/f;->a(I)V

    iput p1, p0, Lcom/coremobility/j/e;->m:I

    iput v9, p0, Lcom/coremobility/j/e;->n:I

    iput-object p2, p0, Lcom/coremobility/j/e;->c:Ljava/lang/String;

    iput v2, p0, Lcom/coremobility/j/e;->o:I

    iput v2, p0, Lcom/coremobility/j/e;->q:I

    iput v2, p0, Lcom/coremobility/j/e;->r:I

    iput v2, p0, Lcom/coremobility/j/e;->s:I

    iput v2, p0, Lcom/coremobility/j/e;->t:I

    iput v2, p0, Lcom/coremobility/j/e;->u:I

    iput v2, p0, Lcom/coremobility/j/e;->x:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/coremobility/j/e;->z:I

    iput v2, p0, Lcom/coremobility/j/e;->A:I

    iput v2, p0, Lcom/coremobility/j/e;->B:I

    iput v2, p0, Lcom/coremobility/j/e;->C:I

    iget v0, p0, Lcom/coremobility/j/e;->n:I

    if-lt v0, v9, :cond_122

    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_122
    invoke-static {}, Lcom/coremobility/j/e;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    :cond_12d
    move v1, v2

    goto :goto_f1

    :cond_12f
    move v3, v0

    goto/16 :goto_38
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/coremobility/j/e;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/coremobility/j/e;->i:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final a()V
    .registers 8

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x7

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v3

    monitor-enter v3

    :try_start_a
    iget-object v2, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    if-eqz v2, :cond_14

    invoke-direct {p0}, Lcom/coremobility/j/e;->i()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_14
    monitor-exit v3

    :goto_15
    return-void

    :cond_16
    iget v2, p0, Lcom/coremobility/j/e;->y:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_43

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    const/4 v4, 0x6

    if-gt v2, v4, :cond_43

    move v2, v1

    :goto_21
    if-eqz v2, :cond_26

    const/4 v2, 0x7

    iput v2, p0, Lcom/coremobility/j/e;->y:I

    :cond_26
    iget v2, p0, Lcom/coremobility/j/e;->y:I

    if-eq v2, v5, :cond_2e

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    if-ne v2, v6, :cond_45

    :cond_2e
    move v2, v1

    :goto_2f
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    if-ne v2, v5, :cond_47

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->d()V

    invoke-direct {p0}, Lcom/coremobility/j/e;->k()V

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_40

    goto :goto_15

    :catchall_40
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_43
    move v2, v0

    goto :goto_21

    :cond_45
    move v2, v0

    goto :goto_2f

    :cond_47
    :try_start_47
    invoke-direct {p0}, Lcom/coremobility/j/e;->o()V

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    if-eqz v2, :cond_8a

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    if-eq v2, v5, :cond_68

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    if-eq v2, v6, :cond_68

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    const/16 v4, 0x9

    if-eq v2, v4, :cond_68

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    const/16 v4, 0xa

    if-eq v2, v4, :cond_68

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    const/16 v4, 0xb

    if-ne v2, v4, :cond_69

    :cond_68
    move v0, v1

    :cond_69
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/coremobility/j/e;->i()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v1, v0, Lcom/coremobility/j/f;->b:I

    iget v0, v0, Lcom/coremobility/j/f;->a:I

    sub-int v0, v1, v0

    if-lez v0, :cond_7f

    :cond_7c
    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    :cond_7f
    invoke-direct {p0}, Lcom/coremobility/j/e;->i()Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->f()V

    :cond_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_47 .. :try_end_8b} :catchall_40

    goto :goto_15
.end method

.method public final a(I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    if-nez v0, :cond_3c

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {p1}, Lcom/coremobility/j/e;->g(I)I

    move-result v0

    packed-switch v0, :pswitch_data_5e

    :pswitch_11
    iget v3, p0, Lcom/coremobility/j/e;->y:I

    if-ne v3, v1, :cond_5c

    :goto_15
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/16 v1, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+HT blocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    :goto_3b
    return-void

    :cond_3c
    move v0, v2

    goto :goto_7

    :pswitch_3e
    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    new-instance v0, Lcom/coremobility/j/g;

    iget-object v1, p0, Lcom/coremobility/j/e;->c:Ljava/lang/String;

    iget v2, p0, Lcom/coremobility/j/e;->m:I

    iget v3, p0, Lcom/coremobility/j/e;->z:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/coremobility/j/g;-><init>(Ljava/lang/String;IILcom/coremobility/j/c;)V

    iput-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->start()V

    invoke-direct {p0}, Lcom/coremobility/j/e;->l()V

    goto :goto_3b

    :pswitch_59
    iput-boolean v1, p0, Lcom/coremobility/j/e;->E:Z

    goto :goto_3b

    :cond_5c
    move v1, v2

    goto :goto_15

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_11
        :pswitch_59
    .end packed-switch
.end method

.method public final a(ILjava/lang/Object;II)V
    .registers 9

    const/16 v3, 0xc

    const/16 v2, 0x8

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_88

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    if-ne p2, p0, :cond_8

    invoke-direct {p0}, Lcom/coremobility/j/e;->j()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lcom/coremobility/j/e;->y:I

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/coremobility/j/e;->y:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    :cond_1c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v1, v0, Lcom/coremobility/j/f;->b:I

    iget v0, v0, Lcom/coremobility/j/f;->a:I

    sub-int v0, v1, v0

    if-lez v0, :cond_8

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    goto :goto_8

    :pswitch_2d
    if-ne p2, p0, :cond_8

    invoke-direct {p0}, Lcom/coremobility/j/e;->j()Z

    move-result v1

    if-eqz v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_50
    const-string v1, "CM+HT timeout"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/j/e;->E:Z

    if-eqz v0, :cond_65

    iput v2, p0, Lcom/coremobility/j/e;->w:I

    :goto_5d
    const/16 v0, 0xb

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    goto :goto_8

    :cond_65
    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6f

    const/16 v0, 0x1f

    iput v0, p0, Lcom/coremobility/j/e;->w:I

    goto :goto_5d

    :cond_6f
    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_79

    const/16 v0, 0x34

    iput v0, p0, Lcom/coremobility/j/e;->w:I

    goto :goto_5d

    :cond_79
    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_83

    const/16 v0, 0x2a

    iput v0, p0, Lcom/coremobility/j/e;->w:I

    goto :goto_5d

    :cond_83
    const/16 v0, 0x2b

    iput v0, p0, Lcom/coremobility/j/e;->w:I

    goto :goto_5d

    :pswitch_data_88
    .packed-switch 0xc0001
        :pswitch_9
        :pswitch_2d
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/integration/t;Z)V
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/j/e;->y:I

    if-ne v1, v0, :cond_d

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-object p1, p0, Lcom/coremobility/j/e;->k:Lcom/coremobility/integration/t;

    iput-boolean p2, p0, Lcom/coremobility/j/e;->f:Z

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final a(Lcom/coremobility/j/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/coremobility/j/e;->K:Lcom/coremobility/j/a;

    iput-object p2, p0, Lcom/coremobility/j/e;->J:Ljava/lang/String;

    iput-object p3, p0, Lcom/coremobility/j/e;->I:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/coremobility/j/d;)V
    .registers 6

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/coremobility/j/e;->j()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    monitor-exit v1

    :goto_10
    return-void

    :cond_11
    const v0, 0xc0002

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/coremobility/j/e;->v:Lcom/coremobility/j/d;

    iget v0, p1, Lcom/coremobility/j/d;->a:I

    iput v0, p0, Lcom/coremobility/j/e;->w:I

    iget-object v0, p1, Lcom/coremobility/j/d;->c:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/coremobility/j/e;->i:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/coremobility/j/e;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/coremobility/j/e;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/coremobility/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_b2

    const/16 v0, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT resp c-typ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/j/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_56
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/coremobility/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bd

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/e;->u:I

    const/16 v0, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT resp c-len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/e;->u:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_82
    iget v0, p0, Lcom/coremobility/j/e;->u:I

    if-nez v0, :cond_91

    iget v0, p0, Lcom/coremobility/j/e;->m:I

    if-nez v0, :cond_91

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    :cond_91
    iget v0, p0, Lcom/coremobility/j/e;->u:I

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_a5

    :cond_99
    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_a5

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v2, 0x191

    if-ne v0, v2, :cond_db

    :cond_a5
    const/16 v0, 0xa

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_5 .. :try_end_ad} :catchall_af

    goto/16 :goto_10

    :catchall_af
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_b2
    const/16 v0, 0xc

    :try_start_b4
    const-string v2, "CM+HT no resp c-typ"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_56

    :cond_bd
    const v0, 0x7fffffff

    iput v0, p0, Lcom/coremobility/j/e;->u:I

    const/16 v0, 0xc

    const-string v2, "CM+HT no resp c-len"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_82

    :cond_cd
    const/16 v0, 0x2c

    iput v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    monitor-exit v1

    goto/16 :goto_10

    :cond_db
    const/16 v0, 0x8

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    iget-object v0, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    const/4 v2, 0x0

    iput v2, v0, Lcom/coremobility/j/f;->a:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/coremobility/j/f;->b:I

    invoke-direct {p0}, Lcom/coremobility/j/e;->o()V

    invoke-direct {p0}, Lcom/coremobility/j/e;->i()Z

    move-result v0

    if-nez v0, :cond_fa

    iget-object v0, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget v2, v0, Lcom/coremobility/j/f;->b:I

    iget v0, v0, Lcom/coremobility/j/f;->a:I

    sub-int v0, v2, v0

    if-lez v0, :cond_fd

    :cond_fa
    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    :cond_fd
    monitor-exit v1
    :try_end_fe
    .catchall {:try_start_b4 .. :try_end_fe} :catchall_af

    goto/16 :goto_10
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1a

    :cond_b
    move v0, v2

    :goto_c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p1, :cond_1c

    :goto_11
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1a
    move v0, v1

    goto :goto_c

    :cond_1c
    move v2, v1

    goto :goto_11
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    const-string v0, "V2ymHFg03ehbqgZCaKO6jy"

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v6, v5

    const-string v1, "greeting"

    aput-object v1, v6, v11

    const-string v1, "filename"

    aput-object v1, v6, v2

    new-array v7, v2, [Ljava/lang/String;

    const-string v1, "text/plain"

    aput-object v1, v7, v5

    const-string v1, "audio/amr"

    aput-object v1, v7, v11

    new-array v8, v2, [Ljava/lang/String;

    const-string v1, "8bit"

    aput-object v1, v8, v5

    const-string v1, "binary"

    aput-object v1, v8, v11

    new-array v9, v2, [Ljava/lang/String;

    const-string v1, "US-ASCII"

    aput-object v1, v9, v5

    const-string v1, "ISO-8859-1"

    aput-object v1, v9, v11

    const/4 v1, 0x0

    aget-object v2, v6, v5

    aget-object v3, v7, v5

    aget-object v4, v9, v5

    aget-object v5, v8, v5

    invoke-static/range {v0 .. v5}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, v6, v11

    aget-object v3, v7, v11

    aget-object v4, v9, v11

    aget-object v5, v8, v11

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/e;->G:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/j/e;->G:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iput v0, p0, Lcom/coremobility/j/e;->H:I

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/e;->F:[B

    iget v0, p0, Lcom/coremobility/j/e;->H:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "V2ymHFg03ehbqgZCaKO6jy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/j/e;->b(ILjava/lang/String;)V

    return-void
.end method

.method public final a([BI)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_50

    :cond_b
    move v0, v2

    :goto_c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p1, :cond_52

    move v0, v2

    :goto_12
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-lez p2, :cond_54

    move v0, v2

    :goto_18
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/e;->e:[B

    if-nez v0, :cond_56

    move v0, v2

    :goto_20
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/e;->r:I

    if-nez v0, :cond_58

    :goto_27
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-object p1, p0, Lcom/coremobility/j/e;->e:[B

    iput p2, p0, Lcom/coremobility/j/e;->r:I

    iget v0, p0, Lcom/coremobility/j/e;->q:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/coremobility/j/e;->q:I

    const/16 v0, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT req c-seg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/e;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_50
    move v0, v1

    goto :goto_c

    :cond_52
    move v0, v1

    goto :goto_12

    :cond_54
    move v0, v1

    goto :goto_18

    :cond_56
    move v0, v1

    goto :goto_20

    :cond_58
    move v2, v1

    goto :goto_27
.end method

.method public final b()V
    .registers 5

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/coremobility/j/e;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    monitor-exit v1

    :goto_10
    return-void

    :cond_11
    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_23

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->d()V

    invoke-direct {p0}, Lcom/coremobility/j/e;->k()V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    goto :goto_10

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_23
    :try_start_23
    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4e

    iget-boolean v0, p0, Lcom/coremobility/j/e;->f:Z

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/16 v0, 0xc

    const-string v2, "CM+HT continue cb"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/j/e;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/j/e;->p:I

    iget-boolean v0, p0, Lcom/coremobility/j/e;->f:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/coremobility/j/e;->k:Lcom/coremobility/integration/t;

    invoke-interface {v0}, Lcom/coremobility/integration/t;->a()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->g()V

    :cond_49
    invoke-virtual {p0}, Lcom/coremobility/j/e;->d()V

    monitor-exit v1

    goto :goto_10

    :cond_4e
    invoke-direct {p0}, Lcom/coremobility/j/e;->m()V

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_5a

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    :cond_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_23 .. :try_end_5b} :catchall_20

    goto :goto_10
.end method

.method public final b(I)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {p1}, Lcom/coremobility/j/e;->g(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_46

    :goto_11
    iput v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    move v0, v2

    goto :goto_7

    :sswitch_1d
    iget-boolean v0, p0, Lcom/coremobility/j/e;->E:Z

    if-eqz v0, :cond_1a

    iput-boolean v2, p0, Lcom/coremobility/j/e;->E:Z

    invoke-direct {p0}, Lcom/coremobility/j/e;->l()V

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->c()V

    goto :goto_1a

    :sswitch_2c
    iget-boolean v0, p0, Lcom/coremobility/j/e;->E:Z

    if-nez v0, :cond_1a

    iput-boolean v1, p0, Lcom/coremobility/j/e;->E:Z

    invoke-direct {p0}, Lcom/coremobility/j/e;->l()V

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->b()V

    goto :goto_1a

    :sswitch_3b
    iget-object v1, p0, Lcom/coremobility/j/e;->D:Lcom/coremobility/f/l;

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/coremobility/f/l;->b()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_11

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_1d
        0x2 -> :sswitch_2c
        0x8 -> :sswitch_3b
    .end sparse-switch
.end method

.method public final b(ILjava/lang/String;)V
    .registers 9

    const/4 v5, 0x0

    const-string v0, "Content-Length"

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-static {v1, v2, v5}, Lcom/coremobility/g/l;->a(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_18

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iput p1, p0, Lcom/coremobility/j/e;->s:I

    const/16 v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT req c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/j/e;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    return-void
.end method

.method public final c(I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v3, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    if-eqz v3, :cond_11

    invoke-direct {p0}, Lcom/coremobility/j/e;->j()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_11
    monitor-exit v2

    :goto_12
    return-void

    :cond_13
    iget v3, p0, Lcom/coremobility/j/e;->y:I

    if-le v3, v0, :cond_52

    :goto_17
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/16 v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT netchg cb "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/coremobility/j/e;->w:I

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_54

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v1, 0x2c

    if-ge v0, v1, :cond_54

    const/4 v0, 0x7

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->d()V

    invoke-direct {p0}, Lcom/coremobility/j/e;->k()V

    :goto_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4f

    goto :goto_12

    :catchall_4f
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_52
    move v0, v1

    goto :goto_17

    :cond_54
    const/16 v0, 0xb

    :try_start_56
    iput v0, p0, Lcom/coremobility/j/e;->y:I

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_4f

    goto :goto_4d
.end method

.method public final d()V
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v2

    monitor-enter v2

    :try_start_6
    iget v0, p0, Lcom/coremobility/j/e;->y:I

    if-nez v0, :cond_c

    monitor-exit v2

    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lcom/coremobility/j/e;->p:I

    if-lez v0, :cond_21

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/e;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coremobility/j/e;->p:I

    if-lez v0, :cond_23

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    goto :goto_b

    :catchall_1e
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_21
    move v0, v1

    goto :goto_11

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_1e

    if-eqz v0, :cond_2c

    :try_start_27
    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->a()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_1e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_55

    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object v0, p0, Lcom/coremobility/j/e;->b:Lcom/coremobility/g/b;

    if-eqz v0, :cond_3b

    invoke-static {p0}, Lcom/coremobility/g/b;->a(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/coremobility/g/b;->b(Ljava/lang/Object;)V

    const/high16 v0, 0xc

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    :cond_3b
    iget-object v0, p0, Lcom/coremobility/j/e;->D:Lcom/coremobility/f/l;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/coremobility/j/e;->D:Lcom/coremobility/f/l;

    invoke-virtual {v0}, Lcom/coremobility/f/l;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/e;->D:Lcom/coremobility/f/l;

    :cond_47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/e;->l:Lcom/coremobility/j/f;

    iget-object v0, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_51

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/e;->g:Ljava/io/ByteArrayOutputStream;

    :cond_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_2c .. :try_end_52} :catchall_1e

    iput v1, p0, Lcom/coremobility/j/e;->y:I

    goto :goto_b

    :catch_55
    move-exception v0

    :try_start_56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_1e

    goto :goto_2c
.end method

.method public final d(I)V
    .registers 10

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v3

    monitor-enter v3

    :try_start_8
    iget-object v2, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    if-eqz v2, :cond_12

    invoke-direct {p0}, Lcom/coremobility/j/e;->j()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_12
    monitor-exit v3

    :goto_13
    return-void

    :cond_14
    iget v2, p0, Lcom/coremobility/j/e;->y:I

    if-ne v2, v7, :cond_47

    move v2, v0

    :goto_19
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p1, :cond_49

    const/16 v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT open cb err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/coremobility/j/e;->w:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_44

    goto :goto_13

    :catchall_44
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_47
    move v2, v1

    goto :goto_19

    :cond_49
    const/16 v2, 0xc

    :try_start_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+HT URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/coremobility/j/e;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/coremobility/j/e;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9c

    move v2, v1

    :goto_6f
    if-nez v2, :cond_e3

    const/16 v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT bad url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/j/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    monitor-exit v3

    goto/16 :goto_13

    :cond_9c
    const-string v4, "http://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const/16 v4, 0x2f

    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lez v4, :cond_c0

    const/4 v4, 0x7

    const/16 v5, 0x2f

    const/4 v6, 0x7

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_b9
    const-string v4, "Host"

    invoke-virtual {p0, v4, v2}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto :goto_6f

    :cond_c0
    const-string v4, "https://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e1

    const/16 v4, 0x2f

    const/16 v5, 0x8

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lez v4, :cond_e1

    const/16 v4, 0x8

    const/16 v5, 0x2f

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b9

    :cond_e1
    move v2, v1

    goto :goto_6f

    :cond_e3
    iget-object v2, p0, Lcom/coremobility/j/e;->K:Lcom/coremobility/j/a;

    if-eqz v2, :cond_13b

    iget-object v4, p0, Lcom/coremobility/j/e;->K:Lcom/coremobility/j/a;

    iget-object v5, p0, Lcom/coremobility/j/e;->J:Ljava/lang/String;

    iget-object v6, p0, Lcom/coremobility/j/e;->I:Ljava/lang/String;

    if-eqz v4, :cond_13b

    if-eqz v5, :cond_166

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_166

    move v2, v0

    :goto_f8
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz v6, :cond_168

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_168

    move v2, v0

    :goto_104
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    if-ne v2, v7, :cond_16a

    move v2, v0

    :goto_10c
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v2, v4, Lcom/coremobility/j/a;->u:I

    if-ne v2, v0, :cond_16c

    move v2, v0

    :goto_114
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v2, v4, Lcom/coremobility/j/a;->q:I

    if-eqz v2, :cond_16e

    move v2, v0

    :goto_11c
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v2, v4, Lcom/coremobility/j/a;->q:I

    if-ne v2, v7, :cond_170

    :goto_123
    if-eqz v0, :cond_181

    iget v0, p0, Lcom/coremobility/j/e;->m:I

    packed-switch v0, :pswitch_data_1a2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-string v0, ""

    :goto_130
    iget-object v1, p0, Lcom/coremobility/j/e;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_136
    const-string v1, "Authorization"

    invoke-virtual {p0, v1, v0}, Lcom/coremobility/j/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13b
    const/4 v0, 0x4

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    iget v0, p0, Lcom/coremobility/j/e;->m:I

    packed-switch v0, :pswitch_data_1b0

    :pswitch_143
    const/16 v0, 0x2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplemented Http method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/j/e;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_160
    invoke-direct {p0}, Lcom/coremobility/j/e;->k()V

    monitor-exit v3

    goto/16 :goto_13

    :cond_166
    move v2, v1

    goto :goto_f8

    :cond_168
    move v2, v1

    goto :goto_104

    :cond_16a
    move v2, v1

    goto :goto_10c

    :cond_16c
    move v2, v1

    goto :goto_114

    :cond_16e
    move v2, v1

    goto :goto_11c

    :cond_170
    move v0, v1

    goto :goto_123

    :pswitch_172
    const-string v0, "GET"

    goto :goto_130

    :pswitch_175
    const-string v0, "POST"

    goto :goto_130

    :pswitch_178
    const-string v0, "HEAD"

    goto :goto_130

    :pswitch_17b
    const-string v0, "PUT"

    goto :goto_130

    :pswitch_17e
    const-string v0, "DELETE"

    goto :goto_130

    :cond_181
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_136

    :pswitch_188
    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    iget-object v1, p0, Lcom/coremobility/j/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/coremobility/j/g;->a(Ljava/util/Hashtable;)V

    goto :goto_160

    :pswitch_190
    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    iget-object v1, p0, Lcom/coremobility/j/e;->d:Ljava/util/Hashtable;

    iget v2, p0, Lcom/coremobility/j/e;->s:I

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/j/g;->a(Ljava/util/Hashtable;I)V

    goto :goto_160

    :pswitch_19a
    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    iget-object v1, p0, Lcom/coremobility/j/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/coremobility/j/g;->b(Ljava/util/Hashtable;)V
    :try_end_1a1
    .catchall {:try_start_4b .. :try_end_1a1} :catchall_44

    goto :goto_160

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_172
        :pswitch_175
        :pswitch_178
        :pswitch_17b
        :pswitch_17e
    .end packed-switch

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_188
        :pswitch_190
        :pswitch_143
        :pswitch_190
        :pswitch_19a
    .end packed-switch
.end method

.method public final e()V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    if-ne v0, v1, :cond_1b

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/e;->q:I

    iget v3, p0, Lcom/coremobility/j/e;->s:I

    if-gt v0, v3, :cond_1d

    :goto_10
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/e;->D:Lcom/coremobility/f/l;

    iget v1, p0, Lcom/coremobility/j/e;->o:I

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/f/l;->a(Lcom/coremobility/integration/v;I)V

    return-void

    :cond_1b
    move v0, v2

    goto :goto_7

    :cond_1d
    move v1, v2

    goto :goto_10
.end method

.method public final e(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v3, 0x7

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lcom/coremobility/j/e;->j()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_11
    monitor-exit v1

    :goto_12
    return-void

    :cond_13
    iget v2, p0, Lcom/coremobility/j/e;->y:I

    if-eq v2, v3, :cond_1c

    iget v2, p0, Lcom/coremobility/j/e;->y:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    :cond_1d
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_34

    const/4 v0, 0x7

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->d()V

    invoke-direct {p0}, Lcom/coremobility/j/e;->k()V

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_31

    goto :goto_12

    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_34
    if-nez p1, :cond_47

    const/4 v0, 0x5

    :try_start_37
    iput v0, p0, Lcom/coremobility/j/e;->y:I

    invoke-direct {p0}, Lcom/coremobility/j/e;->m()V

    :goto_3c
    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_45

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    :cond_45
    monitor-exit v1

    goto :goto_12

    :cond_47
    const/16 v0, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT conn cb err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/coremobility/j/e;->w:I

    const/16 v0, 0x12d

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x191

    if-ne p1, v0, :cond_79

    :cond_6c
    const/4 v0, 0x7

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    iget-object v0, p0, Lcom/coremobility/j/e;->j:Lcom/coremobility/j/g;

    invoke-virtual {v0}, Lcom/coremobility/j/g;->d()V

    invoke-direct {p0}, Lcom/coremobility/j/e;->k()V

    monitor-exit v1

    goto :goto_12

    :cond_79
    const/16 v0, 0xb

    iput v0, p0, Lcom/coremobility/j/e;->y:I
    :try_end_7d
    .catchall {:try_start_37 .. :try_end_7d} :catchall_31

    goto :goto_3c
.end method

.method public final f()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v3, 0x7

    if-lt v0, v3, :cond_b

    move v0, v1

    :goto_8
    if-eqz v0, :cond_d

    :cond_a
    :goto_a
    return-void

    :cond_b
    move v0, v2

    goto :goto_8

    :cond_d
    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_37

    move v0, v1

    :goto_13
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/e;->q:I

    iget v3, p0, Lcom/coremobility/j/e;->s:I

    if-gt v0, v3, :cond_39

    move v0, v1

    :goto_1d
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/coremobility/j/e;->y:I

    iget v0, p0, Lcom/coremobility/j/e;->x:I

    if-nez v0, :cond_3b

    :goto_27
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/coremobility/j/e;->m()V

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/coremobility/j/e;->n()V

    goto :goto_a

    :cond_37
    move v0, v2

    goto :goto_13

    :cond_39
    move v0, v2

    goto :goto_1d

    :cond_3b
    move v1, v2

    goto :goto_27
.end method

.method public final f(I)V
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/j/e;->y:I

    if-ne v1, v0, :cond_d

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-lez p1, :cond_c

    iput p1, p0, Lcom/coremobility/j/e;->z:I

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final g()Lcom/coremobility/j/a;
    .registers 8

    const/4 v3, 0x0

    const/16 v6, 0x191

    const/16 v5, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/j/e;->y:I

    const/16 v4, 0x8

    if-lt v0, v4, :cond_45

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    if-eq v0, v6, :cond_1b

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_47

    :cond_1b
    :goto_1b
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-string v0, "WWW-Authenticate"

    invoke-virtual {p0, v0}, Lcom/coremobility/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_64

    iget v0, p0, Lcom/coremobility/j/e;->w:I

    if-ne v0, v6, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+HT no chal in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/j/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_44
    return-object v3

    :cond_45
    move v0, v2

    goto :goto_e

    :cond_47
    move v1, v2

    goto :goto_1b

    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+HT no chal in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/j/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_44

    :cond_64
    new-instance v0, Lcom/coremobility/j/a;

    invoke-direct {v0}, Lcom/coremobility/j/a;-><init>()V

    iget v2, p0, Lcom/coremobility/j/e;->w:I

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/j/a;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_72

    move-object v0, v3

    :cond_72
    move-object v3, v0

    goto :goto_44
.end method
