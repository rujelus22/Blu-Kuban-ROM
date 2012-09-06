.class public Lcom/twitter/android/provider/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# instance fields
.field public A:J

.field public B:Z

.field public C:I

.field public D:Lcom/twitter/android/api/u;

.field public E:J

.field public F:Ljava/lang/String;

.field public G:I

.field public H:I

.field public I:Lcom/twitter/android/api/PromotedContent;

.field public J:J

.field public K:Z

.field public L:I

.field public M:[Lcom/twitter/android/api/TweetMedia;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:J

.field public o:J

.field public p:Ljava/lang/String;

.field public q:J

.field public r:Z

.field public s:J

.field public t:I

.field public u:Z

.field public v:D

.field public w:D

.field public x:Z

.field public y:[B

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "g_status_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "author_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "updated_at"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "in_r_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "place_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "protected"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "favorited"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "place_bounding"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "timeline"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "entities"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "tweet_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sender_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "s_username"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ref_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "place_type"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "verified"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "place_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "s_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "r_content"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pc"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "g_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "cards"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/twitter/android/provider/m;->c:[Ljava/lang/String;

    sget-object v0, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    sget-object v1, Lcom/twitter/android/provider/m;->c:[Ljava/lang/String;

    sget-object v2, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/twitter/android/provider/m;->c:[Ljava/lang/String;

    sget-object v1, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "rt_orig_ref_id"

    aput-object v2, v0, v1

    new-instance v0, Lcom/twitter/android/provider/n;

    invoke-direct {v0}, Lcom/twitter/android/provider/n;-><init>()V

    sput-object v0, Lcom/twitter/android/provider/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/twitter/android/provider/m;->j:J

    iput v0, p0, Lcom/twitter/android/provider/m;->t:I

    iput v0, p0, Lcom/twitter/android/provider/m;->C:I

    iput-wide v1, p0, Lcom/twitter/android/provider/m;->E:J

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 5

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/twitter/android/provider/m;->j:J

    iput v0, p0, Lcom/twitter/android/provider/m;->t:I

    iput v0, p0, Lcom/twitter/android/provider/m;->C:I

    iput-wide v1, p0, Lcom/twitter/android/provider/m;->E:J

    invoke-virtual {p0, p1}, Lcom/twitter/android/provider/m;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->j:J

    iput v1, p0, Lcom/twitter/android/provider/m;->t:I

    iput v1, p0, Lcom/twitter/android/provider/m;->C:I

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->E:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->j:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_10d

    move v0, v1

    :goto_40
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_110

    move v0, v1

    :goto_49
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->m:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->n:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->o:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->q:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_113

    move v0, v1

    :goto_6a
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->r:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->s:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/m;->t:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_116

    move v0, v1

    :goto_7f
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->u:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->v:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->w:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_119

    move v0, v1

    :goto_94
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->x:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->y:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_11c

    move v0, v1

    :goto_a3
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->z:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->A:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_11e

    move v0, v1

    :goto_b2
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->B:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/m;->C:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/u;

    iput-object v0, p0, Lcom/twitter/android/provider/m;->D:Lcom/twitter/android/api/u;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->E:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->F:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/m;->G:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/m;->H:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    iput-object v0, p0, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->J:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_120

    :goto_fc
    iput-boolean v1, p0, Lcom/twitter/android/provider/m;->K:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/m;->L:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/api/TweetMedia;

    iput-object v0, p0, Lcom/twitter/android/provider/m;->M:[Lcom/twitter/android/api/TweetMedia;

    return-void

    :cond_10d
    move v0, v2

    goto/16 :goto_40

    :cond_110
    move v0, v2

    goto/16 :goto_49

    :cond_113
    move v0, v2

    goto/16 :goto_6a

    :cond_116
    move v0, v2

    goto/16 :goto_7f

    :cond_119
    move v0, v2

    goto/16 :goto_94

    :cond_11c
    move v0, v2

    goto :goto_a3

    :cond_11e
    move v0, v2

    goto :goto_b2

    :cond_120
    move v1, v2

    goto :goto_fc
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/provider/m;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/twitter/android/provider/m;->g:Ljava/lang/String;

    goto :goto_a
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 10

    const/16 v7, 0xe

    const/16 v6, 0xd

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->q:J

    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->e:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->s:J

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_15d

    move v0, v1

    :goto_26
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->r:Z

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->g:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->h:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->i:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->j:J

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_160

    move v0, v1

    :goto_5d
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->l:Z

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_163

    move v0, v1

    :goto_68
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->m:Z

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->n:J

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->s:J

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->o:J

    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_166

    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_166

    move v0, v1

    :goto_89
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->u:Z

    if-eqz v0, :cond_99

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->v:D

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->w:D

    :cond_99
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->y:[B

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v5, :cond_169

    move v0, v1

    :goto_aa
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->z:Z

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->A:J

    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_16c

    move v0, v1

    :goto_bd
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->B:Z

    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_e6

    new-instance v0, Lcom/twitter/android/api/u;

    const/16 v3, 0x1a

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x18

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/twitter/android/api/u;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/provider/m;->D:Lcom/twitter/android/api/u;

    :cond_e6
    iget-object v0, p0, Lcom/twitter/android/provider/m;->D:Lcom/twitter/android/api/u;

    if-eqz v0, :cond_16f

    iget-object v0, p0, Lcom/twitter/android/provider/m;->D:Lcom/twitter/android/api/u;

    iget-object v0, v0, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    if-eqz v0, :cond_16f

    move v0, v1

    :goto_f1
    iput-boolean v0, p0, Lcom/twitter/android/provider/m;->x:Z

    const-string v0, "rt_orig_ref_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_108

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_108

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->E:J

    :cond_108
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/m;->F:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/m;->G:I

    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/m;->H:I

    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/x;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    iput-object v0, p0, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/m;->J:J

    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_171

    :goto_144
    iput-boolean v1, p0, Lcom/twitter/android/provider/m;->K:Z

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/m;->L:I

    const/16 v0, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/x;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/api/TweetMedia;

    iput-object v0, p0, Lcom/twitter/android/provider/m;->M:[Lcom/twitter/android/api/TweetMedia;

    return-void

    :cond_15d
    move v0, v2

    goto/16 :goto_26

    :cond_160
    move v0, v2

    goto/16 :goto_5d

    :cond_163
    move v0, v2

    goto/16 :goto_68

    :cond_166
    move v0, v2

    goto/16 :goto_89

    :cond_169
    move v0, v2

    goto/16 :goto_aa

    :cond_16c
    move v0, v2

    goto/16 :goto_bd

    :cond_16f
    move v0, v2

    goto :goto_f1

    :cond_171
    move v1, v2

    goto :goto_144
.end method

.method public final a(J)Z
    .registers 7

    iget-wide v0, p0, Lcom/twitter/android/provider/m;->E:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    iget-wide v0, p0, Lcom/twitter/android/provider/m;->q:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/twitter/android/provider/m;->r:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/provider/m;->e:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    goto :goto_a
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/provider/m;->F:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/provider/m;->F:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    goto :goto_6
.end method

.method public final d()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/provider/m;->G:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/provider/m;->G:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
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
    check-cast p1, Lcom/twitter/android/provider/m;

    iget-wide v2, p0, Lcom/twitter/android/provider/m;->s:J

    iget-wide v4, p1, Lcom/twitter/android/provider/m;->s:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v2, p0, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v2, p1, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    move v0, v1

    goto :goto_4

    :cond_33
    iget-object v2, p0, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final f()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/provider/m;->G:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final g()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/provider/m;->H:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final h()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/provider/m;->H:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 6

    iget-wide v0, p0, Lcom/twitter/android/provider/m;->s:J

    iget-wide v2, p0, Lcom/twitter/android/provider/m;->s:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final i()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/provider/m;->G:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final j()Z
    .registers 2

    invoke-virtual {p0}, Lcom/twitter/android/provider/m;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/twitter/android/provider/m;->L:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->h:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->j:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/m;->l:Z

    if-eqz v0, :cond_ce

    move v0, v1

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/m;->m:Z

    if-eqz v0, :cond_d1

    move v0, v1

    :goto_32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->n:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->o:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->q:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/m;->r:Z

    if-eqz v0, :cond_d4

    move v0, v1

    :goto_4e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->s:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/twitter/android/provider/m;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/m;->u:Z

    if-eqz v0, :cond_d7

    move v0, v1

    :goto_60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->v:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->w:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/m;->x:Z

    if-eqz v0, :cond_d9

    move v0, v1

    :goto_72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->y:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/m;->z:Z

    if-eqz v0, :cond_db

    move v0, v1

    :goto_7f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->A:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/m;->B:Z

    if-eqz v0, :cond_dd

    move v0, v1

    :goto_8c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/provider/m;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->D:Lcom/twitter/android/api/u;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->E:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/twitter/android/provider/m;->G:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/provider/m;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-wide v3, p0, Lcom/twitter/android/provider/m;->J:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/m;->K:Z

    if-eqz v0, :cond_df

    :goto_c0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/provider/m;->L:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/provider/m;->M:[Lcom/twitter/android/api/TweetMedia;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void

    :cond_ce
    move v0, v2

    goto/16 :goto_2a

    :cond_d1
    move v0, v2

    goto/16 :goto_32

    :cond_d4
    move v0, v2

    goto/16 :goto_4e

    :cond_d7
    move v0, v2

    goto :goto_60

    :cond_d9
    move v0, v2

    goto :goto_72

    :cond_db
    move v0, v2

    goto :goto_7f

    :cond_dd
    move v0, v2

    goto :goto_8c

    :cond_df
    move v1, v2

    goto :goto_c0
.end method
