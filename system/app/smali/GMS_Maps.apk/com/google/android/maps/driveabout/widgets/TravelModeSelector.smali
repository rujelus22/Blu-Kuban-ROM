.class public Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/widgets/e;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/maps/driveabout/app/db;

.field private d:[Lcom/google/android/maps/driveabout/app/O;

.field private e:Lcom/google/android/maps/driveabout/widgets/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/maps/driveabout/widgets/a;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/widgets/a;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a:Lcom/google/android/maps/driveabout/widgets/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/O;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->d:[Lcom/google/android/maps/driveabout/app/O;

    sget-object v0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a:Lcom/google/android/maps/driveabout/widgets/e;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->e:Lcom/google/android/maps/driveabout/widgets/e;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->b:Landroid/content/Context;

    new-instance v0, Lcom/google/android/maps/driveabout/widgets/b;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/widgets/b;-><init>(Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/O;)Landroid/view/View;
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030048

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/O;Landroid/view/View;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/app/O;Landroid/view/View;)V
    .registers 4

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const v0, 0x7f0f0014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/O;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0f0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/O;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;Lcom/google/android/maps/driveabout/app/O;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->b(Lcom/google/android/maps/driveabout/app/O;)V

    return-void
.end method

.method private b()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/db;

    if-nez v0, :cond_27

    new-instance v0, Lcom/google/android/maps/driveabout/app/db;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->b:Landroid/content/Context;

    const v2, 0x7f0f0128

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/maps/driveabout/widgets/d;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->d:[Lcom/google/android/maps/driveabout/app/O;

    invoke-direct {v3, v4, v5}, Lcom/google/android/maps/driveabout/widgets/d;-><init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/O;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/db;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/db;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/db;

    new-instance v1, Lcom/google/android/maps/driveabout/widgets/c;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/widgets/c;-><init>(Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/db;->a(Lcom/google/android/maps/driveabout/app/dd;)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/db;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/db;->show()V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/app/O;)V
    .registers 3

    invoke-static {p1, p0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/O;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->e:Lcom/google/android/maps/driveabout/widgets/e;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/widgets/e;->a(Lcom/google/android/maps/driveabout/app/O;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/db;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/db;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/db;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/db;

    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/O;)V
    .registers 2

    invoke-static {p1, p0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/O;Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/widgets/e;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->e:Lcom/google/android/maps/driveabout/widgets/e;

    return-void
.end method

.method public a([Lcom/google/android/maps/driveabout/app/O;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->d:[Lcom/google/android/maps/driveabout/app/O;

    return-void
.end method
