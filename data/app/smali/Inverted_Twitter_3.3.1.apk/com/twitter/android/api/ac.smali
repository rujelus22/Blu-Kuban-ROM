.class public final Lcom/twitter/android/api/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/twitter/android/api/g;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:I

.field public final m:J

.field public final n:I

.field public final o:Lcom/twitter/android/api/aa;

.field public final p:Z

.field public final q:J

.field public final r:I

.field public final s:Lcom/twitter/android/api/PromotedContent;

.field public t:I

.field public u:J

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/android/api/ad;

    invoke-direct {v0}, Lcom/twitter/android/api/ad;-><init>()V

    sput-object v0, Lcom/twitter/android/api/ac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;IJIZIJLcom/twitter/android/api/aa;JILcom/twitter/android/api/PromotedContent;)V
    .registers 29

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/api/ac;->a:J

    iput-object p3, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    if-eqz p6, :cond_66

    const-string v2, "null"

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    :goto_18
    iput p7, p0, Lcom/twitter/android/api/ac;->k:I

    if-eqz p8, :cond_69

    const-string v2, "null"

    invoke-virtual {p8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    :goto_27
    iput p9, p0, Lcom/twitter/android/api/ac;->f:I

    iput-boolean p10, p0, Lcom/twitter/android/api/ac;->h:Z

    iput-boolean p11, p0, Lcom/twitter/android/api/ac;->i:Z

    if-eqz p12, :cond_6c

    const-string v2, "null"

    invoke-virtual {p12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    :goto_3a
    move/from16 v0, p13

    iput v0, p0, Lcom/twitter/android/api/ac;->l:I

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/twitter/android/api/ac;->m:J

    move/from16 v0, p16

    iput v0, p0, Lcom/twitter/android/api/ac;->n:I

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/twitter/android/api/ac;->p:Z

    move/from16 v0, p18

    iput v0, p0, Lcom/twitter/android/api/ac;->t:I

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/twitter/android/api/ac;->q:J

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/twitter/android/api/ac;->o:Lcom/twitter/android/api/aa;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/twitter/android/api/ac;->v:Z

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/twitter/android/api/ac;->u:J

    move/from16 v0, p24

    iput v0, p0, Lcom/twitter/android/api/ac;->r:I

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    return-void

    :cond_66
    iput-object p6, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    goto :goto_18

    :cond_69
    iput-object p8, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    goto :goto_27

    :cond_6c
    iput-object p12, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    goto :goto_3a
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/ac;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/ac;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8d

    move v0, v1

    :goto_3c
    iput-boolean v0, p0, Lcom/twitter/android/api/ac;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8f

    move v0, v1

    :goto_45
    iput-boolean v0, p0, Lcom/twitter/android/api/ac;->i:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/ac;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/api/ac;->m:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/ac;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_91

    :goto_65
    iput-boolean v1, p0, Lcom/twitter/android/api/ac;->p:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/ac;->t:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/api/ac;->q:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/api/ac;->u:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/ac;->r:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    iput-object v0, p0, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/api/ac;->o:Lcom/twitter/android/api/aa;

    iput-boolean v2, p0, Lcom/twitter/android/api/ac;->v:Z

    return-void

    :cond_8d
    move v0, v2

    goto :goto_3c

    :cond_8f
    move v0, v2

    goto :goto_45

    :cond_91
    move v1, v2

    goto :goto_65
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/twitter/android/api/ac;->a:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    goto :goto_6
.end method

.method public final c()Z
    .registers 5

    iget-wide v0, p0, Lcom/twitter/android/api/ac;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/twitter/android/api/ac;

    iget-wide v2, p0, Lcom/twitter/android/api/ac;->m:J

    iget-wide v4, p1, Lcom/twitter/android/api/ac;->m:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget v2, p0, Lcom/twitter/android/api/ac;->r:I

    iget v3, p1, Lcom/twitter/android/api/ac;->r:I

    if-eq v2, v3, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget v2, p0, Lcom/twitter/android/api/ac;->k:I

    iget v3, p1, Lcom/twitter/android/api/ac;->k:I

    if-eq v2, v3, :cond_2f

    move v0, v1

    goto :goto_4

    :cond_2f
    iget v2, p0, Lcom/twitter/android/api/ac;->l:I

    iget v3, p1, Lcom/twitter/android/api/ac;->l:I

    if-eq v2, v3, :cond_37

    move v0, v1

    goto :goto_4

    :cond_37
    iget v2, p0, Lcom/twitter/android/api/ac;->t:I

    iget v3, p1, Lcom/twitter/android/api/ac;->t:I

    if-eq v2, v3, :cond_3f

    move v0, v1

    goto :goto_4

    :cond_3f
    iget-wide v2, p0, Lcom/twitter/android/api/ac;->q:J

    iget-wide v4, p1, Lcom/twitter/android/api/ac;->q:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_49

    move v0, v1

    goto :goto_4

    :cond_49
    iget-boolean v2, p0, Lcom/twitter/android/api/ac;->p:Z

    iget-boolean v3, p1, Lcom/twitter/android/api/ac;->p:Z

    if-eq v2, v3, :cond_51

    move v0, v1

    goto :goto_4

    :cond_51
    iget-boolean v2, p0, Lcom/twitter/android/api/ac;->h:Z

    iget-boolean v3, p1, Lcom/twitter/android/api/ac;->h:Z

    if-eq v2, v3, :cond_59

    move v0, v1

    goto :goto_4

    :cond_59
    iget-wide v2, p0, Lcom/twitter/android/api/ac;->u:J

    iget-wide v4, p1, Lcom/twitter/android/api/ac;->u:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_63

    move v0, v1

    goto :goto_4

    :cond_63
    iget-boolean v2, p0, Lcom/twitter/android/api/ac;->v:Z

    iget-boolean v3, p1, Lcom/twitter/android/api/ac;->v:Z

    if-eq v2, v3, :cond_6b

    move v0, v1

    goto :goto_4

    :cond_6b
    iget v2, p0, Lcom/twitter/android/api/ac;->n:I

    iget v3, p1, Lcom/twitter/android/api/ac;->n:I

    if-eq v2, v3, :cond_73

    move v0, v1

    goto :goto_4

    :cond_73
    iget-wide v2, p0, Lcom/twitter/android/api/ac;->a:J

    iget-wide v4, p1, Lcom/twitter/android/api/ac;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7d

    move v0, v1

    goto :goto_4

    :cond_7d
    iget-boolean v2, p0, Lcom/twitter/android/api/ac;->i:Z

    iget-boolean v3, p1, Lcom/twitter/android/api/ac;->i:Z

    if-eq v2, v3, :cond_85

    move v0, v1

    goto :goto_4

    :cond_85
    iget-object v2, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    :cond_93
    move v0, v1

    goto/16 :goto_4

    :cond_96
    iget-object v2, p1, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    if-nez v2, :cond_93

    :cond_9a
    iget-object v2, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    :cond_a8
    move v0, v1

    goto/16 :goto_4

    :cond_ab
    iget-object v2, p1, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    if-nez v2, :cond_a8

    :cond_af
    iget-object v2, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    if-eqz v2, :cond_c0

    iget-object v2, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c4

    :cond_bd
    move v0, v1

    goto/16 :goto_4

    :cond_c0
    iget-object v2, p1, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    if-nez v2, :cond_bd

    :cond_c4
    iget-object v2, p0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    if-eqz v2, :cond_d5

    iget-object v2, p0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d9

    :cond_d2
    move v0, v1

    goto/16 :goto_4

    :cond_d5
    iget-object v2, p1, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    if-nez v2, :cond_d2

    :cond_d9
    iget-object v2, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    if-eqz v2, :cond_ea

    iget-object v2, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ee

    :cond_e7
    move v0, v1

    goto/16 :goto_4

    :cond_ea
    iget-object v2, p1, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    if-nez v2, :cond_e7

    :cond_ee
    iget v2, p0, Lcom/twitter/android/api/ac;->f:I

    iget v3, p1, Lcom/twitter/android/api/ac;->f:I

    if-eq v2, v3, :cond_f7

    move v0, v1

    goto/16 :goto_4

    :cond_f7
    iget-object v2, p0, Lcom/twitter/android/api/ac;->o:Lcom/twitter/android/api/aa;

    if-eqz v2, :cond_108

    iget-object v2, p0, Lcom/twitter/android/api/ac;->o:Lcom/twitter/android/api/aa;

    iget-object v3, p1, Lcom/twitter/android/api/ac;->o:Lcom/twitter/android/api/aa;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10c

    :cond_105
    move v0, v1

    goto/16 :goto_4

    :cond_108
    iget-object v2, p1, Lcom/twitter/android/api/ac;->o:Lcom/twitter/android/api/aa;

    if-nez v2, :cond_105

    :cond_10c
    iget-object v2, p0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    if-eqz v2, :cond_11d

    iget-object v2, p0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_121

    :cond_11a
    move v0, v1

    goto/16 :goto_4

    :cond_11d
    iget-object v2, p1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    if-nez v2, :cond_11a

    :cond_121
    iget-object v2, p0, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    if-eqz v2, :cond_132

    iget-object v2, p0, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    iget-object v3, p1, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v2, v3}, Lcom/twitter/android/api/PromotedContent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_12f
    move v0, v1

    goto/16 :goto_4

    :cond_132
    iget-object v2, p1, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    if-eqz v2, :cond_4

    goto :goto_12f
.end method

.method public final hashCode()I
    .registers 9

    const/16 v7, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-wide v3, p0, Lcom/twitter/android/api/ac;->a:J

    iget-wide v5, p0, Lcom/twitter/android/api/ac;->a:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_31
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3e
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/ac;->f:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_50
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/android/api/ac;->h:Z

    if-eqz v0, :cond_d4

    move v0, v2

    :goto_58
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/android/api/ac;->i:Z

    if-eqz v0, :cond_d6

    move v0, v2

    :goto_60
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6d
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/ac;->k:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/ac;->l:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/twitter/android/api/ac;->m:J

    iget-wide v5, p0, Lcom/twitter/android/api/ac;->m:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/ac;->n:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/ac;->o:Lcom/twitter/android/api/aa;

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/twitter/android/api/ac;->o:Lcom/twitter/android/api/aa;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_93
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/android/api/ac;->p:Z

    if-eqz v0, :cond_dc

    move v0, v2

    :goto_9b
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/ac;->t:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/ac;->r:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/twitter/android/api/ac;->u:J

    iget-wide v5, p0, Lcom/twitter/android/api/ac;->u:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/twitter/android/api/ac;->v:Z

    if-eqz v3, :cond_de

    :goto_b6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    if-eqz v2, :cond_c3

    iget-object v1, p0, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v1}, Lcom/twitter/android/api/PromotedContent;->hashCode()I

    move-result v1

    :cond_c3
    add-int/2addr v0, v1

    return v0

    :cond_c5
    move v0, v1

    goto/16 :goto_17

    :cond_c8
    move v0, v1

    goto/16 :goto_24

    :cond_cb
    move v0, v1

    goto/16 :goto_31

    :cond_ce
    move v0, v1

    goto/16 :goto_3e

    :cond_d1
    move v0, v1

    goto/16 :goto_50

    :cond_d4
    move v0, v1

    goto :goto_58

    :cond_d6
    move v0, v1

    goto :goto_60

    :cond_d8
    move v0, v1

    goto :goto_6d

    :cond_da
    move v0, v1

    goto :goto_93

    :cond_dc
    move v0, v1

    goto :goto_9b

    :cond_de
    move v2, v1

    goto :goto_b6
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/twitter/android/api/ac;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/twitter/android/api/ac;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twitter/android/api/ac;->h:Z

    if-eqz v0, :cond_6f

    move v0, v1

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twitter/android/api/ac;->i:Z

    if-eqz v0, :cond_71

    move v0, v1

    :goto_37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/twitter/android/api/ac;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/api/ac;->m:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/twitter/android/api/ac;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twitter/android/api/ac;->p:Z

    if-eqz v0, :cond_73

    :goto_52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/api/ac;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/twitter/android/api/ac;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/twitter/android/api/ac;->u:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/twitter/android/api/ac;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void

    :cond_6f
    move v0, v2

    goto :goto_2f

    :cond_71
    move v0, v2

    goto :goto_37

    :cond_73
    move v1, v2

    goto :goto_52
.end method
