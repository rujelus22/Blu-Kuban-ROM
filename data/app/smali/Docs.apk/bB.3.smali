.class LbB;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final a:J

.field private a:LbJ;

.field private a:LbX;

.field a:Lbx;

.field final a:Ljava/lang/String;

.field private a:Z

.field final b:I

.field final b:Ljava/lang/String;

.field private b:Z

.field final c:I

.field final c:Ljava/lang/String;

.field private d:I

.field final d:Ljava/lang/String;

.field private e:I

.field final e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method constructor <init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LbB;->a:J

    iput-object p3, p0, LbB;->a:Ljava/lang/String;

    iput p4, p0, LbB;->d:I

    iput p5, p0, LbB;->f:I

    iput p6, p0, LbB;->g:I

    iput p7, p0, LbB;->h:I

    iput p8, p0, LbB;->i:I

    iput-object p9, p0, LbB;->b:Ljava/lang/String;

    iput-object p10, p0, LbB;->c:Ljava/lang/String;

    iput-object p11, p0, LbB;->d:Ljava/lang/String;

    iput-object p12, p0, LbB;->e:Ljava/lang/String;

    iput p13, p0, LbB;->a:I

    move/from16 v0, p15

    iput v0, p0, LbB;->c:I

    move/from16 v0, p14

    iput v0, p0, LbB;->b:I

    const/4 v1, -0x1

    iput v1, p0, LbB;->j:I

    const/4 v1, 0x0

    iput-boolean v1, p0, LbB;->b:Z

    return-void
.end method

.method constructor <init>(LbB;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p1

    iget-wide v2, v0, LbB;->a:J

    move-object/from16 v0, p1

    iget v5, v0, LbB;->d:I

    move-object/from16 v0, p1

    iget v6, v0, LbB;->f:I

    move-object/from16 v0, p1

    iget v7, v0, LbB;->g:I

    move-object/from16 v0, p1

    iget v8, v0, LbB;->h:I

    move-object/from16 v0, p1

    iget v9, v0, LbB;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, LbB;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, LbB;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, LbB;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, LbB;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v14, v0, LbB;->a:I

    move-object/from16 v0, p1

    iget v15, v0, LbB;->b:I

    move-object/from16 v0, p1

    iget v0, v0, LbB;->c:I

    move/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v16}, LbB;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p1

    iget v1, v0, LbB;->e:I

    move-object/from16 v0, p0

    iput v1, v0, LbB;->e:I

    move-object/from16 v0, p1

    iget v1, v0, LbB;->j:I

    move-object/from16 v0, p0

    iput v1, v0, LbB;->j:I

    move-object/from16 v0, p1

    iget-boolean v1, v0, LbB;->a:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, LbB;->a:Z

    move-object/from16 v0, p1

    iget-boolean v1, v0, LbB;->b:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, LbB;->b:Z

    move-object/from16 v0, p1

    iget-object v1, v0, LbB;->a:Lbx;

    move-object/from16 v0, p0

    iput-object v1, v0, LbB;->a:Lbx;

    move-object/from16 v0, p1

    iget-object v1, v0, LbB;->a:LbX;

    move-object/from16 v0, p0

    iput-object v1, v0, LbB;->a:LbX;

    move-object/from16 v0, p1

    iget-object v1, v0, LbB;->a:LbJ;

    move-object/from16 v0, p0

    iput-object v1, v0, LbB;->a:LbJ;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 25

    const-wide/16 v1, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    invoke-direct/range {v0 .. v15}, LbB;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, LbB;->d:I

    return v0
.end method

.method public a()LbJ;
    .registers 2

    iget-object v0, p0, LbB;->a:LbJ;

    return-object v0
.end method

.method public a()LbX;
    .registers 2

    iget-object v0, p0, LbB;->a:LbX;

    return-object v0
.end method

.method public a()Lbx;
    .registers 2

    iget-object v0, p0, LbB;->a:Lbx;

    return-object v0
.end method

.method a(I)V
    .registers 2

    iput p1, p0, LbB;->d:I

    return-void
.end method

.method public a(LbJ;)V
    .registers 5

    iget-object v0, p0, LbB;->c:Ljava/lang/String;

    const-string v1, "__##GOOGLEITEM##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add an item to an event of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LbB;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iput-object p1, p0, LbB;->a:LbJ;

    return-void
.end method

.method public a(LbX;)V
    .registers 5

    iget-object v0, p0, LbB;->c:Ljava/lang/String;

    const-string v1, "__##GOOGLETRANSACTION##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a transction to an event of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LbB;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iput-object p1, p0, LbB;->a:LbX;

    return-void
.end method

.method public a(Lbx;)V
    .registers 2

    iput-object p1, p0, LbB;->a:Lbx;

    return-void
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, LbB;->a:Z

    return-void
.end method

.method a()Z
    .registers 2

    iget-boolean v0, p0, LbB;->a:Z

    return v0
.end method

.method b()I
    .registers 2

    iget v0, p0, LbB;->e:I

    return v0
.end method

.method b(I)V
    .registers 2

    iput p1, p0, LbB;->e:I

    return-void
.end method

.method b(Z)V
    .registers 2

    iput-boolean p1, p0, LbB;->b:Z

    return-void
.end method

.method b()Z
    .registers 2

    iget-boolean v0, p0, LbB;->b:Z

    return v0
.end method

.method c()I
    .registers 2

    iget v0, p0, LbB;->f:I

    return v0
.end method

.method c(I)V
    .registers 2

    iput p1, p0, LbB;->f:I

    return-void
.end method

.method public c()Z
    .registers 3

    iget v0, p0, LbB;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method d()I
    .registers 2

    iget v0, p0, LbB;->g:I

    return v0
.end method

.method d(I)V
    .registers 2

    iput p1, p0, LbB;->g:I

    return-void
.end method

.method e()I
    .registers 2

    iget v0, p0, LbB;->h:I

    return v0
.end method

.method e(I)V
    .registers 2

    iput p1, p0, LbB;->h:I

    return-void
.end method

.method f()I
    .registers 2

    iget v0, p0, LbB;->i:I

    return v0
.end method

.method f(I)V
    .registers 2

    iput p1, p0, LbB;->i:I

    return-void
.end method

.method g()I
    .registers 2

    iget v0, p0, LbB;->j:I

    return v0
.end method

.method g(I)V
    .registers 2

    iput p1, p0, LbB;->j:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, LbB;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "random:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LbB;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampCurrent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LbB;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampPrevious:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LbB;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LbB;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visits:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LbB;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LbB;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LbB;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LbB;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LbB;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LbB;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LbB;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
