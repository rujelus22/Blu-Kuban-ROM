.class public Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;
.super Landroid/app/Activity;


# instance fields
.field private A:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private B:Lcom/mobfox/video/sdk/bj;

.field private C:Lcom/mobfox/video/sdk/bv;

.field private D:Lcom/mobfox/video/sdk/bv;

.field private E:Lcom/mobfox/video/sdk/bv;

.field private F:Lcom/mobfox/video/sdk/z;

.field private G:Landroid/widget/ImageView;

.field private H:Lcom/mobfox/video/sdk/q;

.field private I:Lcom/mobfox/video/sdk/cl;

.field private J:Lcom/mobfox/video/sdk/cs;

.field private K:Lcom/mobfox/video/sdk/g;

.field private L:Landroid/net/Uri;

.field private M:Ljava/util/Timer;

.field private N:Ljava/util/Timer;

.field private O:Ljava/util/Timer;

.field private P:Ljava/util/Timer;

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:Z

.field private W:Z

.field private X:I

.field private Y:I

.field private Z:I

.field protected a:Z

.field private aa:Z

.field private ab:Landroid/os/Handler;

.field private ac:Lcom/mobfox/video/sdk/bt;

.field private ad:Landroid/view/View$OnClickListener;

.field private ae:Landroid/view/View$OnClickListener;

.field b:Landroid/util/DisplayMetrics;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/media/MediaPlayer$OnErrorListener;

.field h:Landroid/media/MediaPlayer$OnPreparedListener;

.field i:Landroid/media/MediaPlayer$OnCompletionListener;

.field j:Lcom/mobfox/video/sdk/bs;

.field k:Lcom/mobfox/video/sdk/ag;

.field l:Lcom/mobfox/video/sdk/ai;

.field m:Lcom/mobfox/video/sdk/bt;

.field n:Lcom/mobfox/video/sdk/bt;

.field o:Landroid/view/View$OnClickListener;

.field p:Lcom/mobfox/video/sdk/ah;

.field q:Landroid/view/View$OnClickListener;

.field r:Lcom/mobfox/video/sdk/y;

.field s:Lcom/mobfox/video/sdk/bz;

.field t:Lcom/mobfox/video/sdk/bz;

.field private u:Lcom/mobfox/video/sdk/ci;

.field private v:Landroid/widget/FrameLayout;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/widget/FrameLayout;

.field private y:Landroid/widget/FrameLayout;

.field private z:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->W:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->c:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->d:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->e:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->f:I

    new-instance v0, Lcom/mobfox/video/sdk/aj;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/aj;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->ab:Landroid/os/Handler;

    new-instance v0, Lcom/mobfox/video/sdk/au;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/au;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->ac:Lcom/mobfox/video/sdk/bt;

    new-instance v0, Lcom/mobfox/video/sdk/av;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/av;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->ad:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mobfox/video/sdk/aw;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/aw;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->g:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/mobfox/video/sdk/ax;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/ax;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->h:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/mobfox/video/sdk/ay;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/ay;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->i:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/mobfox/video/sdk/az;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/az;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->j:Lcom/mobfox/video/sdk/bs;

    new-instance v0, Lcom/mobfox/video/sdk/ba;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/ba;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->k:Lcom/mobfox/video/sdk/ag;

    new-instance v0, Lcom/mobfox/video/sdk/bb;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/bb;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->l:Lcom/mobfox/video/sdk/ai;

    new-instance v0, Lcom/mobfox/video/sdk/ak;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/ak;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->m:Lcom/mobfox/video/sdk/bt;

    new-instance v0, Lcom/mobfox/video/sdk/al;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/al;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->n:Lcom/mobfox/video/sdk/bt;

    new-instance v0, Lcom/mobfox/video/sdk/am;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/am;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mobfox/video/sdk/an;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/an;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->p:Lcom/mobfox/video/sdk/ah;

    new-instance v0, Lcom/mobfox/video/sdk/ao;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/ao;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->ae:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mobfox/video/sdk/ap;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/ap;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->q:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mobfox/video/sdk/aq;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/aq;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->r:Lcom/mobfox/video/sdk/y;

    new-instance v0, Lcom/mobfox/video/sdk/ar;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/ar;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->s:Lcom/mobfox/video/sdk/bz;

    new-instance v0, Lcom/mobfox/video/sdk/as;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/as;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->t:Lcom/mobfox/video/sdk/bz;

    return-void
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;II)V
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;Ljava/util/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->N:Ljava/util/Timer;

    return-void
.end method

.method static synthetic b(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/ci;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->u:Lcom/mobfox/video/sdk/ci;

    return-object v0
.end method

.method private b()V
    .registers 12

    const/16 v10, 0x11

    const-wide v8, 0x3fbe666666666666L

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->c()Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->a:I

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->a:I

    if-nez v0, :cond_297

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    if-ge v0, v1, :cond_2d

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    iput v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->f:I

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->T:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->g:I

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->U:I

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->T:I

    if-gtz v0, :cond_2a7

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->T:I

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->U:I

    :cond_45
    :goto_45
    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Video size ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->T:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->U:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->w:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mobfox/video/sdk/bj;

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->T:I

    iget v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->U:I

    iget-object v4, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v4, v4, Lcom/mobfox/video/sdk/cs;->c:I

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/mobfox/video/sdk/bj;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->w:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->I:Z

    if-eqz v0, :cond_10a

    new-instance v0, Lcom/mobfox/video/sdk/bv;

    iget-object v5, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->u:Lcom/mobfox/video/sdk/ci;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/mobfox/video/sdk/bv;-><init>(Landroid/app/Activity;ZZZLcom/mobfox/video/sdk/ci;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->C:Lcom/mobfox/video/sdk/bv;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->C:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/bv;->i()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->C:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->ad:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->C:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/bv;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->J:I

    if-lez v0, :cond_d3

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->C:Lcom/mobfox/video/sdk/bv;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v1, v1, Lcom/mobfox/video/sdk/cs;->J:I

    iget-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->ac:Lcom/mobfox/video/sdk/bt;

    invoke-virtual {v0, v1, v3}, Lcom/mobfox/video/sdk/bj;->a(ILcom/mobfox/video/sdk/bt;)V

    :cond_d3
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->K:I

    if-nez v0, :cond_2d9

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->C:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v1, v1, Lcom/mobfox/video/sdk/cs;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->a(Ljava/lang/String;)V

    :goto_e2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-boolean v1, v1, Lcom/mobfox/video/sdk/cs;->q:Z

    if-eqz v1, :cond_2e4

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-boolean v1, v1, Lcom/mobfox/video/sdk/cs;->o:Z

    if-eqz v1, :cond_2e4

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    int-to-double v3, v1

    mul-double/2addr v3, v8

    double-to-int v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    int-to-double v3, v1

    mul-double/2addr v3, v8

    double-to-int v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_103
    :goto_103
    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->w:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->C:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10a
    new-instance v0, Lcom/mobfox/video/sdk/z;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    invoke-direct {v0, p0, v1}, Lcom/mobfox/video/sdk/z;-><init>(Landroid/content/Context;Lcom/mobfox/video/sdk/cs;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->F:Lcom/mobfox/video/sdk/z;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->F:Lcom/mobfox/video/sdk/z;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bj;->a(Lcom/mobfox/video/sdk/z;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->m:Z

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->F:Lcom/mobfox/video/sdk/z;

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/z;->a(I)V

    :cond_125
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->E:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_136

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->F:Lcom/mobfox/video/sdk/z;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->k:Lcom/mobfox/video/sdk/ag;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/z;->a(Lcom/mobfox/video/sdk/ag;)V

    :cond_136
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->F:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_147

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->F:Lcom/mobfox/video/sdk/z;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->l:Lcom/mobfox/video/sdk/ai;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/z;->a(Lcom/mobfox/video/sdk/ai;)V

    :cond_147
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->H:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_158

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->F:Lcom/mobfox/video/sdk/z;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->p:Lcom/mobfox/video/sdk/ah;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/z;->a(Lcom/mobfox/video/sdk/ah;)V

    :cond_158
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->w:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->F:Lcom/mobfox/video/sdk/z;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x7

    invoke-direct {v3, v7, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/cs;->j:Z

    if-eqz v0, :cond_343

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->e:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v1, v1, Lcom/mobfox/video/sdk/cs;->a:I

    if-ne v1, v6, :cond_19d

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->f:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    :cond_19d
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v1, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->a:I

    if-ne v0, v6, :cond_316

    const/high16 v0, 0x4100

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1bd
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->l:Ljava/lang/String;

    if-eqz v0, :cond_32b

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32b

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->u:Lcom/mobfox/video/sdk/ci;

    iget-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v3, v3, Lcom/mobfox/video/sdk/cs;->l:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_1d6
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->k:I

    if-lez v0, :cond_33a

    iput-boolean v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->V:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1ec
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->w:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1f3
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v0, v0, Lcom/mobfox/video/sdk/cs;->k:I

    if-lez v0, :cond_204

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget v1, v1, Lcom/mobfox/video/sdk/cs;->k:I

    iget-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->n:Lcom/mobfox/video/sdk/bt;

    invoke-virtual {v0, v1, v3}, Lcom/mobfox/video/sdk/bj;->a(ILcom/mobfox/video/sdk/bt;)V

    :cond_204
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->x:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/mobfox/video/sdk/f;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->w:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->x:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->h:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bj;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->i:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bj;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->g:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bj;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_253

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->j:Lcom/mobfox/video/sdk/bs;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bj;->a(Lcom/mobfox/video/sdk/bs;)V

    :cond_253
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26f

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_269
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_347

    :cond_26f
    iput v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->S:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-static {v1}, Lcom/mobfox/video/sdk/i;->a(Lcom/mobfox/video/sdk/cl;)Lcom/mobfox/video/sdk/i;

    move-result-object v1

    if-eqz v1, :cond_291

    invoke-static {v1}, Lcom/mobfox/video/sdk/b;->a(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/b;

    move-result-object v1

    if-eqz v1, :cond_291

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_291

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->h:Ljava/lang/String;

    :cond_291
    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/bj;->a(Ljava/lang/String;)V

    return-void

    :cond_297
    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    if-ge v0, v1, :cond_2d

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    iput v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    goto/16 :goto_2d

    :cond_2a7
    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->T:I

    int-to-float v1, v1

    invoke-static {v6, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->T:I

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->U:I

    int-to-float v1, v1

    invoke-static {v6, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->U:I

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->T:I

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    if-le v0, v1, :cond_2cd

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->T:I

    :cond_2cd
    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->U:I

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    if-le v0, v1, :cond_45

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->U:I

    goto/16 :goto_45

    :cond_2d9
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->C:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-object v1, v1, Lcom/mobfox/video/sdk/cs;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->b(Ljava/lang/String;)V

    goto/16 :goto_e2

    :cond_2e4
    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-boolean v1, v1, Lcom/mobfox/video/sdk/cs;->q:Z

    if-eqz v1, :cond_2fd

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-boolean v1, v1, Lcom/mobfox/video/sdk/cs;->o:Z

    if-nez v1, :cond_2fd

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    int-to-double v3, v1

    mul-double/2addr v3, v8

    double-to-int v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_103

    :cond_2fd
    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-boolean v1, v1, Lcom/mobfox/video/sdk/cs;->o:Z

    if-eqz v1, :cond_103

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    iget-boolean v1, v1, Lcom/mobfox/video/sdk/cs;->q:Z

    if-nez v1, :cond_103

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    int-to-double v3, v1

    mul-double/2addr v3, v8

    double-to-int v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_103

    :cond_316
    const/high16 v0, 0x4120

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1bd

    :cond_32b
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->u:Lcom/mobfox/video/sdk/ci;

    const/16 v4, -0x12

    invoke-virtual {v3, v4}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1d6

    :cond_33a
    iput-boolean v6, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->V:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1ec

    :cond_343
    iput-boolean v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->V:Z

    goto/16 :goto_1f3

    :cond_347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    iget-object v4, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->m:Lcom/mobfox/video/sdk/bt;

    invoke-virtual {v3, v0, v4}, Lcom/mobfox/video/sdk/bj;->a(ILcom/mobfox/video/sdk/bt;)V

    goto/16 :goto_269
.end method

.method static synthetic b(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;Ljava/util/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->O:Ljava/util/Timer;

    return-void
.end method

.method static synthetic c(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/bv;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->C:Lcom/mobfox/video/sdk/bv;

    return-object v0
.end method

.method static synthetic d(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/z;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->F:Lcom/mobfox/video/sdk/z;

    return-object v0
.end method

.method static synthetic e(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->P:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic f(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->P:Ljava/util/Timer;

    return-void
.end method

.method static synthetic g(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->x:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/bj;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    return-object v0
.end method

.method static synthetic i(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/cs;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->J:Lcom/mobfox/video/sdk/cs;

    return-object v0
.end method

.method static synthetic j(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)I
    .registers 2

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    return v0
.end method

.method static synthetic k(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/cl;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    return-object v0
.end method

.method static synthetic l(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)I
    .registers 2

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Y:I

    return v0
.end method

.method static synthetic m(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)I
    .registers 2

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Z:I

    return v0
.end method

.method static synthetic n(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->aa:Z

    return-void
.end method

.method static synthetic o(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->V:Z

    return-void
.end method

.method static synthetic p(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/q;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->H:Lcom/mobfox/video/sdk/q;

    return-object v0
.end method

.method static synthetic q(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->N:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic r(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/g;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    return-object v0
.end method

.method static synthetic s(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->O:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic t(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->M:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic u(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->M:Ljava/util/Timer;

    return-void
.end method

.method static synthetic v(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->W:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x3

    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MOBFOX"

    const-string v1, "onHideCustomView Hidding Custom View"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->y:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->y:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->z:Landroid/widget/VideoView;

    if-eqz v0, :cond_39

    :try_start_22
    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "MOBFOX"

    const-string v1, "onHideCustomView stop video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->z:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_37} :catch_59

    :cond_37
    :goto_37
    iput-object v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->z:Landroid/widget/VideoView;

    :cond_39
    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "MOBFOX"

    const-string v1, "onHideCustomView calling callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->A:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->v:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->v:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setContentView(Landroid/view/View;)V

    return-void

    :catch_59
    move-exception v0

    const-string v0, "MOBFOX"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "MOBFOX"

    const-string v1, "Couldn\'t stop custom video view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public final a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6

    const/4 v2, 0x3

    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, " onShowCustomView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5e

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->y:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->A:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_4c

    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "MOBFOX"

    const-string v1, " onShowCustomView Starting Video View"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->z:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->z:Landroid/widget/VideoView;

    new-instance v1, Lcom/mobfox/video/sdk/at;

    invoke-direct {v1, p0}, Lcom/mobfox/video/sdk/at;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->z:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_4c
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->v:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->y:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->y:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setContentView(Landroid/view/View;)V

    :cond_5e
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    packed-switch v0, :pswitch_data_24

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->startActivity(Landroid/content/Intent;)V

    :goto_16
    return-void

    :pswitch_17
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->E:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v0, p1}, Lcom/mobfox/video/sdk/bv;->a(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_1d
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v0, p1}, Lcom/mobfox/video/sdk/bv;->a(Ljava/lang/String;)V

    goto :goto_16

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_17
        :pswitch_5
        :pswitch_1d
    .end packed-switch
.end method

.method public finish()V
    .registers 6

    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finish Activity type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ad Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v2}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    packed-switch v0, :pswitch_data_7c

    :cond_35
    :goto_35
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    if-eqz v0, :cond_43

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Y:I

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Z:I

    invoke-static {p0, v0, v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Landroid/app/Activity;II)V

    :cond_43
    return-void

    :pswitch_44
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_59

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v0

    if-ne v0, v3, :cond_35

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->aa:Z

    if-nez v0, :cond_35

    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    iget-boolean v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->aa:Z

    invoke-static {v0, v1}, Lcom/mobfox/video/sdk/i;->a(Lcom/mobfox/video/sdk/cl;Z)V

    goto :goto_35

    :pswitch_61
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v0

    if-eq v0, v4, :cond_59

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v0

    if-eq v0, v3, :cond_59

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    goto :goto_59

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_44
        :pswitch_61
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxRichMediaActivity onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/16 v6, 0x200

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "MOBFOX"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxRichMediaActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->aa:Z

    iput-boolean v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->W:Z

    invoke-virtual {p0, v3}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v0, 0x400

    const/16 v4, 0x400

    invoke-virtual {v1, v0, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0, v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->requestWindowFeature(I)Z

    invoke-virtual {v1, v6}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->b:Landroid/util/DisplayMetrics;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v5, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    invoke-virtual {v1, v6}, Landroid/view/Window;->clearFlags(I)V

    const-string v0, "MOBFOX"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8f

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "MobFoxRichMediaActivity Window Size:("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Q:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->R:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    invoke-virtual {p0, v8}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setVolumeControlStream(I)V

    iput v7, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_a6

    const-string v4, "MOBFOX_RICH_AD_DATA"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    if-nez v4, :cond_11f

    :cond_a6
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->L:Landroid/net/Uri;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->L:Landroid/net/Uri;

    if-nez v0, :cond_c3

    const-string v0, "MOBFOX"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_bf

    const-string v0, "MOBFOX"

    const-string v1, "url is null so do not load anything"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->finish()V

    :cond_c2
    :goto_c2
    return-void

    :cond_c3
    iput v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    :goto_c5
    new-instance v0, Lcom/mobfox/video/sdk/ci;

    iget-object v4, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->ab:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/mobfox/video/sdk/ci;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->u:Lcom/mobfox/video/sdk/ci;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->v:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    if-nez v0, :cond_123

    new-instance v0, Lcom/mobfox/video/sdk/bv;

    iget-object v5, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->u:Lcom/mobfox/video/sdk/ci;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/mobfox/video/sdk/bv;-><init>(Landroid/app/Activity;ZZZLcom/mobfox/video/sdk/ci;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->E:Lcom/mobfox/video/sdk/bv;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->E:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->t:Lcom/mobfox/video/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->a(Lcom/mobfox/video/sdk/bz;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->v:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->E:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->E:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->L:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/mobfox/video/sdk/cr;->a(I)I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Y:I

    invoke-static {v2}, Lcom/mobfox/video/sdk/cr;->b(I)I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Z:I

    :goto_10a
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->v:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setContentView(Landroid/view/View;)V

    const-string v0, "MOBFOX"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c2

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxRichMediaActivity onCreate done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    :cond_11f
    invoke-virtual {p0, v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->requestWindowFeature(I)Z

    goto :goto_c5

    :cond_123
    const-string v0, "MOBFOX_RICH_AD_DATA"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/cl;

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->b()I

    move-result v0

    invoke-static {v0}, Lcom/mobfox/video/sdk/cr;->a(I)I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Y:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->b()I

    move-result v0

    invoke-static {v0}, Lcom/mobfox/video/sdk/cr;->b(I)I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->Z:I

    iput-boolean v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->V:Z

    const-string v0, "MOBFOX_RICH_AD_TYPE"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    if-ne v0, v7, :cond_15c

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_2d2

    :cond_15c
    :goto_15c
    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    packed-switch v0, :pswitch_data_2de

    goto :goto_10a

    :pswitch_162
    invoke-direct {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->b()V

    goto :goto_10a

    :pswitch_166
    iput v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    goto :goto_15c

    :pswitch_169
    const/4 v0, 0x2

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    goto :goto_15c

    :pswitch_16d
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->I:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->d()Lcom/mobfox/video/sdk/g;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iput-boolean v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget v0, v0, Lcom/mobfox/video/sdk/g;->b:I

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setRequestedOrientation(I)V

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/mobfox/video/sdk/bv;

    iget-object v5, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->u:Lcom/mobfox/video/sdk/ci;

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/mobfox/video/sdk/bv;-><init>(Landroid/app/Activity;ZZZLcom/mobfox/video/sdk/ci;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v0, v3}, Lcom/mobfox/video/sdk/bv;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->s:Lcom/mobfox/video/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->a(Lcom/mobfox/video/sdk/bz;)V

    new-instance v0, Lcom/mobfox/video/sdk/q;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    invoke-direct {v0, p0, v1}, Lcom/mobfox/video/sdk/q;-><init>(Landroid/content/Context;Lcom/mobfox/video/sdk/g;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->H:Lcom/mobfox/video/sdk/q;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->H:Lcom/mobfox/video/sdk/q;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/q;->a(Lcom/mobfox/video/sdk/w;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->H:Lcom/mobfox/video/sdk/q;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/q;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->H:Lcom/mobfox/video/sdk/q;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->r:Lcom/mobfox/video/sdk/y;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/q;->a(Lcom/mobfox/video/sdk/y;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->H:Lcom/mobfox/video/sdk/q;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v1, v7, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->i:Z

    if-eqz v0, :cond_1cf

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->H:Lcom/mobfox/video/sdk/q;

    invoke-virtual {v0, v3}, Lcom/mobfox/video/sdk/q;->a(I)V

    :cond_1cf
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->f:Z

    if-eqz v0, :cond_2c3

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->e:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget v1, v1, Lcom/mobfox/video/sdk/g;->b:I

    if-ne v1, v2, :cond_207

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->f:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    :cond_207
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x35

    invoke-direct {v1, v0, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget v0, v0, Lcom/mobfox/video/sdk/g;->b:I

    if-ne v0, v2, :cond_298

    const/high16 v0, 0x4100

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_227
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->h:Ljava/lang/String;

    if-eqz v0, :cond_2ad

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget-object v0, v0, Lcom/mobfox/video/sdk/g;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2ad

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->u:Lcom/mobfox/video/sdk/ci;

    iget-object v4, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget-object v4, v4, Lcom/mobfox/video/sdk/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/mobfox/video/sdk/ci;->a(Ljava/lang/String;I)V

    :goto_246
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget v0, v0, Lcom/mobfox/video/sdk/g;->g:I

    if-lez v0, :cond_2bb

    iput-boolean v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->V:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->M:Ljava/util/Timer;

    if-nez v0, :cond_273

    new-instance v0, Lcom/mobfox/video/sdk/bg;

    invoke-direct {v0, p0}, Lcom/mobfox/video/sdk/bg;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->M:Ljava/util/Timer;

    iget-object v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->M:Ljava/util/Timer;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_273
    :goto_273
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_278
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->ae:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget v0, v0, Lcom/mobfox/video/sdk/g;->c:I

    packed-switch v0, :pswitch_data_2e6

    goto/16 :goto_10a

    :pswitch_28d
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->a(Ljava/lang/String;)V

    goto/16 :goto_10a

    :cond_298
    const/high16 v0, 0x4120

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_227

    :cond_2ad
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->u:Lcom/mobfox/video/sdk/ci;

    const/16 v5, -0x12

    invoke-virtual {v4, v5}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_246

    :cond_2bb
    iput-boolean v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->V:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_273

    :cond_2c3
    iput-boolean v3, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->V:Z

    goto :goto_278

    :pswitch_2c6
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->b(Ljava/lang/String;)V

    goto/16 :goto_10a

    nop

    :pswitch_data_2d2
    .packed-switch 0x1
        :pswitch_166
        :pswitch_166
        :pswitch_169
        :pswitch_169
    .end packed-switch

    :pswitch_data_2de
    .packed-switch 0x1
        :pswitch_162
        :pswitch_16d
    .end packed-switch

    :pswitch_data_2e6
    .packed-switch 0x0
        :pswitch_28d
        :pswitch_2c6
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v2, 0x3

    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxRichMediaActivity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxRichMediaActivity onDestroy done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_51

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->y:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1c

    const-string v1, "MOBFOX"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "MOBFOX"

    const-string v2, "Closing custom view on back key pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a()V

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    packed-switch v1, :pswitch_data_56

    goto :goto_1b

    :pswitch_22
    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->E:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/bv;->b()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->E:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/bv;->d()V

    goto :goto_1b

    :pswitch_30
    iget-boolean v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->V:Z

    if-eqz v1, :cond_1b

    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->finish()V

    goto :goto_1b

    :pswitch_38
    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/bv;->b()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/bv;->d()V

    goto :goto_1b

    :cond_46
    iget-boolean v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->V:Z

    if-eqz v1, :cond_1b

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->aa:Z

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setResult(I)V

    goto :goto_34

    :cond_51
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1b

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_22
        :pswitch_30
        :pswitch_38
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    const/4 v3, 0x3

    const/4 v2, 0x0

    const-string v0, "MOBFOX"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxRichMediaActivity onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    packed-switch v0, :pswitch_data_6c

    :cond_19
    :goto_19
    const-string v0, "MOBFOX"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxRichMediaActivity onPause done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void

    :pswitch_29
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/bj;->d()I

    move-result v0

    iput v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->S:I

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/bj;->f()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->v:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->P:Ljava/util/Timer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->P:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->P:Ljava/util/Timer;

    goto :goto_19

    :pswitch_49
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->M:Ljava/util/Timer;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->M:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->M:Ljava/util/Timer;

    :cond_54
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->N:Ljava/util/Timer;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->N:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->N:Ljava/util/Timer;

    :cond_5f
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->O:Ljava/util/Timer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->O:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->O:Ljava/util/Timer;

    goto :goto_19

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_49
    .end packed-switch
.end method

.method protected onResume()V
    .registers 6

    const/4 v4, 0x3

    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxRichMediaActivity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->X:I

    packed-switch v0, :pswitch_data_78

    :cond_18
    :goto_18
    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxRichMediaActivity onResume done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void

    :pswitch_28
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->v:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    iget v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->S:I

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bj;->a(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->B:Lcom/mobfox/video/sdk/bj;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/bj;->a()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->P:Ljava/util/Timer;

    if-nez v0, :cond_18

    new-instance v0, Lcom/mobfox/video/sdk/bh;

    invoke-direct {v0, p0, p0}, Lcom/mobfox/video/sdk/bh;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;Landroid/app/Activity;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->P:Ljava/util/Timer;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->P:Ljava/util/Timer;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_18

    :pswitch_53
    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget v0, v0, Lcom/mobfox/video/sdk/g;->c:I

    packed-switch v0, :pswitch_data_80

    goto :goto_18

    :pswitch_5b
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->W:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->a(Ljava/lang/String;)V

    goto :goto_18

    :pswitch_69
    iget-boolean v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->W:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->D:Lcom/mobfox/video/sdk/bv;

    iget-object v1, p0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->K:Lcom/mobfox/video/sdk/g;

    iget-object v1, v1, Lcom/mobfox/video/sdk/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/bv;->b(Ljava/lang/String;)V

    goto :goto_18

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_28
        :pswitch_53
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_69
    .end packed-switch
.end method
