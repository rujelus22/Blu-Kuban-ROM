.class public Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/widgets/f;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/maps/driveabout/app/cP;

.field private d:[Lcom/google/android/maps/driveabout/app/N;

.field private e:Lcom/google/android/maps/driveabout/widgets/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/maps/driveabout/widgets/b;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/widgets/b;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a:Lcom/google/android/maps/driveabout/widgets/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/N;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->d:[Lcom/google/android/maps/driveabout/app/N;

    .line 55
    sget-object v0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a:Lcom/google/android/maps/driveabout/widgets/f;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->e:Lcom/google/android/maps/driveabout/widgets/f;

    .line 60
    iput-object p1, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->b:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/google/android/maps/driveabout/widgets/c;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/widgets/c;-><init>(Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/N;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 137
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 140
    const v2, 0x7f040052

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 142
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/N;Landroid/view/View;)V

    .line 144
    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/app/N;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 152
    if-nez p0, :cond_3

    .line 162
    :cond_2
    :goto_2
    return-void

    .line 155
    :cond_3
    const v0, 0x7f100033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/N;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/N;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)V
    .registers 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;Lcom/google/android/maps/driveabout/app/N;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->b(Lcom/google/android/maps/driveabout/app/N;)V

    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/cP;

    if-nez v0, :cond_27

    .line 114
    new-instance v0, Lcom/google/android/maps/driveabout/app/cP;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->b:Landroid/content/Context;

    const v2, 0x7f100153

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/maps/driveabout/widgets/e;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->d:[Lcom/google/android/maps/driveabout/app/N;

    invoke-direct {v3, v4, v5}, Lcom/google/android/maps/driveabout/widgets/e;-><init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/N;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cP;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/cP;

    .line 117
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/cP;

    new-instance v1, Lcom/google/android/maps/driveabout/widgets/d;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/widgets/d;-><init>(Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cP;->a(Lcom/google/android/maps/driveabout/app/cR;)V

    .line 124
    :cond_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/cP;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cP;->show()V

    .line 125
    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/app/N;)V
    .registers 3
    .parameter

    .prologue
    .line 129
    invoke-static {p1, p0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/N;Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->e:Lcom/google/android/maps/driveabout/widgets/f;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/widgets/f;->a(Lcom/google/android/maps/driveabout/app/N;)V

    .line 133
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/cP;

    if-eqz v0, :cond_c

    .line 98
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/cP;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cP;->dismiss()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->c:Lcom/google/android/maps/driveabout/app/cP;

    .line 101
    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/N;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    invoke-static {p1, p0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/N;Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public setTravelModeChangedListener(Lcom/google/android/maps/driveabout/widgets/f;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->e:Lcom/google/android/maps/driveabout/widgets/f;

    .line 90
    return-void
.end method

.method public setVisibleTravelModes([Lcom/google/android/maps/driveabout/app/N;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->d:[Lcom/google/android/maps/driveabout/app/N;

    .line 79
    return-void
.end method
