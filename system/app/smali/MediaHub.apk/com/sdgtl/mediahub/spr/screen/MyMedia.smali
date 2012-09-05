.class public Lcom/sdgtl/mediahub/spr/screen/MyMedia;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static ag:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/ProgressBar;

.field private C:Landroid/widget/ImageView;

.field private D:Ljava/util/ArrayList;

.field private E:Lcom/sdgtl/mediahub/spr/common/di;

.field private F:I

.field private G:J

.field private H:J

.field private I:J

.field private J:J

.field private K:J

.field private L:Ljava/util/ArrayList;

.field private M:Ljava/util/ArrayList;

.field private N:I

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:Z

.field private V:Landroid/app/ProgressDialog;

.field private W:Lcom/sdgtl/mediahub/spr/screen/fi;

.field private X:Landroid/widget/ListView;

.field private Y:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private Z:Ljava/util/ArrayList;

.field public final a:Landroid/os/Handler;

.field private aa:Landroid/widget/LinearLayout;

.field private ab:Landroid/widget/FrameLayout;

.field private ac:Landroid/widget/ImageView;

.field private ad:Landroid/widget/ImageView;

.field private ae:I

.field private af:Landroid/view/View;

.field private ah:Landroid/view/MenuItem;

.field private ai:Landroid/view/MenuItem;

.field private aj:Landroid/widget/AdapterView$OnItemClickListener;

.field private ak:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private al:Landroid/content/BroadcastReceiver;

.field private am:Landroid/content/BroadcastReceiver;

.field private an:Landroid/content/BroadcastReceiver;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/Handler;

.field public final h:Landroid/os/Handler;

.field public final i:Landroid/os/Handler;

.field public final j:Landroid/os/Handler;

.field public final k:Landroid/os/Handler;

.field public final l:Landroid/os/Handler;

.field public final m:Landroid/os/Handler;

.field public final n:Landroid/os/Handler;

.field public final o:Landroid/os/Handler;

.field private p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private q:Lcom/sdgtl/mediahub/spr/download/a;

.field private r:Lcom/sdgtl/mediahub/spr/c/a;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/ListView;

.field private w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ag:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->F:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->L:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->P:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->R:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->S:Z

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->T:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->U:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->a:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ae:I

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ah:Landroid/view/MenuItem;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ai:Landroid/view/MenuItem;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/dj;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/dj;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aj:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/dv;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/dv;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ak:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ex;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ex;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/fc;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/fc;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/fd;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/fd;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/fe;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/fe;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ff;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ff;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/fg;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/fg;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/fh;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/fh;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/dk;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/dk;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/dl;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/dl;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/dm;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/dm;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->j:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/dn;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/dn;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->k:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/do;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/do;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->l:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/dp;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/dp;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->m:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/dq;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/dq;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->n:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/dr;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/dr;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ds;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ds;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->al:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/du;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/du;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->am:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/en;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/en;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->an:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->K:J

    return-wide v0
.end method

.method static synthetic B(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->x:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic C(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aa:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic D(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ac:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic E(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->P:Z

    return v0
.end method

.method static synthetic F(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ae:I

    return v0
.end method

.method static synthetic G(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ab:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    return-object v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MyMedia;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ag:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/c/a;)Ljava/util/ArrayList;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-nez p1, :cond_15

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    :cond_15
    const/4 v0, 0x1

    :goto_16
    array-length v3, v2

    if-lt v0, v3, :cond_1a

    return-object v1

    :cond_1a
    new-instance v3, Lcom/sdgtl/mediahub/spr/common/cr;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/cr;-><init>()V

    aget-object v4, v2, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    iget-object v4, v3, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/c/a;->g(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/sdgtl/mediahub/spr/common/cr;->g:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sdgtl/mediahub/spr/common/cr;->i:Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

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

    if-eqz v1, :cond_40

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;II)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;I)J

    :goto_32
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setDownloadingTotalSize(J)V

    return-void

    :cond_40
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

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->V:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0d0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->V:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->V:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->V:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/fb;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/fb;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ae:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ad:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/lit8 v1, v1, -0x54

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ad:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ab:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ab:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ab:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->P:Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aa:Landroid/widget/LinearLayout;

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/view/View;JZZ)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ac:Landroid/widget/ImageView;

    const-wide/16 v2, 0x50

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/view/View;JZZ)V

    return-void
.end method

.method private a(Landroid/view/View;JZZ)V
    .registers 11

    const/4 v1, 0x0

    const v0, 0x10a0006

    if-nez p5, :cond_b

    if-eqz p4, :cond_46

    const v0, 0x10a0008

    :cond_b
    :goto_b
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eqz p4, :cond_4a

    int-to-float v0, v4

    move v2, v0

    :goto_1d
    if-eqz p4, :cond_4c

    move v0, v1

    :goto_20
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v2, v0, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v4, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ey;

    invoke-direct {v0, p0, p4, p1}, Lcom/sdgtl/mediahub/spr/screen/ey;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;ZLandroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_46
    const v0, 0x10a0007

    goto :goto_b

    :cond_4a
    move v2, v1

    goto :goto_1d

    :cond_4c
    int-to-float v0, v4

    goto :goto_20
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Landroid/view/View;Landroid/view/View;)V

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

    if-eqz v0, :cond_24

    const-string v0, "01"

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    const-string v0, "02"

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    :goto_20
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h()V

    return-void

    :cond_24
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto :goto_20
.end method

.method private a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V
    .registers 5

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->F:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;Z)J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->F:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Q:Z

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

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->I:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Landroid/os/Bundle;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->af:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Lcom/sdgtl/mediahub/spr/common/di;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Lcom/sdgtl/mediahub/spr/screen/fi;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->T:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->U:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_88

    const-string v2, "app_destory"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_88

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    :cond_1e
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    if-nez v2, :cond_28

    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a()Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v2

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    :cond_28
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->b()V

    iput-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->stopService(Landroid/content/Intent;)Z

    :cond_3d
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    if-nez v2, :cond_47

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->a()Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v2

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    :cond_47
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->h()V

    iput-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->stopService(Landroid/content/Intent;)Z

    :cond_5c
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fl;->c()V

    const-string v2, "movie_category_order"

    invoke-static {p0, v2, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tv_category_order"

    invoke-static {p0, v2, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->finish()V

    const-string v2, "showDateSettings"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_87

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DATE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_87
    :goto_87
    return v0

    :cond_88
    move v0, v1

    goto :goto_87
.end method

.method private a(Z)Z
    .registers 9

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return v4

    :cond_b
    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ae:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ab:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ab:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    move v4, v6

    goto :goto_a

    :cond_3a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_50

    move v4, v6

    goto :goto_a

    :cond_50
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ab:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_68

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aa:Landroid/widget/LinearLayout;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/view/View;JZZ)V

    move v4, v6

    goto :goto_a

    :cond_68
    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ae:I

    goto :goto_a
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    return v0
.end method

.method private static b(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz p1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->G:J

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Lcom/sdgtl/mediahub/spr/common/di;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;)V

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->R:Z

    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ah:Landroid/view/MenuItem;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ah:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ai:Landroid/view/MenuItem;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ai:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_18
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_2f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->A:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->A:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ah:Landroid/view/MenuItem;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ah:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_39
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ai:Landroid/view/MenuItem;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ai:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_42
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->B:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_2f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->A:Landroid/widget/Button;

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2f
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->H:J

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Z)V

    return-void
.end method

.method private c(Z)V
    .registers 7

    const/4 v4, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_58

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->u:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_14

    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->u:Landroid/widget/RelativeLayout;

    :cond_14
    const v0, 0x7f0d0051

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0050

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    sparse-switch v2, :sswitch_data_6c

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_34
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_43
    :goto_43
    return-void

    :sswitch_44
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_34

    :sswitch_4e
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0a004f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_34

    :cond_58
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_43

    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_44
        0x5 -> :sswitch_4e
    .end sparse-switch
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->R:Z

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    return-object v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->J:J

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Q:Z

    return-void
.end method

.method private d(Z)V
    .registers 13

    const v10, 0x7f070004

    const/4 v9, 0x3

    const/4 v0, -0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1ab

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1ab

    const-string v1, "fromNotification"

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "product_id"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v7, "parent_product_id"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v6, :cond_5d

    const-string v6, "download_finish"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_eb

    iput v9, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->x:Landroid/widget/Button;

    aget-object v5, v5, v9

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_47
    :goto_47
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget v6, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    invoke-virtual {v5, v6}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setCategory(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v8, :cond_5d

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Y:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget v6, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    :cond_5d
    const-string v5, "fromNotification"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v5, "download_finish"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v5, "product_id"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v5, "parent_product_id"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move v2, v1

    move v1, v0

    :goto_73
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    packed-switch v0, :pswitch_data_1b0

    move-object v0, v3

    :goto_79
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v3, :cond_83

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v3

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_83
    iget v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ae:I

    if-lez v3, :cond_1a8

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ae:I

    iget v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    invoke-static {p0, v3, v0, v5}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1a8

    invoke-direct {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Z)Z

    move-result v3

    :goto_9b
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget v7, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    invoke-virtual {v6, p0, v0, v7}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->refresh(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h()V

    iput-boolean v8, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Q:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->s:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->t:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    if-lez v1, :cond_16d

    move v2, v4

    :goto_d2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_11b

    :cond_da
    :goto_da
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1a3

    if-nez v3, :cond_e7

    invoke-direct {p0, v8}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c(Z)V

    :cond_e7
    :goto_e7
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i()V

    return-void

    :cond_eb
    iput v8, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->x:Landroid/widget/Button;

    aget-object v5, v5, v8

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_47

    :pswitch_104
    const/4 v0, 0x0

    goto/16 :goto_79

    :pswitch_107
    const-string v0, "Downloading"

    goto/16 :goto_79

    :pswitch_10b
    const-string v0, "Downloadable"

    goto/16 :goto_79

    :pswitch_10f
    const-string v0, "Downloaded"

    goto/16 :goto_79

    :pswitch_113
    const-string v0, "Expired"

    goto/16 :goto_79

    :pswitch_117
    const-string v0, "Archive"

    goto/16 :goto_79

    :cond_11b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    if-ne v1, v0, :cond_168

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_da

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "parent_product_id"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "mymedia_category"

    iget v6, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "mymedia_refresh_status"

    iget-boolean v6, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->R:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v8, :cond_160

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/os/Bundle;I)V

    goto/16 :goto_da

    :cond_160
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->n:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x6

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_da

    :cond_168
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_d2

    :cond_16d
    if-lez v2, :cond_192

    invoke-direct {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Z)Z

    move v1, v4

    :goto_173
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_da

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v2, v0, :cond_18e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_da

    :cond_18e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_173

    :cond_192
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_da

    if-eqz p1, :cond_da

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_da

    :cond_1a3
    invoke-direct {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c(Z)V

    goto/16 :goto_e7

    :cond_1a8
    move v3, v4

    goto/16 :goto_9b

    :cond_1ab
    move v1, v0

    move v2, v0

    goto/16 :goto_73

    nop

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_104
        :pswitch_107
        :pswitch_10b
        :pswitch_10f
        :pswitch_113
        :pswitch_117
    .end packed-switch
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

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

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    const/4 v1, 0x0

    iget v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    invoke-static {p0, v0, v1, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v7

    move v1, v2

    :goto_1e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_39

    :cond_24
    :goto_24
    if-eqz v6, :cond_2e

    const-string v0, "no"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    :cond_2e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->f:Landroid/os/Handler;

    invoke-static {p0, v2, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    return-void

    :cond_39
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

    if-gtz v0, :cond_69

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

    :cond_69
    cmp-long v0, v4, v8

    if-lez v0, :cond_6f

    move v2, v3

    goto :goto_24

    :cond_6f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_73
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    const-string v1, "01"

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v8

    if-gtz v4, :cond_93

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    const-string v1, "02"

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v0

    :cond_93
    cmp-long v0, v0, v8

    if-lez v0, :cond_24

    move v2, v3

    goto :goto_24

    :cond_99
    const-string v0, "yes"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->f:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_33
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->K:J

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->P:Z

    return-void
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    return v0
.end method

.method private f()V
    .registers 7

    invoke-direct {p0, p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_94

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v0, 0x0

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    if-eqz v2, :cond_26

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_58

    :goto_3a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "archive_info"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "archive_cmd"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x24

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->J:J

    return-void

    :cond_58
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v3, "Archive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->a:J

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->b:J

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    :cond_94
    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->a:J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->b:J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/download/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method private g()V
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->x:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->x:Landroid/widget/Button;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->x:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ez;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ez;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2f
    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->setTitle(I)V

    return-void
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->L:Ljava/util/ArrayList;

    return-object v0
.end method

.method private h()V
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_17

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Y:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->notifyDataSetChanged()V

    :cond_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/c/a;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/cr;->g:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method private i()V
    .registers 8

    const v5, 0x7f0a00d6

    const v6, 0x7f0a00d5

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z()J

    move-result-wide v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->y:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_32
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_4c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->z:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_41
    return-void

    :cond_42
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32

    :cond_4c
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->z:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

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

    goto :goto_41
.end method

.method private j()Z
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->V:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->V:Landroid/app/ProgressDialog;

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

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Q:Z

    return v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->S:Z

    return v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->V:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->j()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->V:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->V:Landroid/app/ProgressDialog;

    :cond_12
    return-void
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->G:J

    return-wide v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Y:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->s:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->t:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c(Z)V

    return-void
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->H:J

    return-wide v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->I:J

    return-wide v0
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->J:J

    return-wide v0
.end method

.method static synthetic w(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_77

    move v1, v2

    :goto_b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2b

    :goto_13
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->checkLicenseExpired(Lcom/sdgtl/mediahub/spr/common/di;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v7}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    const-string v3, "01"

    const-string v4, "Downloadable"

    invoke-static {v0, v3, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    const-string v3, "01"

    invoke-static {v0, v3, v5, v6}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    const-string v3, "02"

    const-string v4, "Downloadable"

    invoke-static {v0, v3, v4}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    const-string v3, "02"

    invoke-static {v0, v3, v5, v6}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_77
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "01"

    const-string v3, "Downloadable"

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "01"

    invoke-static {v0, v1, v5, v6}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "02"

    const-string v3, "Downloadable"

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "02"

    invoke-static {v0, v1, v5, v6}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    goto/16 :goto_13

    :cond_a9
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-nez v0, :cond_b6

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->U:Z

    if-nez v0, :cond_c2

    :cond_b6
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v7}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_2a

    :cond_c2
    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v7}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b()V

    goto/16 :goto_2a
.end method

.method static synthetic x(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->M:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic y(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->F:I

    return v0
.end method

.method static synthetic z(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->C:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .registers 11

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    packed-switch p1, :pswitch_data_24e

    :goto_19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Z)V

    return-void

    :pswitch_1e
    const-string v0, "download_option"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->T:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    goto :goto_19

    :pswitch_43
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->e:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_19

    :cond_59
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e()V

    goto :goto_19

    :cond_5d
    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v8}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_19

    :pswitch_68
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7b

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->c:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_19

    :cond_7b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "01"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto :goto_19

    :pswitch_83
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_96

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->c:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_19

    :cond_96
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto/16 :goto_19

    :pswitch_9f
    invoke-direct {p0, v1, v2, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "06"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    :cond_c6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    if-lez v0, :cond_d6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    :cond_d6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "Expired"

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    :goto_dd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {v1, v2, v6, v7}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    goto/16 :goto_19

    :cond_e4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "Downloadable"

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_dd

    :cond_ec
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "Downloadable"

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_dd

    :pswitch_f4
    const-string v0, "01"

    const-string v2, "/HD"

    invoke-direct {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "06"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    :cond_11f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    if-lez v0, :cond_12f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    :cond_12f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "01"

    const-string v2, "Expired"

    invoke-static {v1, v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    :goto_138
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "01"

    invoke-static {v1, v0, v6, v7}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    goto/16 :goto_19

    :cond_141
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "01"

    const-string v2, "Downloadable"

    invoke-static {v1, v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_138

    :cond_14b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "01"

    const-string v2, "Downloadable"

    invoke-static {v1, v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_138

    :pswitch_155
    const-string v0, "02"

    const-string v2, "/SD"

    invoke-direct {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_180

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_180

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "06"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    :cond_180
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    if-lez v0, :cond_190

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    :cond_190
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "02"

    const-string v2, "Expired"

    invoke-static {v1, v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    :goto_199
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "02"

    invoke-static {v1, v0, v6, v7}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;J)J

    goto/16 :goto_19

    :cond_1a2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "02"

    const-string v2, "Downloadable"

    invoke-static {v1, v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_199

    :cond_1ac
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, "02"

    const-string v2, "Downloadable"

    invoke-static {v1, v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_199

    :pswitch_1b6
    const-string v2, "product_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mymedia_category"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->l:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_19

    :pswitch_1c9
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v8, :cond_1ea

    const-string v1, "parent_product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mymedia_category"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->af:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/os/Bundle;I)V

    goto/16 :goto_19

    :cond_1ea
    const-string v1, "parent_product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mymedia_category"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mymedia_refresh_status"

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->R:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->n:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x6

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_19

    :pswitch_209
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_225

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_220

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->f:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_19

    :cond_220
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->f()V

    goto/16 :goto_19

    :cond_225
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23f

    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_19

    :cond_23f
    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_19

    nop

    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_43
        :pswitch_68
        :pswitch_83
        :pswitch_9f
        :pswitch_f4
        :pswitch_155
        :pswitch_1b6
        :pswitch_1c9
        :pswitch_209
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->c:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_17
    return-void

    :cond_18
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_31
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_38
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->T:Ljava/lang/String;

    if-nez v1, :cond_94

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, "02"

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Downloadable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v2, "Downloadable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "01"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto :goto_17

    :cond_6e
    const-string v2, "Downloadable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    const-string v0, "Downloadable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto :goto_17

    :cond_86
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_17

    :cond_94
    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :cond_9c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :cond_a8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;)V

    goto/16 :goto_17

    :cond_af
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_17

    :cond_c9
    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_17
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setDownloadingTotalSize(J)V

    return-void
.end method

.method public final d()V
    .registers 12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-wide v6, v0, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v9, v0, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v10, v0, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v1, "01"

    :cond_32
    :goto_32
    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;II)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3c
    const-string v1, "02"

    goto :goto_32
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_53

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    :goto_18
    return v0

    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_58

    invoke-direct {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-direct {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Z)V

    goto :goto_18

    :cond_2a
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->startActivity(Landroid/content/Intent;)V

    :cond_53
    :goto_53
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_18

    :cond_58
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_53

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    goto :goto_53
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->overridePendingTransition(II)V

    :cond_e
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const v4, 0x7f0a00d6

    const/16 v6, 0x23

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_218

    :cond_e
    :goto_e
    :pswitch_e
    return-void

    :pswitch_f
    packed-switch p2, :pswitch_data_226

    :cond_12
    :goto_12
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->a:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    goto :goto_e

    :pswitch_17
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/fi;->g:Lcom/sdgtl/mediahub/spr/screen/fi;

    if-ne v2, v3, :cond_2c

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->finish()V

    :cond_26
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_12

    :cond_2c
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/fi;->e:Lcom/sdgtl/mediahub/spr/screen/fi;

    if-ne v2, v3, :cond_47

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e()V

    goto :goto_12

    :cond_3c
    const v0, 0x7f0a011d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_12

    :cond_47
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/fi;->f:Lcom/sdgtl/mediahub/spr/screen/fi;

    if-ne v2, v3, :cond_62

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->f()V

    goto :goto_12

    :cond_57
    const v0, 0x7f0a011d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_12

    :cond_62
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/fi;->b:Lcom/sdgtl/mediahub/spr/screen/fi;

    if-ne v2, v3, :cond_ba

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Z)Z

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Z)V

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Q:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->y:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_94
    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v6, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->G:J

    :cond_a4
    :goto_a4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0xf

    invoke-static {v0, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->H:J

    goto/16 :goto_12

    :cond_b0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_94

    :cond_ba
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/fi;->c:Lcom/sdgtl/mediahub/spr/screen/fi;

    if-ne v2, v3, :cond_15b

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_db

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    :cond_db
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v2, "02"

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    move v0, v1

    :cond_e2
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->T:Ljava/lang/String;

    if-nez v1, :cond_140

    if-nez v0, :cond_140

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, "02"

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Downloadable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const-string v2, "Downloadable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_118

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "01"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto :goto_a4

    :cond_118
    const-string v2, "Downloadable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_131

    const-string v0, "Downloadable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V

    goto/16 :goto_a4

    :cond_131
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_a4

    :cond_140
    if-eqz v0, :cond_148

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    const-string v1, "02"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :cond_148
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    if-nez v0, :cond_154

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->T:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :cond_154
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;)V

    goto/16 :goto_a4

    :cond_15b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/fi;->d:Lcom/sdgtl/mediahub/spr/screen/fi;

    if-ne v1, v2, :cond_a4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v1

    if-eqz v1, :cond_17f

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    :cond_17f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E:Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/common/di;)V

    goto/16 :goto_a4

    :pswitch_186
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Q:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->finish()V

    goto/16 :goto_12

    :pswitch_18f
    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    if-eq v2, p2, :cond_1b1

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->x:Landroid/widget/Button;

    aget-object v2, v2, p2

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setCategory(I)V

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Z)V

    :cond_1b1
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v3, "mymedia_refresh_status"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->R:Z

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->R:Z

    if-eqz v2, :cond_e

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1dd

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->b:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v1, 0x3

    invoke-static {p0, v0, v5, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_e

    :cond_1dd
    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Z)V

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Q:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v6, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->G:J

    goto/16 :goto_e

    :cond_1f1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->i(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_e

    :pswitch_1f8
    if-nez p2, :cond_1ff

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->finish()V

    goto/16 :goto_e

    :cond_1ff
    const/16 v0, 0x64

    if-ne p2, v0, :cond_e

    const-string v0, "notice_message"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {p0, v0, v5}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_e

    :pswitch_data_218
    .packed-switch 0x3
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_18f
        :pswitch_1f8
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0x1
        :pswitch_17
        :pswitch_186
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->g()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_ARCHIVE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->al:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->an:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Q:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->R:Z

    const-string v0, "download_option"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->T:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->e()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/d/b;->a(Landroid/content/Context;)V

    :cond_65
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_8f

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1e2

    :cond_7d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/c/a;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iput-boolean v3, v0, Lcom/sdgtl/mediahub/spr/common/cr;->i:Z

    :cond_8f
    :goto_8f
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->setContentView(I)V

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->t:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->y:Landroid/widget/TextView;

    const v0, 0x7f0d00b7

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->z:Landroid/widget/TextView;

    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->B:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->n:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setCategory(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ep;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ep;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemDownloadClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/eq;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/eq;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemDownloadStopClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadStopClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/er;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/er;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemDownloadResumeClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadResumeClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/es;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/es;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemDownloadPauseClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadPauseClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/et;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/et;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemPlayClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/eu;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/eu;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setOnItemPlayLongClickListener(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;)V

    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aj:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ak:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->C:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_20d

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-direct {v0, p0, v1, v3}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Y:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->X:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->X:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Y:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->X:Landroid/widget/ListView;

    invoke-static {p0, v0, v2, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;II)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->X:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ev;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ev;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0d00bc

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->A:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->A:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ew;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ew;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00be

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->aa:Landroid/widget/LinearLayout;

    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ab:Landroid/widget/FrameLayout;

    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ac:Landroid/widget/ImageView;

    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ad:Landroid/widget/ImageView;

    :goto_1b5
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->g()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_223

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->C:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1c5
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1df

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1df

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->H:J

    :cond_1df
    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ag:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    return-void

    :cond_1e2
    move v1, v2

    :goto_1e3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1fd

    :cond_1eb
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8f

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    goto/16 :goto_8f

    :cond_1fd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->i:Z

    if-nez v0, :cond_1eb

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e3

    :cond_20d
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->x:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->x:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/fa;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/fa;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1b5

    :cond_223
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Z)V

    goto :goto_1c5
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

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
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a006d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/eo;

    invoke-direct {v2, p0, v1}, Lcom/sdgtl/mediahub/spr/screen/eo;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ag:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->h()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->al:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->an:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_c
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

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->R:Z

    if-eqz v0, :cond_24

    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_23
    return v0

    :cond_24
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_ca

    :cond_2b
    :goto_2b
    :pswitch_2b
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_23

    :pswitch_30
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->b:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_2b

    :cond_46
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Z)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Q:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x23

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->G:J

    goto :goto_2b

    :cond_5b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->i(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_2b

    :pswitch_61
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Z)Z

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    if-eqz v0, :cond_2b

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    const-string v0, "mymedia_sort"

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Z)V

    goto :goto_2b

    :pswitch_79
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Z)Z

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    if-eq v0, v2, :cond_2b

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    const-string v0, "mymedia_sort"

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Z)V

    goto :goto_2b

    :pswitch_91
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->g:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_2b

    :cond_a1
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_aa

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->finish()V

    :cond_aa
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_2b

    :pswitch_b1
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    goto/16 :goto_2b

    :pswitch_b6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0140"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_2b

    nop

    :pswitch_data_ca
    .packed-switch 0x7f0d016a
        :pswitch_b6
        :pswitch_30
        :pswitch_2b
        :pswitch_2b
        :pswitch_61
        :pswitch_79
        :pswitch_91
        :pswitch_b1
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->S:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setDownloadingTotalSize(J)V

    :cond_11
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->am:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->removeDialog(I)V

    :cond_9
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x0

    const v0, 0x7f0d016b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ah:Landroid/view/MenuItem;

    const v0, 0x7f0d016c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ai:Landroid/view/MenuItem;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    const v0, 0x7f0d0171

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->ah:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2c
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {p0, p0, v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->S:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->F:I

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

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->am:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;Lcom/sdgtl/mediahub/spr/download/a;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0x35

    invoke-static {v0, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->K:J

    :cond_5a
    const-string v0, "mymedia_sort"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_111

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    :goto_68
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v3, :cond_7e

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v3

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_7e
    if-eqz v1, :cond_82

    if-nez v0, :cond_115

    :cond_82
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    :cond_87
    :goto_87
    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->a()I

    move-result v0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->a()I

    move-result v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/d/b;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b5

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/d/b;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->m()V

    :cond_b5
    const-string v0, "key_update_db_yn"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c5

    const-string v1, "update_db_n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18f

    :cond_c5
    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Q:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_d2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Y:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->initCategoryCount()V

    :cond_d2
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_188

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_fa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->refresh(Ljava/util/ArrayList;)V

    :cond_fa
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/fi;->b:Lcom/sdgtl/mediahub/spr/screen/fi;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->W:Lcom/sdgtl/mediahub/spr/screen/fi;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v1, 0x3

    invoke-static {p0, v0, v6, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :cond_104
    :goto_104
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_200

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3a

    :cond_111
    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->O:I

    goto/16 :goto_68

    :cond_115
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_122

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    goto/16 :goto_87

    :cond_122
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    goto/16 :goto_87

    :cond_133
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    goto/16 :goto_87

    :cond_144
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->s:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->t:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_14d

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_14d
    if-eqz v1, :cond_152

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_152
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_15b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_15b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_177

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->refresh(Ljava/util/ArrayList;)V

    :cond_177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x23

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->G:J

    goto/16 :goto_104

    :cond_188
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->g:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->i(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_104

    :cond_18f
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_1d3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1a9

    :cond_1a1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/c/a;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    :cond_1a9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Y:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->notifyDataSetChanged()V

    move v1, v2

    :goto_1af
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1f0

    :cond_1b7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d3

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iget v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->N:I

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setCategory(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Y:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    :cond_1d3
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->j()Z

    move-result v0

    if-nez v0, :cond_104

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->B:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1e5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1eb

    :cond_1e5
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_104

    :cond_1eb
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Z)V

    goto/16 :goto_104

    :cond_1f0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->i:Z

    if-nez v0, :cond_1b7

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1af

    :cond_200
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Z)V

    goto/16 :goto_3a
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onStop()V

    return-void
.end method
