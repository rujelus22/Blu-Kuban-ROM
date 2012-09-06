.class public final Lo;
.super Lorg/codehaus/jackson/b;


# instance fields
.field protected final c:Lo;

.field protected d:I

.field protected e:I

.field protected f:Ljava/lang/String;

.field protected g:Lo;


# direct methods
.method public constructor <init>(Lo;III)V
    .registers 6

    invoke-direct {p0}, Lorg/codehaus/jackson/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo;->g:Lo;

    iput p2, p0, Lo;->a:I

    iput-object p1, p0, Lo;->c:Lo;

    iput p3, p0, Lo;->d:I

    iput p4, p0, Lo;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lo;->b:I

    return-void
.end method

.method private a(III)V
    .registers 5

    iput p1, p0, Lo;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lo;->b:I

    iput p2, p0, Lo;->d:I

    iput p3, p0, Lo;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(II)Lo;
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lo;->g:Lo;

    if-nez v0, :cond_d

    new-instance v0, Lo;

    invoke-direct {v0, p0, v1, p1, p2}, Lo;-><init>(Lo;III)V

    iput-object v0, p0, Lo;->g:Lo;

    :goto_c
    return-object v0

    :cond_d
    invoke-direct {v0, v1, p1, p2}, Lo;->a(III)V

    goto :goto_c
.end method

.method public final a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;
    .registers 8

    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    const-wide/16 v2, -0x1

    iget v4, p0, Lo;->d:I

    iget v5, p0, Lo;->e:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lo;->f:Ljava/lang/String;

    return-void
.end method

.method public final b(II)Lo;
    .registers 5

    const/4 v1, 0x2

    iget-object v0, p0, Lo;->g:Lo;

    if-nez v0, :cond_d

    new-instance v0, Lo;

    invoke-direct {v0, p0, v1, p1, p2}, Lo;-><init>(Lo;III)V

    iput-object v0, p0, Lo;->g:Lo;

    :goto_c
    return-object v0

    :cond_d
    invoke-direct {v0, v1, p1, p2}, Lo;->a(III)V

    goto :goto_c
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lo;
    .registers 2

    iget-object v0, p0, Lo;->c:Lo;

    return-object v0
.end method

.method public final i()Z
    .registers 3

    iget v0, p0, Lo;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo;->b:I

    iget v1, p0, Lo;->a:I

    if-eqz v1, :cond_e

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x5d

    const/16 v2, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lo;->a:I

    packed-switch v1, :pswitch_data_4a

    :goto_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :pswitch_1b
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    :pswitch_2b
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo;->f:Ljava/lang/String;

    if-eqz v1, :cond_43

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/util/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_43
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3f

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1b
        :pswitch_2b
    .end packed-switch
.end method
