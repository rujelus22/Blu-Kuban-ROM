.class final Lcom/google/android/apps/analytics/h;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:I

.field final g:I

.field final h:I

.field i:Lcom/google/android/apps/analytics/e;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Lcom/google/android/apps/analytics/aa;

.field private t:Lcom/google/android/apps/analytics/p;


# direct methods
.method constructor <init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/apps/analytics/h;->a:J

    iput-object p3, p0, Lcom/google/android/apps/analytics/h;->b:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/apps/analytics/h;->j:I

    iput p5, p0, Lcom/google/android/apps/analytics/h;->l:I

    iput p6, p0, Lcom/google/android/apps/analytics/h;->m:I

    iput p7, p0, Lcom/google/android/apps/analytics/h;->n:I

    iput p8, p0, Lcom/google/android/apps/analytics/h;->o:I

    iput-object p9, p0, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/apps/analytics/h;->d:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/apps/analytics/h;->e:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/apps/analytics/h;->f:I

    iput p14, p0, Lcom/google/android/apps/analytics/h;->h:I

    iput p13, p0, Lcom/google/android/apps/analytics/h;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/analytics/h;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/h;->r:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/analytics/h;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/apps/analytics/h;->a:J

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/apps/analytics/h;->j:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/apps/analytics/h;->l:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/apps/analytics/h;->m:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/apps/analytics/h;->n:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/google/android/apps/analytics/h;->o:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/apps/analytics/h;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/apps/analytics/h;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/apps/analytics/h;->f:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/apps/analytics/h;->g:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/apps/analytics/h;->h:I

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/apps/analytics/h;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/apps/analytics/h;->k:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/analytics/h;->k:I

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/apps/analytics/h;->p:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/analytics/h;->p:I

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/google/android/apps/analytics/h;->q:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/analytics/h;->q:Z

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/google/android/apps/analytics/h;->r:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/analytics/h;->r:Z

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/h;->i:Lcom/google/android/apps/analytics/e;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/h;->i:Lcom/google/android/apps/analytics/e;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/h;->s:Lcom/google/android/apps/analytics/aa;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/h;->s:Lcom/google/android/apps/analytics/aa;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/h;->t:Lcom/google/android/apps/analytics/p;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/h;->t:Lcom/google/android/apps/analytics/p;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 23

    const-wide/16 v1, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-direct/range {v0 .. v14}, Lcom/google/android/apps/analytics/h;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/h;->j:I

    return v0
.end method

.method final a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/h;->j:I

    return-void
.end method

.method public final a(Lcom/google/android/apps/analytics/aa;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    const-string v1, "__##GOOGLETRANSACTION##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to add a transction to an event of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/google/android/apps/analytics/h;->s:Lcom/google/android/apps/analytics/aa;

    return-void
.end method

.method public final a(Lcom/google/android/apps/analytics/p;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    const-string v1, "__##GOOGLEITEM##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to add an item to an event of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/google/android/apps/analytics/h;->t:Lcom/google/android/apps/analytics/p;

    return-void
.end method

.method final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/h;->q:Z

    return-void
.end method

.method final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/h;->k:I

    return v0
.end method

.method final b(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/h;->k:I

    return-void
.end method

.method final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/h;->r:Z

    return-void
.end method

.method final c()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/h;->l:I

    return v0
.end method

.method final c(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/h;->l:I

    return-void
.end method

.method final d()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/h;->m:I

    return v0
.end method

.method final d(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/h;->m:I

    return-void
.end method

.method final e()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/h;->n:I

    return v0
.end method

.method final e(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/h;->n:I

    return-void
.end method

.method final f()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/h;->o:I

    return v0
.end method

.method final f(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/h;->o:I

    return-void
.end method

.method final g()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/h;->p:I

    return v0
.end method

.method final g(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/h;->p:I

    return-void
.end method

.method final h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/h;->q:Z

    return v0
.end method

.method final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/h;->r:Z

    return v0
.end method

.method public final j()Lcom/google/android/apps/analytics/aa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->s:Lcom/google/android/apps/analytics/aa;

    return-object v0
.end method

.method public final k()Lcom/google/android/apps/analytics/p;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/h;->t:Lcom/google/android/apps/analytics/p;

    return-object v0
.end method

.method public final l()Z
    .registers 3

    iget v0, p0, Lcom/google/android/apps/analytics/h;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/apps/analytics/h;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " random:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/h;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestampCurrent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/h;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestampPrevious:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/h;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestampFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/h;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visits:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/h;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/h;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
