.class public Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static at:I

.field private static av:I

.field private static aw:I

.field public static g:Landroid/util/DisplayMetrics;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/LinearLayout;

.field private I:Landroid/widget/LinearLayout;

.field private J:Landroid/widget/LinearLayout;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:J

.field private U:J

.field private V:J

.field private W:J

.field private X:J

.field private Y:J

.field private Z:Z

.field protected a:Lcom/estrongs/android/util/s;

.field private aa:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/android/util/r;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Landroid/widget/RelativeLayout;

.field private ac:Landroid/widget/ImageView;

.field private ad:Z

.field private ae:Landroid/widget/LinearLayout;

.field private af:Landroid/widget/LinearLayout;

.field private ag:Landroid/widget/LinearLayout;

.field private ah:Landroid/widget/FrameLayout;

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:Z

.field private am:Z

.field private an:I

.field private ao:Landroid/widget/ScrollView;

.field private ap:Landroid/os/Parcelable;

.field private aq:Landroid/view/View$OnTouchListener;

.field private ar:Ljava/lang/String;

.field private as:I

.field private au:Z

.field private ax:Landroid/os/Handler;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

.field f:Landroid/widget/TextView;

.field h:[I

.field i:[I

.field j:[I

.field k:[Ljava/lang/String;

.field l:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ListView;

.field private q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/io/File;

.field private s:Lcom/estrongs/android/pop/app/diskusage/t;

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/app/diskusage/t;",
            ">;"
        }
    .end annotation
.end field

.field private u:[Ljava/lang/String;

.field private v:[I

.field private w:Lcom/estrongs/android/widget/ag;

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->at:I

    const/4 v0, 0x5

    sput v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->av:I

    const/4 v0, 0x3

    sput v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aw:I

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    const/4 v8, 0x5

    const/4 v7, 0x6

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->q:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->t:Ljava/util/HashMap;

    new-array v0, v8, [Ljava/lang/String;

    sget-object v1, Lcom/estrongs/android/pop/app/diskusage/t;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/t;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/t;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/t;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/t;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->u:[Ljava/lang/String;

    new-array v0, v8, [I

    fill-array-data v0, :array_a8

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->v:[I

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/a;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a:Lcom/estrongs/android/util/s;

    iput-wide v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->T:J

    iput-wide v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->U:J

    iput-wide v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->V:J

    iput-wide v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->W:J

    iput-wide v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->X:J

    iput-wide v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Y:J

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Z:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aa:Ljava/util/Stack;

    iput-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ab:Landroid/widget/RelativeLayout;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ad:Z

    iput-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->af:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ah:Landroid/widget/FrameLayout;

    iput v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ai:I

    iput v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iput v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ak:I

    iput v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c:I

    iput v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d:I

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->al:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->am:Z

    iput v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->an:I

    iput-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iput-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/l;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aq:Landroid/view/View$OnTouchListener;

    new-array v0, v7, [I

    fill-array-data v0, :array_b6

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_c6

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->i:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_d6

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->j:[I

    iput-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->k:[Ljava/lang/String;

    iput-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ar:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->as:I

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/m;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->l:Landroid/widget/AdapterView$OnItemLongClickListener;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->au:Z

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/n;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    return-void

    :array_a8
    .array-data 0x4
        0xb3t 0x0t 0x7t 0x7ft
        0xb4t 0x0t 0x7t 0x7ft
        0xb5t 0x0t 0x7t 0x7ft
        0xb7t 0x0t 0x7t 0x7ft
        0xb6t 0x0t 0x7t 0x7ft
    .end array-data

    :array_b6
    .array-data 0x4
        0x0t 0x9ct 0xfft 0xfft
        0xadt 0xa3t 0x31t 0xfft
        0xbft 0x5at 0xc4t 0xfft
        0x1t 0x2t 0x9at 0xfft
        0x43t 0xb7t 0x82t 0xfft
        0x0t 0xfft 0xfct 0xfft
    .end array-data

    :array_c6
    .array-data 0x4
        0x9ct 0x0t 0x7t 0x7ft
        0x9et 0x0t 0x7t 0x7ft
        0xa0t 0x0t 0x7t 0x7ft
        0xa2t 0x0t 0x7t 0x7ft
        0xa4t 0x0t 0x7t 0x7ft
        0xa6t 0x0t 0x7t 0x7ft
    .end array-data

    :array_d6
    .array-data 0x4
        0x9dt 0x0t 0x7t 0x7ft
        0x9ft 0x0t 0x7t 0x7ft
        0xa1t 0x0t 0x7t 0x7ft
        0xa3t 0x0t 0x7t 0x7ft
        0xa5t 0x0t 0x7t 0x7ft
        0xa7t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method static synthetic A(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->w:Lcom/estrongs/android/widget/ag;

    return-object v0
.end method

.method static synthetic a(I)V
    .registers 1

    sput p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aw:I

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->am:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_84

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-gez v0, :cond_4f

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move v4, v0

    move v0, v2

    :goto_1d
    const/16 v5, -0x3e8

    if-eq v3, v5, :cond_82

    if-lez v3, :cond_65

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    add-int/lit8 v0, v3, -0xa

    if-gez v0, :cond_7f

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ad:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ac:Landroid/widget/ImageView;

    const v3, 0x7f020085

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_38
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    move v0, v1

    :goto_3e
    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    :cond_4f
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, -0x5

    move v4, v0

    move v0, v1

    goto :goto_1d

    :cond_5c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ac:Landroid/widget/ImageView;

    const v3, 0x7f020086

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_38

    :cond_65
    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ac:Landroid/widget/ImageView;

    rsub-int/lit8 v5, v3, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    add-int/lit8 v2, v3, -0xa

    const/16 v3, -0xff

    if-le v2, v3, :cond_74

    move v0, v1

    goto :goto_3e

    :cond_74
    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ac:Landroid/widget/ImageView;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_3e

    :cond_7c
    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->am:Z

    goto :goto_6

    :cond_7f
    move v2, v0

    move v0, v1

    goto :goto_3e

    :cond_82
    move v2, v3

    goto :goto_3e

    :cond_84
    move v4, v0

    move v0, v2

    goto :goto_1d
.end method

.method private a(Landroid/widget/ImageView;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, p2, :cond_f

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;J)V
    .registers 3

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->z:J

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->r:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->am:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z[J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Z[J)V

    return-void
.end method

.method private a(Lcom/estrongs/android/util/r;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aa:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lt v1, v0, :cond_3c

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->y:J

    iget-wide v2, p1, Lcom/estrongs/android/util/r;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->y:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->T:J

    iget-wide v2, p1, Lcom/estrongs/android/util/r;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->T:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->U:J

    iget-wide v2, p1, Lcom/estrongs/android/util/r;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->U:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->V:J

    iget-wide v2, p1, Lcom/estrongs/android/util/r;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->V:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->W:J

    iget-wide v2, p1, Lcom/estrongs/android/util/r;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->W:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->X:J

    iget-wide v2, p1, Lcom/estrongs/android/util/r;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->X:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Y:J

    iget-wide v2, p1, Lcom/estrongs/android/util/r;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Y:J

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aa:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/r;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/util/r;Lcom/estrongs/android/util/r;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private a(Lcom/estrongs/android/util/r;Lcom/estrongs/android/util/r;)V
    .registers 7

    iget-wide v0, p1, Lcom/estrongs/android/util/r;->a:J

    iget-wide v2, p2, Lcom/estrongs/android/util/r;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/android/util/r;->a:J

    iget v0, p1, Lcom/estrongs/android/util/r;->b:I

    iget v1, p2, Lcom/estrongs/android/util/r;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/android/util/r;->b:I

    iget v0, p1, Lcom/estrongs/android/util/r;->c:I

    iget v1, p2, Lcom/estrongs/android/util/r;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/android/util/r;->c:I

    iget-wide v0, p1, Lcom/estrongs/android/util/r;->d:J

    iget-wide v2, p2, Lcom/estrongs/android/util/r;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/android/util/r;->d:J

    iget-wide v0, p1, Lcom/estrongs/android/util/r;->e:J

    iget-wide v2, p2, Lcom/estrongs/android/util/r;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/android/util/r;->e:J

    iget-wide v0, p1, Lcom/estrongs/android/util/r;->f:J

    iget-wide v2, p2, Lcom/estrongs/android/util/r;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/android/util/r;->f:J

    iget-wide v0, p1, Lcom/estrongs/android/util/r;->g:J

    iget-wide v2, p2, Lcom/estrongs/android/util/r;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/android/util/r;->g:J

    iget-wide v0, p1, Lcom/estrongs/android/util/r;->h:J

    iget-wide v2, p2, Lcom/estrongs/android/util/r;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/android/util/r;->h:J

    iget-wide v0, p1, Lcom/estrongs/android/util/r;->i:J

    iget-wide v2, p2, Lcom/estrongs/android/util/r;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/android/util/r;->i:J

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_17

    array-length v2, v1

    const/4 v0, 0x0

    :goto_15
    if-lt v0, v2, :cond_20

    :cond_17
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_6

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_20
    :try_start_20
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_28
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_1b

    goto :goto_6
.end method

.method private a(Z[J)V
    .registers 8

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h:[I

    array-length v0, v0

    if-lt v1, v0, :cond_30

    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->k:[Ljava/lang/String;

    array-length v0, v0

    if-lt v2, v0, :cond_49

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ar:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p2, v2

    invoke-static {v2, v3}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_30
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->i:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_49
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->j:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->k:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_76

    const-wide/16 v3, 0x0

    :goto_64
    invoke-static {v3, v4}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_76
    aget-wide v3, p2, v2

    goto :goto_64
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->z:J

    return-wide v0
.end method

.method static synthetic b(I)V
    .registers 1

    sput p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->av:I

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .registers 11

    const-wide/16 v7, 0xa

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/16 v1, 0xff

    const/4 v4, 0x0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_42

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iget v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c:I

    if-le v0, v3, :cond_79

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    add-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iget v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c:I

    if-ge v0, v3, :cond_21

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c:I

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    :cond_21
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iget v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c:I

    if-le v0, v3, :cond_79

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    invoke-virtual {v0, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_41
    return-void

    :cond_42
    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iget v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d:I

    if-ge v0, v3, :cond_79

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    add-int/lit8 v0, v0, 0x50

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iget v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d:I

    if-le v0, v3, :cond_58

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d:I

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    :cond_58
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    iget v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d:I

    if-ge v0, v3, :cond_79

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    invoke-virtual {v0, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_41

    :cond_79
    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->al:Z

    const/16 v0, -0x3e8

    if-nez v2, :cond_94

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ad:Z

    if-eqz v2, :cond_84

    move v0, v1

    :cond_84
    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    invoke-virtual {v2, v6, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ad:Z

    goto :goto_41

    :cond_94
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ad:Z

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v0, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ad:Z

    goto :goto_41
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ak:I

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 10

    const/4 v7, 0x0

    if-eqz p1, :cond_5d

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/a/b;->g(Ljava/lang/String;)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->x:J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->y:J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    mul-long v0, v1, v3

    move-wide v3, v0

    :goto_28
    const v0, 0x7f0700a9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700ac

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700ae

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-wide v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->x:J

    invoke-static {v5, v6}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->y:J

    invoke-static {v5, v6}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3, v4}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5c
    return-void

    :cond_5d
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->x:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->y:J
    :try_end_61
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_61} :catch_64

    sub-long/2addr v0, v2

    move-wide v3, v0

    goto :goto_28

    :catch_64
    move-exception v0

    const v0, 0x7f090169

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5c
.end method

.method static synthetic c()I
    .registers 1

    sget v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aw:I

    return v0
.end method

.method private c(I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/t;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->an:I

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d(Z)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d(Z)V

    goto :goto_15
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->al:Z

    return v0
.end method

.method static synthetic d()I
    .registers 1

    sget v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->av:I

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ai:I

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->au:Z

    return-void
.end method

.method private d(Z)V
    .registers 4

    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_12

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_11
    return-void

    :cond_12
    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11
.end method

.method private e()V
    .registers 9

    const-wide/high16 v6, 0x3fe0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_55

    const/4 v0, 0x1

    :goto_b
    sget-object v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    add-double/2addr v1, v6

    double-to-int v1, v1

    add-int/lit8 v1, v1, -0x1c

    if-eqz v0, :cond_57

    add-int/lit8 v0, v1, -0x36

    :goto_1e
    sget-object v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4210

    mul-float/2addr v1, v2

    float-to-double v1, v1

    add-double/2addr v1, v6

    double-to-int v1, v1

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42ac

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v2, v6

    double-to-int v2, v2

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4288

    mul-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v3, v6

    double-to-int v3, v3

    const/16 v4, 0x170

    if-le v0, v4, :cond_59

    const/high16 v0, 0x43b8

    sget-object v4, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    float-to-double v4, v0

    add-double/2addr v4, v6

    double-to-int v0, v4

    :goto_4a
    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v0, :cond_65

    :goto_54
    return-void

    :cond_55
    const/4 v0, 0x0

    goto :goto_b

    :cond_57
    move v0, v1

    goto :goto_1e

    :cond_59
    add-int/lit8 v0, v0, -0x1c

    int-to-float v0, v0

    sget-object v4, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    float-to-double v4, v0

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_4a

    :cond_65
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ag:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    sub-int v1, v0, v1

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ag:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ah:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sub-int v2, v0, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ah:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ao:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ao:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_54
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->as:I

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Z:Z

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ad:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aj:I

    return v0
.end method

.method private f()V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->an:I

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ad:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_b
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->al:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->am:Z

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1c
    move v0, v2

    goto :goto_b

    :cond_1e
    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->an:I

    if-gez v0, :cond_24

    move v0, v1

    goto :goto_b

    :cond_24
    move v0, v2

    goto :goto_b
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c(I)V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/t;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/r;

    if-eqz v0, :cond_c

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->T:J

    iget-wide v4, v0, Lcom/estrongs/android/util/r;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->T:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->U:J

    iget-wide v4, v0, Lcom/estrongs/android/util/r;->e:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->U:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->V:J

    iget-wide v4, v0, Lcom/estrongs/android/util/r;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->V:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->W:J

    iget-wide v4, v0, Lcom/estrongs/android/util/r;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->W:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->X:J

    iget-wide v4, v0, Lcom/estrongs/android/util/r;->h:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->X:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Y:J

    iget-wide v4, v0, Lcom/estrongs/android/util/r;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Y:J

    goto :goto_c
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ac:Landroid/widget/ImageView;

    return-object v0
.end method

.method private h()V
    .registers 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/j;

    const-string v2, "DiskUsage-Counter"

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/j;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/diskusage/j;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->r:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ai:I

    return v0
.end method

.method private i()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b(Z)V

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ak:I

    return v0
.end method

.method private j()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/view/SupportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "which_help"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_d
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->f()V

    return-void
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->q:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->r:Ljava/io/File;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/pop/app/diskusage/t;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->u:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)[I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->v:[I

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ap:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e()V

    return-void
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->j()V

    return-void
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/util/Stack;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aa:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h()V

    return-void
.end method

.method static synthetic x(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->au:Z

    return v0
.end method

.method static synthetic y(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->t:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic z(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Z:Z

    return v0
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/a/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    const-string v2, "/sdcard"

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_24
    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->r:Ljava/io/File;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->i()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->t:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_85

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/t;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/t;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a:Lcom/estrongs/android/util/s;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/t;->a(Lcom/estrongs/android/util/s;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->x:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/diskusage/t;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->t:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/widget/ag;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->w:Lcom/estrongs/android/widget/ag;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->w:Lcom/estrongs/android/widget/ag;

    new-instance v1, Lcom/estrongs/android/widget/ai;

    invoke-direct {v1}, Lcom/estrongs/android/widget/ai;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ag;->a(Lcom/estrongs/android/widget/aj;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->w:Lcom/estrongs/android/widget/ag;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ag;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->w:Lcom/estrongs/android/widget/ag;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->y:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/ag;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->w:Lcom/estrongs/android/widget/ag;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/widget/ag;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->w:Lcom/estrongs/android/widget/ag;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/d;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ag;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->z:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->w:Lcom/estrongs/android/widget/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ag;->show()V

    :goto_6e
    iput-boolean v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Z:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aa:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->T:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->U:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->V:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->W:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->X:J

    iput-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Y:J

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h()V

    return-void

    :cond_85
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/t;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    iget-wide v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->x:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/diskusage/t;->a(J)V

    goto :goto_6e
.end method

.method public a(Z)[J
    .registers 11

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    if-eqz p1, :cond_3f

    const/16 v0, 0x8

    :goto_9
    new-array v1, v0, [J

    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aa:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_52

    :cond_15
    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->T:J

    aput-wide v3, v1, v2

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->U:J

    aput-wide v3, v1, v5

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->V:J

    aput-wide v3, v1, v7

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->X:J

    aput-wide v3, v1, v8

    const/4 v0, 0x4

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->W:J

    aput-wide v3, v1, v0

    const/4 v0, 0x5

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Y:J

    aput-wide v3, v1, v0

    if-eqz p1, :cond_41

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->x:J

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->y:J

    sub-long/2addr v2, v4

    aput-wide v2, v1, v6

    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->x:J

    aput-wide v2, v1, v0

    :cond_3d
    move-object v0, v1

    :goto_3e
    return-object v0

    :cond_3f
    const/4 v0, 0x7

    goto :goto_9

    :cond_41
    const-wide/16 v3, 0x0

    aput-wide v3, v1, v6

    move v0, v2

    :goto_46
    if-ge v0, v6, :cond_3d

    aget-wide v2, v1, v6

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_52
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aa:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/r;

    iget-wide v3, v0, Lcom/estrongs/android/util/r;->d:J

    aput-wide v3, v1, v2

    iget-wide v2, v0, Lcom/estrongs/android/util/r;->e:J

    aput-wide v2, v1, v5

    iget-wide v2, v0, Lcom/estrongs/android/util/r;->f:J

    aput-wide v2, v1, v7

    iget-wide v2, v0, Lcom/estrongs/android/util/r;->h:J

    aput-wide v2, v1, v8

    const/4 v2, 0x4

    iget-wide v3, v0, Lcom/estrongs/android/util/r;->g:J

    aput-wide v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, v0, Lcom/estrongs/android/util/r;->i:J

    aput-wide v3, v1, v2

    iget-wide v2, v0, Lcom/estrongs/android/util/r;->a:J

    aput-wide v2, v1, v6

    move-object v0, v1

    goto :goto_3e
.end method

.method b()V
    .registers 7

    const/4 v5, 0x0

    const v3, 0x108009b

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_31

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005e

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f090236

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/estrongs/android/pop/app/diskusage/c;

    invoke-direct {v4, p0, v1}, Lcom/estrongs/android/pop/app/diskusage/c;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Ljava/util/List;)V

    invoke-virtual {v3, v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_30
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v2, 0x2

    const v0, 0x7f070080

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_13

    const v0, 0x7f07007f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_17

    :cond_13
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->finish()V

    :cond_16
    :goto_16
    return-void

    :cond_17
    const v0, 0x7f070089

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_29

    const v0, 0x7f070088

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4c

    :cond_29
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->r:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->r:Ljava/io/File;

    :try_start_3f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aa:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_a6

    :goto_44
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h()V

    goto :goto_16

    :cond_48
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->finish()V

    goto :goto_16

    :cond_4c
    const v0, 0x7f07008c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_5e

    const v0, 0x7f07008b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_62

    :cond_5e
    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->showDialog(I)V

    goto :goto_16

    :cond_62
    const v0, 0x7f07008f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_74

    const v0, 0x7f07008e

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_78

    :cond_74
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->j()V

    goto :goto_16

    :cond_78
    const v0, 0x7f070082

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_85

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b()V

    goto :goto_16

    :cond_85
    const v0, 0x7f070085

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_16

    new-array v0, v2, [I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ab:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->M:Landroid/widget/LinearLayout;

    const-string v2, " "

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/estrongs/android/pop/app/diskusage/v;->a(Landroid/view/View;Ljava/lang/String;II)Lcom/estrongs/android/pop/app/diskusage/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/v;->i()V

    goto/16 :goto_16

    :catch_a6
    move-exception v0

    goto :goto_44
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->as:I

    if-eq v0, v3, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->as:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_17

    :cond_16
    :goto_16
    return v2

    :cond_17
    iput v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->as:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/t;->a(Ljava/io/File;)Lcom/estrongs/android/util/r;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/util/r;)V

    :cond_24
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ap:Landroid/os/Parcelable;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s:Lcom/estrongs/android/pop/app/diskusage/t;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/t;->b(Ljava/io/File;)V

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/diskusage/b;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/diskusage/b;->start()V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->au:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ax:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_16
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/16 v6, 0x9

    const/16 v1, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x8

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->requestWindowFeature(I)Z

    invoke-static {p0}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->H()Z

    move-result v0

    if-eqz v0, :cond_32b

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->setTheme(I)V

    :goto_28
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/c;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n:Landroid/view/View;

    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->E:Landroid/widget/ImageView;

    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->E:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/o;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->o:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/p;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ab:Landroid/widget/RelativeLayout;

    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->H:Landroid/widget/LinearLayout;

    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->I:Landroid/widget/LinearLayout;

    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->K:Landroid/widget/LinearLayout;

    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->J:Landroid/widget/LinearLayout;

    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->L:Landroid/widget/LinearLayout;

    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->M:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->I:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/q;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->B:Landroid/widget/ImageView;

    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->C:Landroid/widget/ImageView;

    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->D:Landroid/widget/ImageView;

    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->F:Landroid/widget/ImageView;

    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->G:Landroid/widget/ImageView;

    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->N:Landroid/widget/TextView;

    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->O:Landroid/widget/TextView;

    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->P:Landroid/widget/TextView;

    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Q:Landroid/widget/TextView;

    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->R:Landroid/widget/TextView;

    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->S:Landroid/widget/TextView;

    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/r;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->l:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storage_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_334

    const-string v0, "/sdcard"

    move-object v1, v0

    :goto_1c7
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->G()Z

    move-result v0

    if-eqz v0, :cond_226

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c0

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f00

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->A:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->B:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->C:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->D:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->F:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->G:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Landroid/widget/ImageView;I)V

    :cond_226
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->registerForContextMenu(Landroid/view/View;)V

    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    const/4 v0, 0x7

    new-array v2, v0, [J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h:[I

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a([J[I)V

    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ac:Landroid/widget/ImageView;

    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->af:Landroid/widget/LinearLayout;

    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ag:Landroid/widget/LinearLayout;

    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ah:Landroid/widget/FrameLayout;

    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ao:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->af:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const v0, 0x7f090265

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    const v0, 0x7f090266

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v5

    const/4 v4, 0x2

    const v0, 0x7f090267

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v4, 0x3

    const v0, 0x7f090268

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v4, 0x4

    const v0, 0x7f090269

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v4, 0x5

    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    iput-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->k:[Ljava/lang/String;

    const v0, 0x7f09026d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ar:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ac:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aq:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ah:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aq:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->ae:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/estrongs/android/pop/app/diskusage/s;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/diskusage/s;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0, v5, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Z[J)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e()V

    new-array v0, v6, [I

    fill-array-data v0, :array_338

    new-array v2, v6, [I

    fill-array-data v2, :array_34e

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a([I[I)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Ljava/lang/String;)V

    return-void

    :cond_32b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_28

    :cond_334
    move-object v1, v0

    goto/16 :goto_1c7

    nop

    :array_338
    .array-data 0x4
        0x81t 0x0t 0x7t 0x7ft
        0x84t 0x0t 0x7t 0x7ft
        0x87t 0x0t 0x7t 0x7ft
        0x8at 0x0t 0x7t 0x7ft
        0x8dt 0x0t 0x7t 0x7ft
        0x90t 0x0t 0x7t 0x7ft
        0xa8t 0x0t 0x7t 0x7ft
        0xabt 0x0t 0x7t 0x7ft
        0xadt 0x0t 0x7t 0x7ft
    .end array-data

    :array_34e
    .array-data 0x4
        0x61t 0x0t 0x9t 0x7ft
        0x44t 0x2t 0x9t 0x7ft
        0x6et 0x2t 0x9t 0x7ft
        0x3bt 0x2t 0x9t 0x7ft
        0x45t 0x2t 0x9t 0x7ft
        0x98t 0x0t 0x9t 0x7ft
        0x63t 0x1t 0x9t 0x7ft
        0x64t 0x1t 0x9t 0x7ft
        0x65t 0x1t 0x9t 0x7ft
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7

    const/4 v2, 0x0

    const v0, 0x7f020094

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    const v0, 0x7f090011

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    sget v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->at:I

    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7

    const/16 v4, 0x14

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_82

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const v2, 0x7f0900eb

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    :pswitch_34
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->av:I

    sget v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->av:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aw:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a000a

    sget v2, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->aw:I

    new-instance v3, Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/diskusage/e;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b4

    new-instance v2, Lcom/estrongs/android/pop/app/diskusage/f;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/diskusage/f;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b5

    new-instance v2, Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/diskusage/h;-><init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    :pswitch_data_82
    .packed-switch 0x2
        :pswitch_34
        :pswitch_8
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
