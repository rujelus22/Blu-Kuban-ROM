.class public LaR/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ai;

.field private final b:Lcom/google/googlenav/L;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/L;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, LaR/h;->a:Lcom/google/googlenav/ai;

    .line 37
    iput-object p2, p0, LaR/h;->b:Lcom/google/googlenav/L;

    .line 38
    return-void
.end method

.method static synthetic a(LaR/h;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, LaR/h;->a:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method private a(Landroid/view/View;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method static synthetic b(LaR/h;)Lcom/google/googlenav/L;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, LaR/h;->b:Lcom/google/googlenav/L;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f1002ba

    .line 44
    const v0, 0x7f0400f3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaR/h;->c:Landroid/view/View;

    .line 47
    iget-object v0, p0, LaR/h;->c:Landroid/view/View;

    const v1, 0x7f1002b8

    iget-object v2, p0, LaR/h;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, LaR/h;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 48
    iget-object v0, p0, LaR/h;->c:Landroid/view/View;

    const v1, 0x7f1002b9

    const/16 v2, 0x604

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, LaR/h;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 49
    iget-object v0, p0, LaR/h;->c:Landroid/view/View;

    const/16 v1, 0x603

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, LaR/h;->a(Landroid/view/View;ILjava/lang/String;)V

    .line 52
    iget-object v0, p0, LaR/h;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    new-instance v1, LaR/i;

    invoke-direct {v1, p0}, LaR/i;-><init>(LaR/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, LaR/h;->c:Landroid/view/View;

    return-object v0
.end method
