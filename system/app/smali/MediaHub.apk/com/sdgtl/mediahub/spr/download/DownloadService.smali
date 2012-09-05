.class public Lcom/sdgtl/mediahub/spr/download/DownloadService;
.super Landroid/app/Service;


# static fields
.field private static o:Landroid/content/Context;

.field private static p:Z

.field private static q:Z

.field private static r:I

.field private static s:J

.field private static t:I

.field private static u:I


# instance fields
.field private A:Landroid/content/BroadcastReceiver;

.field public a:Landroid/os/Handler;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field private final f:I

.field private final g:I

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

.field private k:Lcom/sdgtl/mediahub/spr/download/l;

.field private l:Lcom/sdgtl/mediahub/spr/download/m;

.field private m:Lcom/sdgtl/mediahub/spr/download/a;

.field private n:Lcom/sdgtl/mediahub/spr/c/a;

.field private v:J

.field private w:J

.field private x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private y:Z

.field private z:Lcom/sdgtl/mediahub/spr/download/t;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/download/DownloadService;->p:Z

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/download/DownloadService;->q:Z

    sput v3, Lcom/sdgtl/mediahub/spr/download/DownloadService;->r:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->s:J

    sput v3, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    sput v2, Lcom/sdgtl/mediahub/spr/download/DownloadService;->u:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->y:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/d;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/download/d;-><init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->z:Lcom/sdgtl/mediahub/spr/download/t;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/e;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/download/e;-><init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/g;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/download/g;-><init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->A:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/h;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/download/h;-><init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/i;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/download/i;-><init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/j;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/download/j;-><init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/k;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/download/k;-><init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(I)V
    .registers 1

    sput p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->u:I

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->n:Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v2, "Downloading"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/n;

    invoke-direct {v1, p0, p1}, Lcom/sdgtl/mediahub/spr/download/n;-><init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    sget v1, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/n;->a(Z)V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    sget v1, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Product ID - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/n;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    sget v1, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/n;->a(I)V

    const-string v0, "MediaHubAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service - runRequestProcess - info.mP******Id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "order_id"

    iget-wide v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "order_Item_Id"

    iget-wide v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "product_id"

    iget v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "video_attr_type_code"

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->w:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/download/DownloadService;I)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne p1, v0, :cond_1d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/download/DownloadService;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne v0, p1, :cond_2d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/download/DownloadService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->w:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/download/DownloadService;Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->p:Z

    return-void
.end method

.method static synthetic b()J
    .registers 2

    sget-wide v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->s:J

    return-wide v0
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->n:Lcom/sdgtl/mediahub/spr/c/a;

    return-object v0
.end method

.method static synthetic b(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "01"

    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "02"

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/download/DownloadService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->v:J

    return-void
.end method

.method static synthetic c()I
    .registers 1

    sget v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    return v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(I)V
    .registers 1

    sput p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->r:I

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic d()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->o:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->m:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method static synthetic e()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->p:Z

    return v0
.end method

.method static synthetic f()I
    .registers 1

    sget v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->u:I

    return v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/download/DownloadInfo;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    return-object v0
.end method

.method static synthetic g()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->s:J

    return-void
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->k()V

    return-void
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic h()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->q:Z

    return-void
.end method

.method static synthetic i()I
    .registers 1

    sget v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->r:I

    return v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/download/DownloadService;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->w:J

    return-wide v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 14

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->o:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->g:J

    sput-wide v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->s:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {p0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v6, v2

    move v1, v5

    :goto_4f
    if-lt v1, v6, :cond_cc

    :cond_51
    move-wide v1, v3

    :goto_52
    cmp-long v1, v1, v3

    if-nez v1, :cond_58

    iput-boolean v10, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->y:Z

    :cond_58
    if-nez v0, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    sget v2, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a:Landroid/os/Handler;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/n;->a(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    sget v2, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/n;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    sget v2, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/n;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    sget v2, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->j:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->m:Ljava/io/File;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/n;->a(Ljava/io/File;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    sget v2, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/n;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    sget v1, Lcom/sdgtl/mediahub/spr/download/DownloadService;->t:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/n;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/download/n;->start()V

    sput-boolean v10, Lcom/sdgtl/mediahub/spr/download/DownloadService;->q:Z

    sput-boolean v5, Lcom/sdgtl/mediahub/spr/download/DownloadService;->p:Z

    goto/16 :goto_18

    :cond_cc
    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".pyv"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_fe

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".pya"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_fe

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".wmv"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_fe

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".mp4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10b

    :cond_fe
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v0

    move-wide v11, v0

    move-object v0, v2

    move-wide v1, v11

    goto/16 :goto_52

    :cond_10b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4f
.end method

.method static synthetic j()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->q:Z

    return v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/download/DownloadService;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->v:J

    return-wide v0
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)V

    :cond_14
    return-void
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->y:Z

    return v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->y:Z

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_c

    const/4 v1, -0x1

    :cond_b
    return v1

    :cond_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne v0, p1, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final a()V
    .registers 10

    const/4 v3, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    move v2, v3

    :goto_a
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_1c

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->k()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    return-void

    :cond_1c
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->n:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v4, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/c/a;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/DownloadService;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v6, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_7b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->n:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v5, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v6, "Downloadable"

    invoke-static {v5, v1, v6}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    :cond_7b
    if-eqz v4, :cond_85

    const-string v1, "charge_dialog_display_n"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    :cond_85
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ad

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->a()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    iget v4, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne v4, v1, :cond_ad

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/n;->a(Z)V

    :cond_ad
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->h:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v1

    :cond_c2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_a
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->z:Lcom/sdgtl/mediahub/spr/download/t;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->m:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->n:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/sdgtl/mediahub/spr/a/a;->b()I

    move-result v0

    sput v0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->r:I

    :cond_21
    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/l;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/download/l;-><init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->k:Lcom/sdgtl/mediahub/spr/download/l;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->k:Lcom/sdgtl/mediahub/spr/download/l;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/m;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/download/m;-><init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->l:Lcom/sdgtl/mediahub/spr/download/m;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.videoplayer.ACTION_MEDIA_HUB_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.videoplayer.ACTION_MEDIA_HUB_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.stamhubb.PAUSED_POSITION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.videoplayer.PAUSED_POSITION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->l:Lcom/sdgtl/mediahub/spr/download/m;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REGISTRATION_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "update_downloading"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->k:Lcom/sdgtl/mediahub/spr/download/l;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->k:Lcom/sdgtl/mediahub/spr/download/l;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->k:Lcom/sdgtl/mediahub/spr/download/l;

    :cond_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->l:Lcom/sdgtl/mediahub/spr/download/m;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->l:Lcom/sdgtl/mediahub/spr/download/m;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->l:Lcom/sdgtl/mediahub/spr/download/m;

    :cond_17
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->i()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->j()V

    :cond_20
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadService;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
