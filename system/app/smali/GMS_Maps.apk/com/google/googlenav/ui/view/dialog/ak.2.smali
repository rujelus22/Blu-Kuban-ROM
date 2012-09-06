.class Lcom/google/googlenav/ui/view/dialog/aK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/friend/history/I;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/I;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aK;->a:Lcom/google/googlenav/friend/history/I;

    .line 530
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/aK;->b:Landroid/view/View;

    .line 531
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/aK;)Lcom/google/googlenav/friend/history/I;
    .registers 2
    .parameter

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->a:Lcom/google/googlenav/friend/history/I;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/aK;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aK;->b:Landroid/view/View;

    return-object v0
.end method
