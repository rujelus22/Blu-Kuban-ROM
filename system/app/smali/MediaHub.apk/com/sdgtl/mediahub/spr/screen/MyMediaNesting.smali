.class public Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;
.super Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;


# static fields
.field private static U:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;


# instance fields
.field private A:I

.field private B:J

.field private C:J

.field private D:J

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/Button;

.field private P:Landroid/widget/ProgressBar;

.field private Q:Z

.field private R:Landroid/app/ProgressDialog;

.field private S:Lcom/sdgtl/mediahub/spr/screen/ij;

.field private T:Ljava/lang/String;

.field private V:Landroid/view/MenuItem;

.field private W:Landroid/view/MenuItem;

.field private X:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private Y:Landroid/content/BroadcastReceiver;

.field private Z:Landroid/content/BroadcastReceiver;

.field public final a:Landroid/os/Handler;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public f:Landroid/os/Handler;

.field public final g:Landroid/os/Handler;

.field public final h:Landroid/os/Handler;

.field public final i:Landroid/os/Handler;

.field public final j:Landroid/os/Handler;

.field public final k:Landroid/os/Handler;

.field public final l:Landroid/os/Handler;

.field public final m:Landroid/os/Handler;

.field public final n:Landroid/os/Handler;

.field private o:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private p:Lcom/sdgtl/mediahub/spr/download/a;

.field private q:Lcom/sdgtl/mediahub/spr/c/a;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/ListView;

.field private v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

.field private w:Landroid/widget/Button;

.field private x:Ljava/util/ArrayList;

.field private y:Lcom/sdgtl/mediahub/spr/common/di;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->U:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;-><init>()V

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->z:I

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->A:I

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->K:Z

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->L:Z

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->Q:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ij;->a:Lcom/sdgtl/mediahub/spr/screen/ij;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->T:Ljava/lang/String;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->V:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->W:Landroid/view/MenuItem;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/gs;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/gs;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->X:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ht;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ht;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ic;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ic;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/id;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/id;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ie;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ie;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/if;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/if;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ig;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ig;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ih;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ih;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ii;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ii;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->h:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/hi;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/hi;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->i:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/hj;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/hj;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->j:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/hk;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/hk;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->k:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/hl;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/hl;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->l:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/hm;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/hm;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->m:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/hn;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/hn;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->n:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ho;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ho;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->Y:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/hq;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/hq;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->Z:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    return-object v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->U:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;I)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v2, "02"

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v1

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {p0, v3, v4, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;IIJ)Z

    move-result v1

    if-nez p3, :cond_1a

    const-string p3, ""

    :cond_1a
    invoke-static {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_39

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;II)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;I)J

    :goto_32
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    return-void

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, ""

    const-string v1, ""

    invoke-static {p1, v0, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->R:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0d0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->R:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->R:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->R:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/hs;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/hs;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private a(Lcom/sdgtl/mediahub/spr/common/di;)V
    .registers 4

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    if-nez v0, :cond_c

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :cond_c
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "01"

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    const-string v0, "02"

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto :goto_20
.end method

.method private a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V
    .registers 5

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->A:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->p:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;Z)J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->z:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->J:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/16 v0, 0xa

    if-ne p1, v0, :cond_18

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f

    :cond_18
    if-nez p1, :cond_f

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->C:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/common/di;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/screen/ij;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->I:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->Q:Z

    return-void
.end method

.method private a(Z)V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->K:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->P:Landroid/widget/ProgressBar;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->V:Landroid/view/MenuItem;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->V:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_14
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->W:Landroid/view/MenuItem;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->W:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->P:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->O:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->O:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_35
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->V:Landroid/view/MenuItem;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->V:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->W:Landroid/view/MenuItem;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->W:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_47
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->P:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->O:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->O:Landroid/widget/Button;

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_8
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    return v0
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->G:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->B:J

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/common/di;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;)V

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->T:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 12

    const v9, 0x7f070004

    const/4 v8, 0x3

    const/4 v0, -0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5c

    const-string v5, "fromNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "product_id"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v5, :cond_48

    const-string v5, "download_finish"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b2

    iput v8, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_41

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->w:Landroid/widget/Button;

    aget-object v4, v4, v8

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    :goto_41
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setCategory(I)V

    :cond_48
    const-string v4, "fromNotification"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v4, "download_finish"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v4, "product_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v4, "parent_product_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_5c
    move v1, v0

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    packed-switch v0, :pswitch_data_106

    move-object v0, v2

    :goto_63
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->H:I

    iget v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->F:I

    invoke-static {p0, v2, v0, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_dc

    invoke-direct {p0, v7}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Z)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_84

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->setResult(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->finish()V

    :cond_84
    :goto_84
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->refresh(Ljava/util/ArrayList;)V

    iput-boolean v7, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->J:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->o:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    if-lez v1, :cond_f6

    move v2, v3

    :goto_a9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_e0

    :cond_b1
    :goto_b1
    return-void

    :cond_b2
    iput v7, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_41

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->w:Landroid/widget/Button;

    aget-object v4, v4, v7

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_41

    :pswitch_cb
    const/4 v0, 0x0

    goto :goto_63

    :pswitch_cd
    const-string v0, "Downloading"

    goto :goto_63

    :pswitch_d0
    const-string v0, "Downloadable"

    goto :goto_63

    :pswitch_d3
    const-string v0, "Downloaded"

    goto :goto_63

    :pswitch_d6
    const-string v0, "Expired"

    goto :goto_63

    :pswitch_d9
    const-string v0, "Archive"

    goto :goto_63

    :cond_dc
    invoke-direct {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Z)V

    goto :goto_84

    :cond_e0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v1, v0, :cond_f2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->u:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_b1

    :cond_f2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a9

    :cond_f6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b1

    if-eqz p1, :cond_b1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->u:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_b1

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_cd
        :pswitch_d0
        :pswitch_d3
        :pswitch_d6
        :pswitch_d9
    .end packed-switch
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    return-object v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->A:I

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->D:J

    return-void
.end method

.method private c(Z)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->t:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_14

    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->t:Landroid/widget/RelativeLayout;

    :cond_14
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->u:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->u:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->t:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_23
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/c/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    return-object v0
.end method

.method private e()V
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v8, 0x0

    const-string v0, "archiving_meassage_again"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    const/4 v1, 0x0

    iget v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->F:I

    invoke-static {p0, v0, v1, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v7

    move v1, v2

    :goto_1e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_34

    :cond_24
    :goto_24
    if-eqz v6, :cond_2e

    const-string v0, "no"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    :cond_2e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a:Landroid/os/Handler;

    invoke-static {p0, v2, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :cond_33
    :goto_33
    return-void

    :cond_34
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    const-string v0, "01"

    invoke-static {p0, v4, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-gtz v0, :cond_64

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    const-string v0, "02"

    invoke-static {p0, v4, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v4

    :cond_64
    cmp-long v0, v4, v8

    if-lez v0, :cond_6a

    move v2, v3

    goto :goto_24

    :cond_6a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_6e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    const-string v1, "01"

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v8

    if-gtz v4, :cond_8e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    const-string v1, "02"

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v0

    :cond_8e
    cmp-long v0, v0, v8

    if-lez v0, :cond_24

    move v2, v3

    goto :goto_24

    :cond_94
    const-string v0, "yes"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_33
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/download/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->p:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method private f()V
    .registers 5

    invoke-direct {p0, p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->a:J

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->b:J

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "archive_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "archive_cmd"

    const-string v2, "02"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->o:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0x24

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->D:J

    return-void
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->o:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method private g()Z
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->R:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->R:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->N:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Z)V

    return-void
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->L:Z

    return v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->B:J

    return-wide v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->C:J

    return-wide v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->R:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->R:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->R:Landroid/app/ProgressDialog;

    :cond_12
    return-void
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->D:J

    return-wide v0
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "01"

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "01"

    invoke-static {v0, v1, v4, v5}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "02"

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "02"

    invoke-static {v0, v1, v4, v5}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->getList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->refresh(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_73

    invoke-direct {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Z)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_5a

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->setResult(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->finish()V

    :cond_5a
    :goto_5a
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->Q:Z

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->checkLicenseExpired(Lcom/sdgtl/mediahub/spr/common/di;)Z

    move-result v0

    if-eqz v0, :cond_78

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_72
    return-void

    :cond_73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Z)V

    goto :goto_5a

    :cond_78
    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b()V

    goto :goto_72

    :cond_89
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_72
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->J:Z

    return v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->A:I

    return v0
.end method


# virtual methods
.method public final a(I)V
    .registers 9

    const-wide/16 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_20a

    :goto_16
    :pswitch_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Z)V

    return-void

    :pswitch_1b
    const-string v0, "download_option"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->T:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->p:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    goto :goto_16

    :pswitch_40
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ij;->e:Lcom/sdgtl/mediahub/spr/screen/ij;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v3, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_16

    :cond_56
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->e()V

    goto :goto_16

    :cond_5a
    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_16

    :pswitch_66
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ij;->c:Lcom/sdgtl/mediahub/spr/screen/ij;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v3, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_16

    :cond_76
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "01"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto :goto_16

    :pswitch_7e
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8e

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ij;->c:Lcom/sdgtl/mediahub/spr/screen/ij;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v3, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_16

    :cond_8e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto :goto_16

    :pswitch_96
    invoke-direct {p0, v0, v1, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "06"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    :cond_bd
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    if-lez v2, :cond_cd

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    :cond_cd
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v2, "Expired"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    :goto_d4
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {v0, v1, v5, v6}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    goto/16 :goto_16

    :cond_db
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_d4

    :cond_e3
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_d4

    :pswitch_eb
    const-string v1, "01"

    const-string v2, "/HD"

    invoke-direct {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "06"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    :cond_116
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    if-lez v1, :cond_126

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_138

    :cond_126
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v1, "01"

    const-string v2, "Expired"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    :goto_12f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v1, "01"

    invoke-static {v0, v1, v5, v6}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    goto/16 :goto_16

    :cond_138
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v1, "01"

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_12f

    :cond_142
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v1, "01"

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_12f

    :pswitch_14c
    const-string v1, "02"

    const-string v2, "/SD"

    invoke-direct {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_177

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_177

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "06"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    :cond_177
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    if-lez v1, :cond_187

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_199

    :cond_187
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v1, "02"

    const-string v2, "Expired"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    :goto_190
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v1, "02"

    invoke-static {v0, v1, v5, v6}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    goto/16 :goto_16

    :cond_199
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v1, "02"

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_190

    :cond_1a3
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v1, "02"

    const-string v2, "Downloadable"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_190

    :pswitch_1ad
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "product_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mymedia_category"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->l:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_16

    :pswitch_1c5
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ij;->f:Lcom/sdgtl/mediahub/spr/screen/ij;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v3, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_16

    :cond_1dc
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->f()V

    goto/16 :goto_16

    :cond_1e1
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fb

    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->m:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_16

    :cond_1fb
    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->m:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_16

    nop

    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_40
        :pswitch_66
        :pswitch_7e
        :pswitch_96
        :pswitch_eb
        :pswitch_14c
        :pswitch_1ad
        :pswitch_16
        :pswitch_1c5
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->G:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->I:Ljava/lang/String;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ij;->c:Lcom/sdgtl/mediahub/spr/screen/ij;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_23
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    return-void

    :cond_29
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    :cond_42
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_49
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->T:Ljava/lang/String;

    if-nez v1, :cond_a6

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, "02"

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Downloadable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string v2, "Downloadable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "01"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto :goto_23

    :cond_7f
    const-string v2, "Downloadable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    const-string v0, "Downloadable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto :goto_23

    :cond_97
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_23

    :cond_a6
    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :cond_ae
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->T:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :cond_ba
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;)V

    goto/16 :goto_23

    :cond_c1
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->m:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_23

    :cond_db
    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->m:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_23
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->G:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->p:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->G:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final d()V
    .registers 12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v6, v0, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v9, v0, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v1, "01"

    :cond_32
    :goto_32
    invoke-static {p0, v2, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;II)V

    :cond_3c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    return-void

    :cond_42
    const-string v1, "02"

    goto :goto_32
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_23

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    :goto_17
    return v0

    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_28

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_23
    :goto_23
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_17

    :cond_28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mymedia_refresh_status"

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->K:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->setResult(ILandroid/content/Intent;)V

    goto :goto_23
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->overridePendingTransition(II)V

    :cond_e
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const v4, 0x7f0a011d

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_17e

    :cond_b
    :goto_b
    return-void

    :sswitch_c
    packed-switch p2, :pswitch_data_188

    :cond_f
    :goto_f
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ij;->a:Lcom/sdgtl/mediahub/spr/screen/ij;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    goto :goto_b

    :pswitch_14
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/ij;->g:Lcom/sdgtl/mediahub/spr/screen/ij;

    if-ne v2, v3, :cond_2d

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->finish()V

    :cond_26
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_f

    :cond_2d
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/ij;->b:Lcom/sdgtl/mediahub/spr/screen/ij;

    if-ne v2, v3, :cond_6d

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->J:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->M:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a00d6

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->o:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x23

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->B:J

    goto :goto_f

    :cond_6d
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/ij;->c:Lcom/sdgtl/mediahub/spr/screen/ij;

    if-ne v2, v3, :cond_10c

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    :cond_8b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v2, "02"

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    move v0, v1

    :cond_92
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->T:Ljava/lang/String;

    if-nez v1, :cond_f1

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, "02"

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Downloadable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    const-string v2, "Downloadable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "01"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_c9
    const-string v2, "Downloadable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    const-string v0, "Downloadable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_e2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_f

    :cond_f1
    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :cond_f9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    if-nez v0, :cond_105

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->T:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :cond_105
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;)V

    goto/16 :goto_f

    :cond_10c
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/ij;->d:Lcom/sdgtl/mediahub/spr/screen/ij;

    if-ne v2, v3, :cond_137

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->p:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v1

    if-eqz v1, :cond_130

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->p:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    :cond_130
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->y:Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/common/di;)V

    goto/16 :goto_f

    :cond_137
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/ij;->e:Lcom/sdgtl/mediahub/spr/screen/ij;

    if-ne v0, v2, :cond_151

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_148

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->e()V

    goto/16 :goto_f

    :cond_148
    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :cond_151
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/ij;->f:Lcom/sdgtl/mediahub/spr/screen/ij;

    if-ne v0, v2, :cond_f

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_162

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->f()V

    goto/16 :goto_f

    :cond_162
    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_f

    :pswitch_16b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->finish()V

    goto/16 :goto_f

    :sswitch_176
    if-nez p2, :cond_b

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->finish()V

    goto/16 :goto_b

    nop

    :sswitch_data_17e
    .sparse-switch
        0x3 -> :sswitch_c
        0x7 -> :sswitch_176
    .end sparse-switch

    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_14
        :pswitch_16b
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const v4, 0x7f0a00d5

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_FINISH_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3e

    const-string v1, "parent_product_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->H:I

    const-string v1, "mymedia_category"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    const-string v1, "mymedia_refresh_status"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->K:Z

    :cond_3e
    iput-boolean v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->J:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->o:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->p:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->x:Ljava/util/ArrayList;

    const-string v0, "download_option"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->T:Ljava/lang/String;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f6

    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->setContentView(I)V

    :cond_6e
    :goto_6e
    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->s:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->n:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setCategory(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/hv;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/hv;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemDownloadClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/hw;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/hw;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemDownloadStopClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadStopClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/hx;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/hx;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemPlayClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/hy;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/hy;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemPlayLongClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/hz;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/hz;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemDownloadResumeClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadResumeClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ia;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ia;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemDownloadPauseClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadPauseClickListener;)V

    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->u:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->u:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->u:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ib;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ib;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->u:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->X:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->U:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    return-void

    :cond_f6
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->setContentView(I)V

    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->M:Landroid/widget/TextView;

    const v0, 0x7f0d00b7

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->N:Landroid/widget/TextView;

    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->P:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->M:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00d6

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_18d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->N:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_159
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->w:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->w:Landroid/widget/Button;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->E:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->w:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/hu;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/hu;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->K:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->P:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_6e

    :cond_18d
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->N:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1, p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_159
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_2c

    :goto_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a006c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/hr;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/hr;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0d016b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->V:Landroid/view/MenuItem;

    const v0, 0x7f0d016c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->W:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->K:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->V:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->W:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2b
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->U:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_24

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->K:Z

    if-eqz v0, :cond_24

    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_23
    return v0

    :cond_24
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_d2

    :cond_2b
    :goto_2b
    :pswitch_2b
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_23

    :pswitch_30
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Z)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->J:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->P:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ij;->b:Lcom/sdgtl/mediahub/spr/screen/ij;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_2b

    :cond_50
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->J:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->P:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->o:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x23

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->B:J

    goto :goto_2b

    :cond_69
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->i(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_2b

    :pswitch_6f
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->F:I

    if-eqz v0, :cond_2b

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->F:I

    const-string v0, "mymedia_sort"

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Z)V

    goto :goto_2b

    :pswitch_84
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->F:I

    if-eq v0, v2, :cond_2b

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->F:I

    const-string v0, "mymedia_sort"

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Z)V

    goto :goto_2b

    :pswitch_99
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a9

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ij;->g:Lcom/sdgtl/mediahub/spr/screen/ij;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->S:Lcom/sdgtl/mediahub/spr/screen/ij;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_2b

    :cond_a9
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_b2

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->finish()V

    :cond_b2
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_2b

    :pswitch_b9
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    goto/16 :goto_2b

    :pswitch_be
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0140"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_2b

    nop

    :pswitch_data_d2
    .packed-switch 0x7f0d016a
        :pswitch_be
        :pswitch_30
        :pswitch_2b
        :pswitch_2b
        :pswitch_6f
        :pswitch_84
        :pswitch_99
        :pswitch_b9
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->L:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setDownloadingTotalSize(J)V

    :cond_11
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->Z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->removeDialog(I)V

    :cond_9
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    const v0, 0x7f0d0171

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->V:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1a
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onResume()V

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->L:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->A:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOADING_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->Z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->o:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->p:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;Lcom/sdgtl/mediahub/spr/download/a;)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_31
    :goto_31
    return-void

    :cond_32
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->n:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    const-string v0, "mymedia_sort"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->F:I

    :goto_45
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->i()I

    move-result v0

    if-lez v0, :cond_63

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Z)V

    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->v:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    goto :goto_31

    :cond_60
    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->F:I

    goto :goto_45

    :cond_63
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->finish()V

    goto :goto_56
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onStop()V

    return-void
.end method
