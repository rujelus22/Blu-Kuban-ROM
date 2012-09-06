.class public final Lcom/twitter/android/api/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/api/g;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/twitter/android/api/aa;

.field public l:Z

.field public m:Lcom/twitter/android/api/ac;

.field public final n:Lcom/twitter/android/api/TweetEntities;

.field public final o:I

.field public final p:Lcom/twitter/android/api/u;

.field public final q:Ljava/lang/String;

.field public final r:Lcom/twitter/android/api/PromotedContent;

.field public final s:[Lcom/twitter/android/api/TweetMedia;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/u;Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/TweetEntities;ILjava/lang/String;JLcom/twitter/android/api/PromotedContent;[Lcom/twitter/android/api/TweetMedia;)V
    .registers 27

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/api/aa;->a:J

    iput-object p5, p0, Lcom/twitter/android/api/aa;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/twitter/android/api/aa;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/twitter/android/api/aa;->d:J

    iput-boolean p12, p0, Lcom/twitter/android/api/aa;->l:Z

    iput-wide p8, p0, Lcom/twitter/android/api/aa;->f:J

    iput-wide p10, p0, Lcom/twitter/android/api/aa;->g:J

    iput-object p7, p0, Lcom/twitter/android/api/aa;->h:Ljava/lang/String;

    iput-object p13, p0, Lcom/twitter/android/api/aa;->i:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/twitter/android/api/aa;->j:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    if-eqz p17, :cond_27

    move-object/from16 v0, p17

    iput-wide p3, v0, Lcom/twitter/android/api/ac;->u:J

    :cond_27
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    move/from16 v0, p19

    iput v0, p0, Lcom/twitter/android/api/aa;->o:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/android/api/aa;->p:Lcom/twitter/android/api/u;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/twitter/android/api/aa;->q:Ljava/lang/String;

    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/twitter/android/api/aa;->e:J

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/twitter/android/api/aa;->r:Lcom/twitter/android/api/PromotedContent;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/twitter/android/api/aa;->s:[Lcom/twitter/android/api/TweetMedia;

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    iget-wide v0, v0, Lcom/twitter/android/api/aa;->a:J

    :goto_8
    return-wide v0

    :cond_9
    iget-wide v0, p0, Lcom/twitter/android/api/aa;->a:J

    goto :goto_8
.end method

.method public final b()Lcom/twitter/android/api/aa;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    :cond_6
    return-object p0
.end method

.method public final c()Z
    .registers 3

    const-string v0, "popular"

    iget-object v1, p0, Lcom/twitter/android/api/aa;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/aa;->r:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final e()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/twitter/android/api/aa;->t:Ljava/lang/String;

    if-nez v0, :cond_57

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twitter/android/api/aa;->h:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v1, v1, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Url;

    iget v4, v0, Lcom/twitter/android/api/TweetEntities$Url;->start:I

    sub-int/2addr v4, v1

    iget v5, v0, Lcom/twitter/android/api/TweetEntities$Url;->end:I

    sub-int/2addr v5, v1

    if-ltz v4, :cond_5a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gt v5, v6, :cond_5a

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5a

    invoke-virtual {v2, v4, v5, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    sub-int v0, v5, v0

    add-int/2addr v1, v0

    move v0, v1

    :goto_4f
    move v1, v0

    goto :goto_21

    :cond_51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/aa;->t:Ljava/lang/String;

    :cond_57
    iget-object v0, p0, Lcom/twitter/android/api/aa;->t:Ljava/lang/String;

    goto :goto_b

    :cond_5a
    move v0, v1

    goto :goto_4f
.end method
