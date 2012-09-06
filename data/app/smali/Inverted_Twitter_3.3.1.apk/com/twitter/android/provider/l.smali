.class public final Lcom/twitter/android/provider/l;
.super Lcom/twitter/android/provider/m;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final N:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "recipient_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "r_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "r_username"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "r_profile_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sender_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "s_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "s_username"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "s_profile_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "entities"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "thread"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/l;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLandroid/database/Cursor;)V
    .registers 4

    invoke-direct {p0}, Lcom/twitter/android/provider/m;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/provider/l;->N:J

    invoke-virtual {p0, p3}, Lcom/twitter/android/provider/l;->a(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .registers 6

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twitter/android/provider/l;->N:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_52

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/provider/l;->q:J

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/l;->g:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/l;->e:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/l;->k:Ljava/lang/String;

    :goto_27
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/provider/l;->s:J

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/l;->d:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/provider/l;->h:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/l;->y:[B

    iget-wide v0, p0, Lcom/twitter/android/provider/l;->q:J

    iput-wide v0, p0, Lcom/twitter/android/provider/l;->n:J

    iget-wide v0, p0, Lcom/twitter/android/provider/l;->s:J

    iput-wide v0, p0, Lcom/twitter/android/provider/l;->o:J

    iget-object v0, p0, Lcom/twitter/android/provider/l;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/l;->p:Ljava/lang/String;

    return-void

    :cond_52
    iput-wide v0, p0, Lcom/twitter/android/provider/l;->q:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/l;->g:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/l;->e:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/l;->k:Ljava/lang/String;

    goto :goto_27
.end method
