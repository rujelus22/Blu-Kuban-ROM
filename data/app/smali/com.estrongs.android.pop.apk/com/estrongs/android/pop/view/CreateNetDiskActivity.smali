.class public Lcom/estrongs/android/pop/view/CreateNetDiskActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private A:Landroid/widget/CheckBox;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Landroid/widget/Button;

.field private E:I

.field private F:[Ljava/lang/String;

.field private G:[Ljava/lang/String;

.field private H:Landroid/os/Handler;

.field private I:Landroid/view/View$OnClickListener;

.field private J:Landroid/view/View$OnClickListener;

.field private K:Landroid/view/View$OnClickListener;

.field private L:Landroid/view/View$OnClickListener;

.field a:Lcom/estrongs/android/util/y;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TableRow;

.field private k:Landroid/widget/TableRow;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:I

.field private q:Landroid/widget/TableRow;

.field private r:Landroid/widget/TableRow;

.field private s:Landroid/widget/TableRow;

.field private t:Landroid/widget/TableRow;

.field private u:Landroid/widget/ProgressBar;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/widget/Button;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->d:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->g:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->h:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->j:Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->k:Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->l:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->m:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->n:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->o:Landroid/widget/TextView;

    iput v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->p:I

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q:Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->r:Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->s:Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->t:Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->u:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->v:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->w:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->x:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->y:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->A:Landroid/widget/CheckBox;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->B:Z

    const-string v0, "/"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->C:Ljava/lang/String;

    iput v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->E:I

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "s3.amazonaws.com"

    aput-object v1, v0, v3

    const-string v1, "s3-us-west-2.amazonaws.com"

    aput-object v1, v0, v4

    const-string v1, "s3-us-west-1.amazonaws.com"

    aput-object v1, v0, v5

    const-string v1, "s3-eu-west-1.amazonaws.com"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "s3-ap-southeast-1.amazonaws.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "s3-ap-northeast-1.amazonaws.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "s3-sa-east-1.amazonaws.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->F:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "US Standard"

    aput-object v1, v0, v3

    const-string v1, "US (Oregon)"

    aput-object v1, v0, v4

    const-string v1, "US (Northern California)"

    aput-object v1, v0, v5

    const-string v1, "EU (Ireland)"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "Asia (Singapore)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Asia (Tokyo)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sao Paulo"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->G:[Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/view/u;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/u;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a:Lcom/estrongs/android/util/y;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/view/z;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/z;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->I:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/ae;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/ae;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->J:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/af;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/af;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->K:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/ah;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/ah;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->L:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .registers 6

    const v4, 0x7f0901b0

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->p:I

    if-nez v0, :cond_91

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->p:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->j:Landroid/widget/TableRow;

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->k:Landroid/widget/TableRow;

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->r:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    const-string v1, "kanbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->j:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->k:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q:Landroid/widget/TableRow;

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->r:Landroid/widget/TableRow;

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/pop/view/x;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/x;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/x;->start()V

    goto :goto_2b

    :cond_65
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    const-string v1, "kuaipan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->j:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->k:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q:Landroid/widget/TableRow;

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->r:Landroid/widget/TableRow;

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/pop/view/y;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/y;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/y;->start()V

    goto :goto_2b

    :cond_91
    iput v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->p:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->j:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->k:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->r:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->h:Landroid/widget/Button;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_38
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/estrongs/android/util/v;

    const-string v1, "http://image.web.kuaipan.cn/static/res/es1.png"

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/v;-><init>(Ljava/lang/String;)V

    const-string v1, "/sdcard/.estrongs/cache/es1.png"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a:Lcom/estrongs/android/util/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Lcom/estrongs/android/util/y;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/estrongs/android/util/v;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->E:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x2

    :try_start_3
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    const-string v4, "kuaipan"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/fs/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/am;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/am;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_11d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_10d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/al;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2b
    return-void

    :cond_2c
    const/4 v0, 0x0

    :try_start_2d
    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->z:Ljava/lang/String;

    :goto_38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->x:Landroid/graphics/Bitmap;

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v4, 0x7530

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v4, 0x7530

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-interface {v4, v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_7e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/v;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_73
    .catchall {:try_start_2d .. :try_end_73} :catchall_11d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_73} :catch_10d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/al;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2b

    :cond_7e
    :try_start_7e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    const-string v4, "kanbox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    array-length v5, v4

    move v0, v3

    :goto_8e
    if-lt v0, v5, :cond_af

    move-object v0, v2

    :goto_91
    if-eqz v0, :cond_99

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_ee

    :cond_99
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/w;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/w;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a3
    .catchall {:try_start_7e .. :try_end_a3} :catchall_11d
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_a3} :catch_10d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/al;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2b

    :cond_af
    :try_start_af
    aget-object v6, v4, v0

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cookie"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_eb

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v3

    :goto_cd
    if-lt v0, v5, :cond_d1

    move-object v0, v2

    goto :goto_91

    :cond_d1
    aget-object v3, v4, v0

    const-string v6, "graph_sid"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e8

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_91

    :cond_e8
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    :cond_eb
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    :cond_ee
    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->z:Ljava/lang/String;

    :cond_f0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_101
    .catchall {:try_start_af .. :try_end_101} :catchall_11d
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_101} :catch_10d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/al;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2b

    :catch_10d
    move-exception v0

    :try_start_10e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_11d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/al;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2b

    :catchall_11d
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/pop/view/al;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/al;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0

    :cond_129
    move-object v0, p1

    goto/16 :goto_38
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 5

    const-string v0, "net://"

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    const-string v3, "vdisk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->A:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_37
    :goto_37
    const-string v2, "s3"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    const-string v1, "s3fakeuser"

    const-string v2, "fake"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->C:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    return-object v0

    :cond_4e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "l_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_5e
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->B:Z

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->C:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_6b
    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    const-string v3, "/"

    invoke-static {v2, v0, v1, v3}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :try_start_f
    const-string v2, "dropbox"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/d;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;)Lcom/estrongs/android/util/ag;

    move-result-object v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8

    :cond_24
    const-string v2, "yandex"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/estrongs/android/pop/fs/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8

    :cond_46
    const-string v1, "s3"

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    new-instance v1, Lorg/json/simple/JSONObject;

    invoke-direct {v1}, Lorg/json/simple/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v1, v4, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "secret"

    invoke-virtual {v1, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "host"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->F:[Ljava/lang/String;

    iget v4, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->E:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->A:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9c

    const-string v2, "http"

    const-string v3, "https://"

    invoke-virtual {v1, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8d
    const-string v2, "s3"

    const-string v3, "s3fakeuser"

    const-string v4, "fake"

    invoke-static {v2, v3, v4, v1}, Lcom/estrongs/android/pop/fs/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_96
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_8

    :cond_9c
    const-string v2, "http"

    const-string v3, "http://"

    invoke-virtual {v1, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_a3} :catch_a4

    goto :goto_8d

    :catch_a4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->p:I

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a()V

    return-void
.end method

.method static synthetic m(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->B:Z

    return v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->u:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->y:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->D:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic t(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->G:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->E:I

    return v0
.end method

.method static synthetic v(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->x:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v4, 0x8

    const/4 v6, 0x4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030032

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setContentView(I)V

    const v0, 0x7f070168

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f070157

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f070159

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f070165

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f07016c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->j:Landroid/widget/TableRow;

    const v0, 0x7f070172

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->k:Landroid/widget/TableRow;

    const v0, 0x7f07016e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->l:Landroid/widget/EditText;

    const v0, 0x7f070174

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->m:Landroid/widget/EditText;

    const v0, 0x7f07016a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f070169

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->j:Landroid/widget/TableRow;

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->k:Landroid/widget/TableRow;

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setVisibility(I)V

    const v0, 0x7f07016b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0700c2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->g:Landroid/widget/Button;

    const v0, 0x7f070166

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->g:Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->h:Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->n:Landroid/widget/TextView;

    const v2, 0x7f0901af

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f070175

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q:Landroid/widget/TableRow;

    const v0, 0x7f070179

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->r:Landroid/widget/TableRow;

    const v0, 0x7f07016f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->s:Landroid/widget/TableRow;

    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->t:Landroid/widget/TableRow;

    const v0, 0x7f07017e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->D:Landroid/widget/Button;

    const v0, 0x7f070170

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->A:Landroid/widget/CheckBox;

    const v0, 0x7f070176

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->u:Landroid/widget/ProgressBar;

    const v0, 0x7f070177

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->v:Landroid/widget/ImageView;

    const v0, 0x7f07017b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->w:Landroid/widget/EditText;

    const v0, 0x7f070178

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->y:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->y:Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q:Landroid/widget/TableRow;

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->r:Landroid/widget/TableRow;

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_39c

    const-string v3, "path"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28c

    iput-boolean v7, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->B:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->C:Ljava/lang/String;

    if-eqz v0, :cond_187

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_187

    iget-object v5, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_187
    if-eqz v4, :cond_194

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_194

    iget-object v5, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_194
    if-eqz v2, :cond_1a1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a1

    iget-object v4, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1a1
    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    :goto_1a7
    const-string v2, "dropbox"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_296

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->c:Landroid/widget/ImageView;

    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    move-object v2, v0

    :goto_1bf
    :try_start_1bf
    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->getMacAddr(Landroid/content/Context;)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1c2} :catch_399

    :goto_1c2
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3a0

    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_3be

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a([I[I)V

    const v0, 0x7f070165

    const v3, 0x7f0900cf

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b(II)V

    const-string v0, "s3"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->t:Landroid/widget/TableRow;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->n:Landroid/widget/TextView;

    const v3, 0x7f0902d2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->o:Landroid/widget/TextView;

    const v3, 0x7f0902d3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->s:Landroid/widget/TableRow;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    const v0, 0x7f070171

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0900d9

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->d:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->e:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->A:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->B:Z

    if-eqz v0, :cond_271

    new-instance v3, Lorg/json/simple/JSONObject;

    invoke-direct {v3}, Lorg/json/simple/JSONObject;-><init>()V

    const-string v0, "s3"

    const-string v4, "fake"

    invoke-static {v0, v2, v4, v3}, Lcom/estrongs/android/pop/fs/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/json/simple/JSONObject;->size()I

    move-result v0

    if-lez v0, :cond_271

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->d:Landroid/widget/EditText;

    const-string v0, "key"

    invoke-virtual {v3, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->e:Landroid/widget/EditText;

    const-string v0, "secret"

    invoke-virtual {v3, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "http"

    invoke-virtual {v3, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->A:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_26c
    :goto_26c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->F:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_37e

    :cond_271
    :goto_271
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->D:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->G:[Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->E:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/pop/view/ai;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/ai;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->D:Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/pop/view/aj;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/view/aj;-><init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_28b
    return-void

    :cond_28c
    const-string v3, "nettype"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    goto/16 :goto_1a7

    :cond_296
    const-string v2, "vdisk"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ef

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->c:Landroid/widget/ImageView;

    const v3, 0x7f02011b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->s:Landroid/widget/TableRow;

    invoke-virtual {v2, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->B:Z

    if-eqz v2, :cond_37b

    if-eqz v0, :cond_37b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_37b

    const-string v2, "s_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d7

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->A:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2cf
    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v0

    goto/16 :goto_1bf

    :cond_2d7
    const-string v2, "l_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e9

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->A:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2cf

    :cond_2e9
    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->A:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2cf

    :cond_2ef
    const-string v2, "kanbox"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_304

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->c:Landroid/widget/ImageView;

    const v3, 0x7f020080

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v2, v0

    goto/16 :goto_1bf

    :cond_304
    const-string v2, "sugarsync"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31e

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200ce

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    move-object v2, v0

    goto/16 :goto_1bf

    :cond_31e
    const-string v2, "kuaipan"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34a

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->c:Landroid/widget/ImageView;

    const v3, 0x7f020081

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->p()Z

    move-result v2

    if-nez v2, :cond_37b

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->r()Z

    move-result v2

    if-nez v2, :cond_37b

    invoke-direct {p0, p0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a(Landroid/content/Context;)V

    move-object v2, v0

    goto/16 :goto_1bf

    :cond_34a
    const-string v2, "yandex"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_364

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->c:Landroid/widget/ImageView;

    const v3, 0x7f020122

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    move-object v2, v0

    goto/16 :goto_1bf

    :cond_364
    const-string v2, "ubuntu"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37b

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->c:Landroid/widget/ImageView;

    const v3, 0x7f020115

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_37b
    move-object v2, v0

    goto/16 :goto_1bf

    :cond_37e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->F:[Ljava/lang/String;

    aget-object v2, v0, v1

    const-string v0, "host"

    invoke-virtual {v3, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_394

    iput v1, p0, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->E:I

    goto/16 :goto_271

    :cond_394
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_26c

    :catch_399
    move-exception v0

    goto/16 :goto_1c2

    :cond_39c
    move-object v2, v0

    goto/16 :goto_1bf

    nop

    :array_3a0
    .array-data 0x4
        0x67t 0x1t 0x7t 0x7ft
        0x69t 0x1t 0x7t 0x7ft
        0x6at 0x1t 0x7t 0x7ft
        0x6bt 0x1t 0x7t 0x7ft
        0x6dt 0x1t 0x7t 0x7ft
        0x73t 0x1t 0x7t 0x7ft
        0x78t 0x1t 0x7t 0x7ft
        0x7at 0x1t 0x7t 0x7ft
        0x7ft 0x1t 0x7t 0x7ft
        0x66t 0x1t 0x7t 0x7ft
        0xc2t 0x0t 0x7t 0x7ft
        0x71t 0x1t 0x7t 0x7ft
        0x7dt 0x1t 0x7t 0x7ft
    .end array-data

    :array_3be
    .array-data 0x4
        0xc5t 0x1t 0x9t 0x7ft
        0xb0t 0x1t 0x9t 0x7ft
        0x37t 0x0t 0x9t 0x7ft
        0x38t 0x0t 0x9t 0x7ft
        0xadt 0x1t 0x9t 0x7ft
        0xaet 0x1t 0x9t 0x7ft
        0x34t 0x1t 0x9t 0x7ft
        0xeat 0x2t 0x9t 0x7ft
        0xcet 0x0t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
        0xd1t 0x2t 0x9t 0x7ft
        0xb9t 0x2t 0x9t 0x7ft
    .end array-data
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
