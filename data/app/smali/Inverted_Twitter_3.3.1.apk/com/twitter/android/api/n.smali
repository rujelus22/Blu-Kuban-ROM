.class public final Lcom/twitter/android/api/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/api/g;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:I

.field public final g:Ljava/util/ArrayList;

.field public final h:I

.field public final i:I

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public final m:I

.field public final n:I

.field public final o:Ljava/util/ArrayList;

.field public final p:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(IJJJIILjava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 21

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twitter/android/api/n;->a:I

    iput-wide p2, p0, Lcom/twitter/android/api/n;->b:J

    iput-wide p4, p0, Lcom/twitter/android/api/n;->c:J

    iput-wide p6, p0, Lcom/twitter/android/api/n;->d:J

    iput p8, p0, Lcom/twitter/android/api/n;->e:I

    iput p9, p0, Lcom/twitter/android/api/n;->f:I

    iput-object p10, p0, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    iput p11, p0, Lcom/twitter/android/api/n;->h:I

    iput p12, p0, Lcom/twitter/android/api/n;->i:I

    iput-object p13, p0, Lcom/twitter/android/api/n;->j:Ljava/util/ArrayList;

    iput-object p14, p0, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/android/api/n;->l:Ljava/util/ArrayList;

    move/from16 v0, p16

    iput v0, p0, Lcom/twitter/android/api/n;->m:I

    move/from16 v0, p17

    iput v0, p0, Lcom/twitter/android/api/n;->n:I

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/twitter/android/api/n;->p:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/twitter/android/api/n;->b:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/twitter/android/api/n;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/android/api/n;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/android/api/n;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/android/api/n;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourcesSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/api/n;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/api/n;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/api/n;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/api/n;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetObjectsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/api/n;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetObjectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/api/n;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
