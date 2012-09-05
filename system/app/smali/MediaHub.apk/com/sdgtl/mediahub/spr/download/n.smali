.class public final Lcom/sdgtl/mediahub/spr/download/n;
.super Ljava/lang/Thread;


# static fields
.field private static f:Landroid/content/Context;

.field private static g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/io/File;

.field private static j:Ljava/io/File;

.field private static k:Ljava/lang/String;

.field private static l:I

.field private static m:Ljava/io/FileOutputStream;

.field private static n:Ljava/io/BufferedOutputStream;

.field private static o:Z

.field private static p:Ljava/lang/String;

.field private static q:Landroid/os/Handler;

.field private static r:J

.field private static s:J

.field private static t:Ljava/net/HttpURLConnection;

.field private static u:Ljavax/net/ssl/HttpsURLConnection;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->h:Ljava/lang/String;

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->k:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/sdgtl/mediahub/spr/download/n;->l:I

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/download/n;->o:Z

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/high16 v0, 0x8

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/n;->a:I

    const/high16 v0, 0x10

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/n;->b:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/n;->c:I

    const/16 v0, 0x800

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/n;->d:I

    const/high16 v0, 0xa0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/n;->e:I

    sput-object p1, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/download/n;->o:Z

    sput-object p2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    return-void
.end method

.method private static a(IJ)I
    .registers 8

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(IJ)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    if-nez p0, :cond_21

    invoke-static {v0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(IJ)Z

    move-result v1

    if-eqz v1, :cond_2b

    move p0, v0

    :goto_19
    if-ne p0, v2, :cond_2d

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/q;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/download/q;-><init>()V

    throw v0

    :cond_21
    if-ne p0, v0, :cond_2b

    invoke-static {v1, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(IJ)Z

    move-result v3

    if-eqz v3, :cond_2b

    move p0, v1

    goto :goto_19

    :cond_2b
    move p0, v2

    goto :goto_19

    :cond_2d
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->k:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/sdgtl/mediahub/spr/download/n;->a(ILjava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_3d
    return p0
.end method

.method private static a(Ljava/io/File;Z)I
    .registers 11

    const/4 v8, -0x1

    if-eqz p1, :cond_63

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    const-wide/16 v1, 0x0

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->k:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v1

    :cond_44
    if-eqz p1, :cond_66

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    const-wide/32 v6, 0x19000

    add-long/2addr v4, v6

    invoke-static {v4, v5, v3, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(JIJ)I

    move-result v1

    :goto_52
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_62

    if-eq v3, v8, :cond_6f

    if-eq v1, v8, :cond_6f

    if-eq v3, v1, :cond_6f

    invoke-static {v1, p0, v0}, Lcom/sdgtl/mediahub/spr/download/n;->a(ILjava/io/File;Ljava/lang/String;)V

    :cond_62
    :goto_62
    return v1

    :cond_63
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->k:Ljava/lang/String;

    goto :goto_18

    :cond_66
    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-static {v4, v5, v3, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(JIJ)I

    move-result v1

    goto :goto_52

    :cond_6f
    if-ne v3, v8, :cond_62

    const/4 v2, 0x1

    if-ne v1, v2, :cond_62

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v3, v1, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->m:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/n;->h:Ljava/lang/String;

    goto :goto_62
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/sdgtl/mediahub/spr/download/n;->l:I

    return-void
.end method

.method private static a(ILjava/io/File;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v1, p0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->m:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/io/File;Ljava/io/File;)V

    :cond_30
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/n;->h:Ljava/lang/String;

    return-void
.end method

.method private static a(JJ)V
    .registers 8

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p0

    div-long/2addr v0, p2

    long-to-int v0, v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "current"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "total"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "PROGRESS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.sdgtl.mediahub.spr.download.attr_type"

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOADING_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/n;->b(I)V

    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/download/n;->q:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/download/n;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .registers 3

    sput-boolean p0, Lcom/sdgtl/mediahub/spr/download/n;->o:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    return-void
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/sdgtl/mediahub/spr/download/n;->l:I

    return v0
.end method

.method private static b(Ljava/io/File;)I
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/download/n;->a(Ljava/io/File;Z)I

    move-result v0

    if-ne v0, v2, :cond_13

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->h()V

    const/4 v2, 0x3

    :cond_12
    :goto_12
    return v2

    :cond_13
    :try_start_13
    new-instance v0, Ljava/net/URL;

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->c:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v4, "HTTPCLIENTPOOL_UA"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->c:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10a

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    if-eqz v4, :cond_d1

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const-string v5, "User-Agent"

    invoke-virtual {v0, v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_57
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    const-wide/16 v4, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide v6

    sput-wide v6, Lcom/sdgtl/mediahub/spr/download/n;->r:J

    new-instance v6, Ljava/io/BufferedInputStream;

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_79
    .catchall {:try_start_13 .. :try_end_79} :catchall_266
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_79} :catch_dc
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_79} :catch_15c
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_79} :catch_1be
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_79} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_79} :catch_22e

    move-wide v7, v4

    :goto_7a
    const/high16 v0, 0x8

    :try_start_7c
    new-array v0, v0, [B

    new-instance v5, Lorg/apache/http/util/ByteArrayBuffer;

    const/high16 v4, 0x8

    invoke-direct {v5, v4}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_2a6
    .catch Ljava/lang/NullPointerException; {:try_start_7c .. :try_end_85} :catch_2e4
    .catch Ljava/net/MalformedURLException; {:try_start_7c .. :try_end_85} :catch_2d8
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_85} :catch_2cc
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_85} :catch_2c0
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_85} :catch_2b4

    :try_start_85
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v9, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    const-string v10, "rw"

    invoke-direct {v4, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_2aa
    .catch Ljava/lang/NullPointerException; {:try_start_85 .. :try_end_8e} :catch_2ea
    .catch Ljava/net/MalformedURLException; {:try_start_85 .. :try_end_8e} :catch_2dd
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_8e} :catch_2d1
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8e} :catch_2c5
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8e} :catch_2b9

    :try_start_8e
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2f0

    :cond_9b
    :goto_9b
    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-ne v7, v2, :cond_18a

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_ae

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_ae
    .catchall {:try_start_8e .. :try_end_ae} :catchall_2ad
    .catch Ljava/lang/NullPointerException; {:try_start_8e .. :try_end_ae} :catch_1a2
    .catch Ljava/net/MalformedURLException; {:try_start_8e .. :try_end_ae} :catch_2e1
    .catch Ljava/io/FileNotFoundException; {:try_start_8e .. :try_end_ae} :catch_2d5
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_ae} :catch_2c9
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_ae} :catch_2bd

    :cond_ae
    move v0, v1

    :goto_af
    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    :try_start_b2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_29a

    :goto_b5
    :try_start_b5
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_2a0

    :goto_b8
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_c3

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_c3
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_ce

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    :cond_ce
    move v2, v0

    goto/16 :goto_12

    :cond_d1
    :try_start_d1
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "User-Agent"

    const-string v5, "SAMSUNG-Android"

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_d1 .. :try_end_da} :catchall_266
    .catch Ljava/lang/NullPointerException; {:try_start_d1 .. :try_end_da} :catch_dc
    .catch Ljava/net/MalformedURLException; {:try_start_d1 .. :try_end_da} :catch_15c
    .catch Ljava/io/FileNotFoundException; {:try_start_d1 .. :try_end_da} :catch_1be
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_da} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_da} :catch_22e

    goto/16 :goto_57

    :catch_dc
    move-exception v0

    move-object v1, v3

    move-object v4, v3

    move-object v5, v3

    :goto_e0
    :try_start_e0
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_2af

    if-eqz v4, :cond_e8

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    :cond_e8
    if-eqz v1, :cond_ed

    :try_start_ea
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_1a8

    :cond_ed
    :goto_ed
    if-eqz v5, :cond_f2

    :try_start_ef
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_1ae

    :cond_f2
    :goto_f2
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_fd

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_fd
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_12

    :cond_10a
    :try_start_10a
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-eqz v4, :cond_152

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const-string v5, "User-Agent"

    invoke-virtual {v0, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12d
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    const-wide/16 v4, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v6

    sput-wide v6, Lcom/sdgtl/mediahub/spr/download/n;->r:J

    new-instance v6, Ljava/io/BufferedInputStream;

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-wide v7, v4

    goto/16 :goto_7a

    :cond_152
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const-string v4, "User-Agent"

    const-string v5, "SAMSUNG-Android"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15b
    .catchall {:try_start_10a .. :try_end_15b} :catchall_266
    .catch Ljava/lang/NullPointerException; {:try_start_10a .. :try_end_15b} :catch_dc
    .catch Ljava/net/MalformedURLException; {:try_start_10a .. :try_end_15b} :catch_15c
    .catch Ljava/io/FileNotFoundException; {:try_start_10a .. :try_end_15b} :catch_1be
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_15b} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_15b} :catch_22e

    goto :goto_12d

    :catch_15c
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_160
    :try_start_160
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_163
    .catchall {:try_start_160 .. :try_end_163} :catchall_2ad

    if-eqz v5, :cond_168

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    :cond_168
    if-eqz v4, :cond_16d

    :try_start_16a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_1b4

    :cond_16d
    :goto_16d
    if-eqz v6, :cond_172

    :try_start_16f
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_172} :catch_1b9

    :cond_172
    :goto_172
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_17d

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_17d
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_12

    :cond_18a
    const/4 v8, 0x0

    :try_start_18b
    invoke-virtual {v5, v0, v8, v7}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    const/high16 v8, 0x8

    if-lt v7, v8, :cond_9b

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V
    :try_end_1a0
    .catchall {:try_start_18b .. :try_end_1a0} :catchall_2ad
    .catch Ljava/lang/NullPointerException; {:try_start_18b .. :try_end_1a0} :catch_1a2
    .catch Ljava/net/MalformedURLException; {:try_start_18b .. :try_end_1a0} :catch_2e1
    .catch Ljava/io/FileNotFoundException; {:try_start_18b .. :try_end_1a0} :catch_2d5
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_1a0} :catch_2c9
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1a0} :catch_2bd

    goto/16 :goto_9b

    :catch_1a2
    move-exception v0

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_e0

    :catch_1a8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_ed

    :catch_1ae
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f2

    :catch_1b4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16d

    :catch_1b9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_172

    :catch_1be
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_1c2
    :try_start_1c2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1c5
    .catchall {:try_start_1c2 .. :try_end_1c5} :catchall_2ad

    if-eqz v5, :cond_1ca

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    :cond_1ca
    if-eqz v4, :cond_1cf

    :try_start_1cc
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1cf} :catch_1ec

    :cond_1cf
    :goto_1cf
    if-eqz v6, :cond_1d4

    :try_start_1d1
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1d4} :catch_1f1

    :cond_1d4
    :goto_1d4
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1df

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_1df
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_12

    :catch_1ec
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1cf

    :catch_1f1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d4

    :catch_1f6
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_1fa
    :try_start_1fa
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1fd
    .catchall {:try_start_1fa .. :try_end_1fd} :catchall_2ad

    if-eqz v5, :cond_202

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    :cond_202
    if-eqz v4, :cond_207

    :try_start_204
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_207} :catch_224

    :cond_207
    :goto_207
    if-eqz v6, :cond_20c

    :try_start_209
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_20c} :catch_229

    :cond_20c
    :goto_20c
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_217

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_217
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_12

    :catch_224
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_207

    :catch_229
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20c

    :catch_22e
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_232
    :try_start_232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_235
    .catchall {:try_start_232 .. :try_end_235} :catchall_2ad

    if-eqz v5, :cond_23a

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    :cond_23a
    if-eqz v4, :cond_23f

    :try_start_23c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_23c .. :try_end_23f} :catch_25c

    :cond_23f
    :goto_23f
    if-eqz v6, :cond_244

    :try_start_241
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_244
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_244} :catch_261

    :cond_244
    :goto_244
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_24f

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_24f
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_12

    :catch_25c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23f

    :catch_261
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_244

    :catchall_266
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_26a
    if-eqz v5, :cond_26f

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    :cond_26f
    if-eqz v4, :cond_274

    :try_start_271
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_274
    .catch Ljava/io/IOException; {:try_start_271 .. :try_end_274} :catch_290

    :cond_274
    :goto_274
    if-eqz v6, :cond_279

    :try_start_276
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_279
    .catch Ljava/io/IOException; {:try_start_276 .. :try_end_279} :catch_295

    :cond_279
    :goto_279
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_284

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_284
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_28f

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    :cond_28f
    throw v0

    :catch_290
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_274

    :catch_295
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_279

    :catch_29a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b5

    :catch_2a0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b8

    :catchall_2a6
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto :goto_26a

    :catchall_2aa
    move-exception v0

    move-object v4, v3

    goto :goto_26a

    :catchall_2ad
    move-exception v0

    goto :goto_26a

    :catchall_2af
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    goto :goto_26a

    :catch_2b4
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_232

    :catch_2b9
    move-exception v0

    move-object v4, v3

    goto/16 :goto_232

    :catch_2bd
    move-exception v0

    goto/16 :goto_232

    :catch_2c0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_1fa

    :catch_2c5
    move-exception v0

    move-object v4, v3

    goto/16 :goto_1fa

    :catch_2c9
    move-exception v0

    goto/16 :goto_1fa

    :catch_2cc
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_1c2

    :catch_2d1
    move-exception v0

    move-object v4, v3

    goto/16 :goto_1c2

    :catch_2d5
    move-exception v0

    goto/16 :goto_1c2

    :catch_2d8
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_160

    :catch_2dd
    move-exception v0

    move-object v4, v3

    goto/16 :goto_160

    :catch_2e1
    move-exception v0

    goto/16 :goto_160

    :catch_2e4
    move-exception v0

    move-object v1, v3

    move-object v4, v3

    move-object v5, v6

    goto/16 :goto_e0

    :catch_2ea
    move-exception v0

    move-object v1, v3

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_e0

    :cond_2f0
    move v0, v2

    goto/16 :goto_af
.end method

.method private static b(I)V
    .registers 14

    const v12, 0x7f0d00f7

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/16 v9, 0x64

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    new-instance v2, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03003f

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->i:Ljava/lang/String;

    if-eqz v3, :cond_13a

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_121

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v3, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const v3, 0x7f0d00f4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_60
    const v3, 0x7f0d00f5

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0d00f9

    invoke-virtual {v2, v3, v9, v8, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v10, :cond_145

    const v3, 0x7f02007e

    iput v3, v1, Landroid/app/Notification;->icon:I

    :goto_7d
    if-ge p0, v9, :cond_154

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const-class v5, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "fromNotification"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "product_id"

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "parent_product_id"

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->e:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    const/high16 v6, 0x800

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/16 v4, 0x62

    if-le p0, v4, :cond_14c

    const v4, 0x7f0d00fb

    invoke-virtual {v2, v4, v9, p0, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-virtual {v2, v12, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v4, 0x7f0d00f8

    invoke-virtual {v2, v4, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v4, 0x7f0d00fa

    invoke-virtual {v2, v4, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_c9
    const v4, 0x7f0d00f6

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const v6, 0x7f0a00c2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v12, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const v5, 0x7f0a0035

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_120
    return-void

    :cond_121
    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/cx;

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->i:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/sdgtl/mediahub/spr/common/cx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_13a
    const v3, 0x7f0d00f4

    const v4, 0x7f020032

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_60

    :cond_145
    const v3, 0x7f02007d

    iput v3, v1, Landroid/app/Notification;->icon:I

    goto/16 :goto_7d

    :cond_14c
    const v4, 0x7f0d00f9

    invoke-virtual {v2, v4, v9, p0, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto/16 :goto_c9

    :cond_154
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const-class v5, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "fromNotification"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "download_finish"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "product_id"

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "parent_product_id"

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->e:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    const/high16 v6, 0x800

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0d00f6

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const v6, 0x7f0a00c3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v12, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v4, 0x7f0d00f8

    invoke-virtual {v2, v4, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v4, 0x7f0d00fa

    invoke-virtual {v2, v4, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v4, 0x7f0d00fb

    invoke-virtual {v2, v4, v9, v9, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const v5, 0x7f0a0035

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_120
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/download/n;->k:Ljava/lang/String;

    return-void
.end method

.method public static c()I
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    return v0
.end method

.method private static c(Ljava/io/File;)I
    .registers 18

    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v1, 0x0

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/n;->a(Ljava/io/File;Z)I

    move-result v9

    const/4 v1, -0x1

    if-ne v9, v1, :cond_1e

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->h()V

    const/4 v1, 0x3

    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/URL;

    sget-object v6, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v6, v6, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v6, "HTTPCLIENTPOOL_UA"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v7, v7, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->b:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v10, "https"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f9

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/download/n;->o:Z

    if-eqz v1, :cond_91

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/r;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/download/r;-><init>()V

    throw v1
    :try_end_51
    .catchall {:try_start_1e .. :try_end_51} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_51} :catch_51
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e .. :try_end_51} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_1e .. :try_end_51} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_51} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_51} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_1e .. :try_end_51} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_1e .. :try_end_51} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_1e .. :try_end_51} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_1e .. :try_end_51} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_51} :catch_714

    :catch_51
    move-exception v1

    move-object v2, v3

    :goto_53
    :try_start_53
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v1, "NullPointerException"

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_7bb

    const/4 v1, 0x1

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_67

    :try_start_5f
    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_669

    :goto_64
    const/4 v3, 0x0

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_67
    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_73

    :try_start_6b
    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_66f

    :goto_70
    const/4 v3, 0x0

    sput-object v3, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_73
    if-eqz v2, :cond_78

    :try_start_75
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_675

    :cond_78
    :goto_78
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_84

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_84
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto :goto_1d

    :cond_91
    :try_start_91
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v7, 0x7530

    invoke-virtual {v1, v7}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v7, 0x7530

    invoke-virtual {v1, v7}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    if-eqz v6, :cond_1a8

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const-string v7, "User-Agent"

    invoke-virtual {v1, v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ae
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e9

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    sput-wide v6, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const-string v6, "Range"

    const-string v7, "bytes=%s-"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-wide v12, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v6, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    const-wide/16 v10, 0x800

    cmp-long v1, v6, v10

    if-ltz v1, :cond_e9

    const/4 v8, 0x0

    sget-wide v6, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v10, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-static {v6, v7, v10, v11}, Lcom/sdgtl/mediahub/spr/download/n;->a(JJ)V

    :cond_e9
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide v6

    sput-wide v6, Lcom/sdgtl/mediahub/spr/download/n;->r:J

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v1

    int-to-long v6, v1

    new-instance v1, Ljava/io/BufferedInputStream;

    sget-object v10, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/high16 v11, 0x8

    invoke-direct {v1, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_10a
    .catchall {:try_start_91 .. :try_end_10a} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_91 .. :try_end_10a} :catch_51
    .catch Ljava/net/SocketTimeoutException; {:try_start_91 .. :try_end_10a} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_91 .. :try_end_10a} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_10a} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_10a} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_91 .. :try_end_10a} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_91 .. :try_end_10a} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_91 .. :try_end_10a} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_91 .. :try_end_10a} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_10a} :catch_714

    move-object v3, v1

    move-wide v15, v6

    move v6, v8

    move-wide v7, v15

    :goto_10e
    :try_start_10e
    sget-wide v10, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_128

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    sget-object v10, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v10, v10, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v11, "charge_dialog_display_n"

    invoke-static {v1, v10, v11}, Lcom/sdgtl/mediahub/spr/c/a;->c(ILjava/lang/String;Ljava/lang/String;)J

    :cond_128
    sget-wide v10, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v12, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    cmp-long v1, v10, v12

    if-gez v1, :cond_7c1

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    sget-wide v10, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    add-long/2addr v10, v7

    cmp-long v1, v1, v10

    if-gez v1, :cond_156

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_156

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_156

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    :cond_156
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-lez v1, :cond_163

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    sget-wide v10, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    add-long/2addr v7, v10

    iput-wide v7, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    :cond_163
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    if-eqz v1, :cond_17a

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v7, v7, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-static {v1, v2, v7, v8}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;J)J

    :cond_17a
    const/high16 v1, 0x8

    new-array v10, v1, [B

    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/high16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v7, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    const/4 v8, 0x1

    invoke-direct {v2, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    sget-object v7, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    const/high16 v8, 0x10

    invoke-direct {v2, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/download/n;->o:Z

    if-eqz v2, :cond_320

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/r;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/download/r;-><init>()V

    throw v1
    :try_end_1a4
    .catchall {:try_start_10e .. :try_end_1a4} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_10e .. :try_end_1a4} :catch_1a4
    .catch Ljava/net/SocketTimeoutException; {:try_start_10e .. :try_end_1a4} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_10e .. :try_end_1a4} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_10e .. :try_end_1a4} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_1a4} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_10e .. :try_end_1a4} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_10e .. :try_end_1a4} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_10e .. :try_end_1a4} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_10e .. :try_end_1a4} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_1a4} :catch_714

    :catch_1a4
    move-exception v1

    move-object v2, v3

    goto/16 :goto_53

    :cond_1a8
    :try_start_1a8
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    const-string v6, "User-Agent"

    const-string v7, "SAMSUNG-Android"

    invoke-virtual {v1, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b1
    .catchall {:try_start_1a8 .. :try_end_1b1} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_1a8 .. :try_end_1b1} :catch_51
    .catch Ljava/net/SocketTimeoutException; {:try_start_1a8 .. :try_end_1b1} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_1a8 .. :try_end_1b1} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_1a8 .. :try_end_1b1} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1b1} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_1a8 .. :try_end_1b1} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_1a8 .. :try_end_1b1} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_1a8 .. :try_end_1b1} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_1a8 .. :try_end_1b1} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1b1} :catch_714

    goto/16 :goto_ae

    :catch_1b3
    move-exception v1

    :try_start_1b4
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z
    :try_end_1be
    .catchall {:try_start_1b4 .. :try_end_1be} :catchall_763

    move-result v1

    if-eqz v1, :cond_67b

    const/4 v1, 0x2

    :goto_1c2
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_1ce

    :try_start_1c6
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1cb} :catch_67e

    :goto_1cb
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_1ce
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_1da

    :try_start_1d2
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d7} :catch_684

    :goto_1d7
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_1da
    if-eqz v3, :cond_1df

    :try_start_1dc
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1df} :catch_68a

    :cond_1df
    :goto_1df
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_1eb

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_1eb
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :cond_1f9
    :try_start_1f9
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/download/n;->o:Z

    if-eqz v1, :cond_24b

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/r;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/download/r;-><init>()V

    throw v1
    :try_end_20b
    .catchall {:try_start_1f9 .. :try_end_20b} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_1f9 .. :try_end_20b} :catch_51
    .catch Ljava/net/SocketTimeoutException; {:try_start_1f9 .. :try_end_20b} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_1f9 .. :try_end_20b} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_1f9 .. :try_end_20b} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_20b} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_1f9 .. :try_end_20b} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_1f9 .. :try_end_20b} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_1f9 .. :try_end_20b} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_1f9 .. :try_end_20b} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_20b} :catch_714

    :catch_20b
    move-exception v1

    :try_start_20c
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-string v1, "MalformedURLException"

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;
    :try_end_213
    .catchall {:try_start_20c .. :try_end_213} :catchall_763

    const/4 v1, 0x1

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_220

    :try_start_218
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_21d} :catch_690

    :goto_21d
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_220
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_22c

    :try_start_224
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_229
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_229} :catch_696

    :goto_229
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_22c
    if-eqz v3, :cond_231

    :try_start_22e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_231
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_231} :catch_69c

    :cond_231
    :goto_231
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_23d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_23d
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :cond_24b
    :try_start_24b
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const/16 v7, 0x7530

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const/16 v7, 0x7530

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-eqz v6, :cond_2ca

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const-string v7, "User-Agent"

    invoke-virtual {v1, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_268
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a3

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    sput-wide v6, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const-string v6, "Range"

    const-string v7, "bytes=%s-"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-wide v12, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v6, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    const-wide/16 v10, 0x800

    cmp-long v1, v6, v10

    if-ltz v1, :cond_2a3

    const/4 v8, 0x0

    sget-wide v6, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v10, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-static {v6, v7, v10, v11}, Lcom/sdgtl/mediahub/spr/download/n;->a(JJ)V

    :cond_2a3
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v6

    sput-wide v6, Lcom/sdgtl/mediahub/spr/download/n;->r:J

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v6, v1

    new-instance v1, Ljava/io/BufferedInputStream;

    sget-object v10, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/high16 v11, 0x8

    invoke-direct {v1, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v3, v1

    move-wide v15, v6

    move v6, v8

    move-wide v7, v15

    goto/16 :goto_10e

    :cond_2ca
    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    const-string v6, "User-Agent"

    const-string v7, "SAMSUNG-Android"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d3
    .catchall {:try_start_24b .. :try_end_2d3} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_24b .. :try_end_2d3} :catch_51
    .catch Ljava/net/SocketTimeoutException; {:try_start_24b .. :try_end_2d3} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_24b .. :try_end_2d3} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_24b .. :try_end_2d3} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_24b .. :try_end_2d3} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_24b .. :try_end_2d3} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_24b .. :try_end_2d3} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_24b .. :try_end_2d3} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_24b .. :try_end_2d3} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_2d3} :catch_714

    goto :goto_268

    :catch_2d4
    move-exception v1

    :try_start_2d5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string v2, "FileNotFoundException"

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Read-only file system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2e5
    .catchall {:try_start_2d5 .. :try_end_2e5} :catchall_763

    move-result v1

    if-eqz v1, :cond_6a2

    const/4 v1, 0x2

    :goto_2e9
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_2f5

    :try_start_2ed
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2f2
    .catch Ljava/io/IOException; {:try_start_2ed .. :try_end_2f2} :catch_6a5

    :goto_2f2
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_2f5
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_301

    :try_start_2f9
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2fe
    .catch Ljava/io/IOException; {:try_start_2f9 .. :try_end_2fe} :catch_6ab

    :goto_2fe
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_301
    if-eqz v3, :cond_306

    :try_start_303
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_306
    .catch Ljava/io/IOException; {:try_start_303 .. :try_end_306} :catch_6b1

    :cond_306
    :goto_306
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_312

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_312
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :cond_320
    :try_start_320
    sget-wide v7, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    const-wide/16 v11, 0x64

    mul-long/2addr v7, v11

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v11, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    div-long/2addr v7, v11

    long-to-int v2, v7

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/d/b;->b(I)I

    move-result v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v7, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    const-wide/16 v11, 0x0

    cmp-long v2, v7, v11

    if-lez v2, :cond_620

    const-string v2, "MediaHubAPP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloadMovie - Movie download start !!! - mContentFileSize = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v11, v8, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v7, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    sget-wide v11, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sub-long/2addr v7, v11

    invoke-static {v9, v7, v8}, Lcom/sdgtl/mediahub/spr/download/n;->a(IJ)I

    move-result v2

    move v7, v6

    move v8, v2

    move-object v6, v1

    :cond_362
    :goto_362
    invoke-virtual {v3, v10}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_620

    sget-wide v11, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    int-to-long v13, v1

    add-long/2addr v11, v13

    sput-wide v11, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    if-eqz v7, :cond_4d0

    const/4 v2, 0x0

    invoke-virtual {v6, v10, v2, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v1

    const/high16 v2, 0xa0

    if-le v1, v2, :cond_3c9

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/p;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/download/p;-><init>()V

    throw v1
    :try_end_383
    .catchall {:try_start_320 .. :try_end_383} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_320 .. :try_end_383} :catch_1a4
    .catch Ljava/net/SocketTimeoutException; {:try_start_320 .. :try_end_383} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_320 .. :try_end_383} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_320 .. :try_end_383} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_320 .. :try_end_383} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_320 .. :try_end_383} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_320 .. :try_end_383} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_320 .. :try_end_383} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_320 .. :try_end_383} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_320 .. :try_end_383} :catch_714

    :catch_383
    move-exception v1

    :try_start_384
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z
    :try_end_38e
    .catchall {:try_start_384 .. :try_end_38e} :catchall_763

    move-result v1

    if-eqz v1, :cond_6b7

    const/4 v1, 0x2

    :goto_392
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_39e

    :try_start_396
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_39b
    .catch Ljava/io/IOException; {:try_start_396 .. :try_end_39b} :catch_6ba

    :goto_39b
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_39e
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_3aa

    :try_start_3a2
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a7
    .catch Ljava/io/IOException; {:try_start_3a2 .. :try_end_3a7} :catch_6c0

    :goto_3a7
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_3aa
    if-eqz v3, :cond_3af

    :try_start_3ac
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3af
    .catch Ljava/io/IOException; {:try_start_3ac .. :try_end_3af} :catch_6c6

    :cond_3af
    :goto_3af
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_3bb

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_3bb
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :cond_3c9
    :try_start_3c9
    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v1

    const/16 v2, 0x800

    if-lt v1, v2, :cond_362

    const-string v1, ""

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v11

    const/4 v9, 0x0

    const/16 v2, 0x400

    :goto_3da
    const/16 v12, 0x800

    if-lt v2, v12, :cond_451

    move v2, v9

    :cond_3df
    if-lez v2, :cond_362

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    sget-object v7, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v12, v7, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->g:J

    invoke-static {v1, v12, v13}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;J)[B

    move-result-object v7

    if-eqz v7, :cond_482

    const/4 v1, 0x0

    :goto_3f0
    array-length v9, v7

    if-lt v1, v9, :cond_475

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    sget-wide v12, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sub-long/2addr v1, v12

    invoke-static {v8, v1, v2}, Lcom/sdgtl/mediahub/spr/download/n;->a(IJ)I

    move-result v7

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v11}, Ljava/io/BufferedOutputStream;->write([B)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "order_id"

    sget-object v8, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v8, v8, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->g:J

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "pricing_type_code"

    sget-object v8, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v8, v8, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->n:Ljava/lang/String;

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "current"

    sget-wide v8, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "total"

    sget-object v8, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v8, v8, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v6, Landroid/content/Intent;

    const-string v8, "update_downloading"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-wide v8, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v11, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-static {v8, v9, v11, v12}, Lcom/sdgtl/mediahub/spr/download/n;->a(JJ)V

    const/4 v2, 0x0

    move-object v6, v1

    move v8, v7

    move v7, v2

    goto/16 :goto_362

    :cond_451
    const-string v12, "<muid>"

    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3df

    aget-byte v12, v11, v2

    if-eqz v12, :cond_471

    aget-byte v12, v11, v2

    int-to-char v12, v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_471
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3da

    :cond_475
    shl-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x1

    aget-byte v12, v7, v1

    aput-byte v12, v11, v9

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3f0

    :cond_482
    new-instance v1, Lcom/sdgtl/mediahub/spr/download/p;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/download/p;-><init>()V

    throw v1
    :try_end_488
    .catchall {:try_start_3c9 .. :try_end_488} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_3c9 .. :try_end_488} :catch_1a4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3c9 .. :try_end_488} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_3c9 .. :try_end_488} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_3c9 .. :try_end_488} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_3c9 .. :try_end_488} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_3c9 .. :try_end_488} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_3c9 .. :try_end_488} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_3c9 .. :try_end_488} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_3c9 .. :try_end_488} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_3c9 .. :try_end_488} :catch_714

    :catch_488
    move-exception v1

    :try_start_489
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/r;->a(Lcom/sdgtl/mediahub/spr/download/r;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_498

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/download/r;->a(Lcom/sdgtl/mediahub/spr/download/r;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;

    const/4 v1, 0x2

    sput v1, Lcom/sdgtl/mediahub/spr/download/n;->l:I
    :try_end_498
    .catchall {:try_start_489 .. :try_end_498} :catchall_763

    :cond_498
    const/4 v1, 0x1

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_4a5

    :try_start_49d
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4a2
    .catch Ljava/io/IOException; {:try_start_49d .. :try_end_4a2} :catch_6cc

    :goto_4a2
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_4a5
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4b1

    :try_start_4a9
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4ae
    .catch Ljava/io/IOException; {:try_start_4a9 .. :try_end_4ae} :catch_6d2

    :goto_4ae
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_4b1
    if-eqz v3, :cond_4b6

    :try_start_4b3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4b6
    .catch Ljava/io/IOException; {:try_start_4b3 .. :try_end_4b6} :catch_6d8

    :cond_4b6
    :goto_4b6
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_4c2

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_4c2
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :cond_4d0
    :try_start_4d0
    sget-boolean v2, Lcom/sdgtl/mediahub/spr/download/n;->o:Z

    if-eqz v2, :cond_51d

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/r;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/download/r;-><init>()V

    throw v1
    :try_end_4da
    .catchall {:try_start_4d0 .. :try_end_4da} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_4d0 .. :try_end_4da} :catch_1a4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4d0 .. :try_end_4da} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_4d0 .. :try_end_4da} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_4d0 .. :try_end_4da} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_4d0 .. :try_end_4da} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_4d0 .. :try_end_4da} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_4d0 .. :try_end_4da} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_4d0 .. :try_end_4da} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_4d0 .. :try_end_4da} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_4d0 .. :try_end_4da} :catch_714

    :catch_4da
    move-exception v1

    :try_start_4db
    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/download/o;->printStackTrace()V

    const-string v1, "DownloadFileNotExistException"

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;

    const/4 v1, 0x2

    sput v1, Lcom/sdgtl/mediahub/spr/download/n;->l:I
    :try_end_4e5
    .catchall {:try_start_4db .. :try_end_4e5} :catchall_763

    const/4 v1, 0x1

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_4f2

    :try_start_4ea
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4ef
    .catch Ljava/io/IOException; {:try_start_4ea .. :try_end_4ef} :catch_6de

    :goto_4ef
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_4f2
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4fe

    :try_start_4f6
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4fb
    .catch Ljava/io/IOException; {:try_start_4f6 .. :try_end_4fb} :catch_6e4

    :goto_4fb
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_4fe
    if-eqz v3, :cond_503

    :try_start_500
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_503
    .catch Ljava/io/IOException; {:try_start_500 .. :try_end_503} :catch_6ea

    :cond_503
    :goto_503
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_50f

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_50f
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :cond_51d
    :try_start_51d
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_56a

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/o;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/download/o;-><init>()V

    throw v1
    :try_end_52b
    .catchall {:try_start_51d .. :try_end_52b} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_51d .. :try_end_52b} :catch_1a4
    .catch Ljava/net/SocketTimeoutException; {:try_start_51d .. :try_end_52b} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_51d .. :try_end_52b} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_51d .. :try_end_52b} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_51d .. :try_end_52b} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_51d .. :try_end_52b} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_51d .. :try_end_52b} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_51d .. :try_end_52b} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_51d .. :try_end_52b} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_51d .. :try_end_52b} :catch_714

    :catch_52b
    move-exception v1

    :try_start_52c
    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/download/q;->printStackTrace()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/n;->h()V
    :try_end_532
    .catchall {:try_start_52c .. :try_end_532} :catchall_763

    const/4 v1, 0x3

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_53f

    :try_start_537
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_53c
    .catch Ljava/io/IOException; {:try_start_537 .. :try_end_53c} :catch_6f0

    :goto_53c
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_53f
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_54b

    :try_start_543
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_548
    .catch Ljava/io/IOException; {:try_start_543 .. :try_end_548} :catch_6f6

    :goto_548
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_54b
    if-eqz v3, :cond_550

    :try_start_54d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_550
    .catch Ljava/io/IOException; {:try_start_54d .. :try_end_550} :catch_6fc

    :cond_550
    :goto_550
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_55c

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_55c
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :cond_56a
    :try_start_56a
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v11, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    sget-wide v13, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sub-long/2addr v11, v13

    invoke-static {v8, v11, v12}, Lcom/sdgtl/mediahub/spr/common/gk;->a(IJ)Z

    move-result v2

    if-nez v2, :cond_5bd

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/q;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/download/q;-><init>()V

    throw v1
    :try_end_57d
    .catchall {:try_start_56a .. :try_end_57d} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_56a .. :try_end_57d} :catch_1a4
    .catch Ljava/net/SocketTimeoutException; {:try_start_56a .. :try_end_57d} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_56a .. :try_end_57d} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_56a .. :try_end_57d} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_56a .. :try_end_57d} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_56a .. :try_end_57d} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_56a .. :try_end_57d} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_56a .. :try_end_57d} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_56a .. :try_end_57d} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_56a .. :try_end_57d} :catch_714

    :catch_57d
    move-exception v1

    :try_start_57e
    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/download/p;->printStackTrace()V

    const-string v1, "MuidMakingFailException"

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;
    :try_end_585
    .catchall {:try_start_57e .. :try_end_585} :catchall_763

    const/4 v1, 0x1

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_592

    :try_start_58a
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_58f
    .catch Ljava/io/IOException; {:try_start_58a .. :try_end_58f} :catch_702

    :goto_58f
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_592
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_59e

    :try_start_596
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_59b
    .catch Ljava/io/IOException; {:try_start_596 .. :try_end_59b} :catch_708

    :goto_59b
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_59e
    if-eqz v3, :cond_5a3

    :try_start_5a0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5a3
    .catch Ljava/io/IOException; {:try_start_5a0 .. :try_end_5a3} :catch_70e

    :cond_5a3
    :goto_5a3
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_5af

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_5af
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :cond_5bd
    :try_start_5bd
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    const/4 v9, 0x0

    invoke-virtual {v2, v10, v9, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    const-wide/16 v11, 0xbb8

    cmp-long v1, v1, v11

    if-lez v1, :cond_362

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "order_id"

    sget-object v9, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v11, v9, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->g:J

    invoke-virtual {v4, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "pricing_type_code"

    sget-object v9, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v9, v9, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->n:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "current"

    sget-wide v11, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    invoke-virtual {v4, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "total"

    sget-object v9, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v11, v9, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-virtual {v4, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Landroid/content/Intent;

    const-string v9, "update_downloading"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-wide v4, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sget-object v9, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v11, v9, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    invoke-static {v4, v5, v11, v12}, Lcom/sdgtl/mediahub/spr/download/n;->a(JJ)V

    sget-wide v4, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sget-object v9, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v11, v9, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    cmp-long v4, v4, v11

    if-lez v4, :cond_7be

    :cond_620
    const-string v1, "MediaHubAPP"

    const-string v2, "downloadMovie - Movie download completed !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    sget-wide v4, Lcom/sdgtl/mediahub/spr/download/n;->s:J
    :try_end_62d
    .catchall {:try_start_5bd .. :try_end_62d} :catchall_763
    .catch Ljava/lang/NullPointerException; {:try_start_5bd .. :try_end_62d} :catch_1a4
    .catch Ljava/net/SocketTimeoutException; {:try_start_5bd .. :try_end_62d} :catch_1b3
    .catch Ljava/net/MalformedURLException; {:try_start_5bd .. :try_end_62d} :catch_20b
    .catch Ljava/io/FileNotFoundException; {:try_start_5bd .. :try_end_62d} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_5bd .. :try_end_62d} :catch_383
    .catch Lcom/sdgtl/mediahub/spr/download/r; {:try_start_5bd .. :try_end_62d} :catch_488
    .catch Lcom/sdgtl/mediahub/spr/download/o; {:try_start_5bd .. :try_end_62d} :catch_4da
    .catch Lcom/sdgtl/mediahub/spr/download/q; {:try_start_5bd .. :try_end_62d} :catch_52b
    .catch Lcom/sdgtl/mediahub/spr/download/p; {:try_start_5bd .. :try_end_62d} :catch_57d
    .catch Ljava/lang/Exception; {:try_start_5bd .. :try_end_62d} :catch_714

    cmp-long v1, v1, v4

    if-gtz v1, :cond_667

    const/4 v1, 0x0

    :goto_632
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_63e

    :try_start_636
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_63b
    .catch Ljava/io/IOException; {:try_start_636 .. :try_end_63b} :catch_7a9

    :goto_63b
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_63e
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_64a

    :try_start_642
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_647
    .catch Ljava/io/IOException; {:try_start_642 .. :try_end_647} :catch_7af

    :goto_647
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_64a
    :try_start_64a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_64d
    .catch Ljava/io/IOException; {:try_start_64a .. :try_end_64d} :catch_7b5

    :goto_64d
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_659

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_659
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :cond_667
    const/4 v1, 0x2

    goto :goto_632

    :catch_669
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_64

    :catch_66f
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_70

    :catch_675
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_78

    :cond_67b
    const/4 v1, 0x1

    goto/16 :goto_1c2

    :catch_67e
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1cb

    :catch_684
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1d7

    :catch_68a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1df

    :catch_690
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_21d

    :catch_696
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_229

    :catch_69c
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_231

    :cond_6a2
    const/4 v1, 0x1

    goto/16 :goto_2e9

    :catch_6a5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2f2

    :catch_6ab
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2fe

    :catch_6b1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_306

    :cond_6b7
    const/4 v1, 0x1

    goto/16 :goto_392

    :catch_6ba
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_39b

    :catch_6c0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3a7

    :catch_6c6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3af

    :catch_6cc
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4a2

    :catch_6d2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4ae

    :catch_6d8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4b6

    :catch_6de
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4ef

    :catch_6e4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4fb

    :catch_6ea
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_503

    :catch_6f0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_53c

    :catch_6f6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_548

    :catch_6fc
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_550

    :catch_702
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_58f

    :catch_708
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_59b

    :catch_70e
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5a3

    :catch_714
    move-exception v1

    :try_start_715
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "Exception"

    sput-object v1, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;
    :try_end_71c
    .catchall {:try_start_715 .. :try_end_71c} :catchall_763

    const/4 v1, 0x1

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_729

    :try_start_721
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_726
    .catch Ljava/io/IOException; {:try_start_721 .. :try_end_726} :catch_754

    :goto_726
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_729
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_735

    :try_start_72d
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_732
    .catch Ljava/io/IOException; {:try_start_72d .. :try_end_732} :catch_759

    :goto_732
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_735
    if-eqz v3, :cond_73a

    :try_start_737
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_73a
    .catch Ljava/io/IOException; {:try_start_737 .. :try_end_73a} :catch_75e

    :cond_73a
    :goto_73a
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_746

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_746
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :catch_754
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_726

    :catch_759
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_732

    :catch_75e
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_73a

    :catchall_763
    move-exception v1

    :goto_764
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_770

    :try_start_768
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_76d
    .catch Ljava/io/IOException; {:try_start_768 .. :try_end_76d} :catch_79a

    :goto_76d
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->n:Ljava/io/BufferedOutputStream;

    :cond_770
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_77c

    :try_start_774
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_779
    .catch Ljava/io/IOException; {:try_start_774 .. :try_end_779} :catch_79f

    :goto_779
    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->m:Ljava/io/FileOutputStream;

    :cond_77c
    if-eqz v3, :cond_781

    :try_start_77e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_781
    .catch Ljava/io/IOException; {:try_start_77e .. :try_end_781} :catch_7a4

    :cond_781
    :goto_781
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_78d

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->u:Ljavax/net/ssl/HttpsURLConnection;

    :cond_78d
    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_799

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/download/n;->t:Ljava/net/HttpURLConnection;

    :cond_799
    throw v1

    :catch_79a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_76d

    :catch_79f
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_779

    :catch_7a4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_781

    :catch_7a9
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_63b

    :catch_7af
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_647

    :catch_7b5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_64d

    :catchall_7bb
    move-exception v1

    move-object v3, v2

    goto :goto_764

    :cond_7be
    move-wide v4, v1

    goto/16 :goto_362

    :cond_7c1
    move v1, v2

    goto/16 :goto_632
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/download/n;->o:Z

    return v0
.end method

.method public static f()J
    .registers 4

    sget-wide v0, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->k:Ljava/lang/String;

    if-eqz v0, :cond_25

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    sget-object v2, Lcom/sdgtl/mediahub/spr/download/n;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    sput-wide v0, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    :cond_25
    sget-wide v0, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    return-wide v0
.end method

.method public static g()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->j:Ljava/io/File;

    return-object v0
.end method

.method private static h()V
    .registers 4

    const-string v0, "MediaHubAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "printStorageSpaceLog : primary storage space = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    const-string v0, "MediaHubAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "printStorageSpaceLog : secondary storage space = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const/4 v2, 0x2

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    sput-object v7, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    sget-object v3, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v3, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const-string v3, "downloading_notification_id"

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2c
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/download/n;->o:Z

    if-nez v0, :cond_11d

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_114

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_114

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/n;->b(Ljava/io/File;)I
    :try_end_47
    .catch Ljavax/net/ssl/SSLException; {:try_start_2c .. :try_end_47} :catch_120

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_10c

    :goto_4b
    move v3, v0

    :goto_4c
    if-ne v3, v1, :cond_bb

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;

    if-eqz v0, :cond_bb

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Archive"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-gtz v0, :cond_bb

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    sget-object v5, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v5, v5, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    sget-object v6, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v6, v6, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v5, "Downloadable"

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v0, v4, v8, v9}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    :cond_bb
    if-nez v3, :cond_138

    const/16 v0, 0x64

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/n;->b(I)V

    :goto_c2
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    invoke-static {v0, v7, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const-string v4, "downloading_notification_id"

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-wide v8, Lcom/sdgtl/mediahub/spr/download/n;->s:J

    sput-object v7, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iput v3, v4, Landroid/os/Message;->what:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iput v0, v4, Landroid/os/Message;->arg1:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    move v0, v1

    :goto_f0
    iput v0, v4, Landroid/os/Message;->arg2:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;

    if-eqz v0, :cond_157

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;

    const-string v1, "IOException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->q:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_10b
    return-void

    :cond_10c
    :try_start_10c
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/n;->c(Ljava/io/File;)I

    move-result v0

    goto/16 :goto_4b

    :cond_114
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->i:Ljava/io/File;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/n;->c(Ljava/io/File;)I
    :try_end_119
    .catch Ljavax/net/ssl/SSLException; {:try_start_10c .. :try_end_119} :catch_120

    move-result v0

    move v3, v0

    goto/16 :goto_4c

    :cond_11d
    move v3, v1

    goto/16 :goto_4c

    :catch_120
    move-exception v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    const-string v0, "SSLException"

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/n;->p:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_135

    move v3, v2

    goto/16 :goto_4c

    :cond_135
    move v3, v1

    goto/16 :goto_4c

    :cond_138
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->f:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v4, Lcom/sdgtl/mediahub/spr/download/n;->g:Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v4, v4, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_c2

    :cond_14b
    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_155

    move v0, v2

    goto :goto_f0

    :cond_155
    const/4 v0, -0x1

    goto :goto_f0

    :cond_157
    sget-object v0, Lcom/sdgtl/mediahub/spr/download/n;->q:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10b
.end method
