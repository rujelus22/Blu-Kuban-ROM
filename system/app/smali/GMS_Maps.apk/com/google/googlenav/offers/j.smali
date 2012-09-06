.class public Lcom/google/googlenav/offers/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/bs;


# static fields
.field public static final a:Lcom/google/googlenav/offers/j;

.field public static final b:Lcom/google/googlenav/offers/j;


# instance fields
.field c:Lcom/google/googlenav/ui/view/dialog/br;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Lcom/google/googlenav/offers/j;

    const v1, 0x7f04011b

    invoke-direct {v0, v1}, Lcom/google/googlenav/offers/j;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/offers/j;->a:Lcom/google/googlenav/offers/j;

    .line 24
    new-instance v0, Lcom/google/googlenav/offers/j;

    const v1, 0x7f04011a

    invoke-direct {v0, v1}, Lcom/google/googlenav/offers/j;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/offers/j;->b:Lcom/google/googlenav/offers/j;

    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/offers/j;->c:Lcom/google/googlenav/ui/view/dialog/br;

    .line 33
    iput p1, p0, Lcom/google/googlenav/offers/j;->d:I

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/dialog/bu;)Lcom/google/googlenav/ui/view/dialog/br;
    .registers 3
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/offers/j;->c:Lcom/google/googlenav/ui/view/dialog/br;

    if-nez v0, :cond_a

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/googlenav/offers/j;->b(Lcom/google/googlenav/ui/view/dialog/bu;)Lcom/google/googlenav/ui/view/dialog/br;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/offers/j;->c:Lcom/google/googlenav/ui/view/dialog/br;

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/offers/j;->c:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/br;->show()V

    .line 44
    invoke-virtual {p0}, Lcom/google/googlenav/offers/j;->a()V

    .line 45
    iget-object v0, p0, Lcom/google/googlenav/offers/j;->c:Lcom/google/googlenav/ui/view/dialog/br;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 73
    .line 74
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    if-eqz v0, :cond_20

    .line 75
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 82
    :goto_18
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/k;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/support/v4/app/k;->b()Z

    .line 85
    return-void

    .line 79
    :cond_20
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    goto :goto_18
.end method

.method public a(Lcom/google/googlenav/ui/view/dialog/br;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/dialog/br;->m()Landroid/support/v4/app/k;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/dialog/br;->l()Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_17

    .line 61
    invoke-virtual {v0}, Landroid/support/v4/app/k;->a()Landroid/support/v4/app/t;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/f;)Landroid/support/v4/app/t;

    .line 63
    invoke-virtual {v0}, Landroid/support/v4/app/t;->b()I

    .line 64
    invoke-virtual {p0}, Lcom/google/googlenav/offers/j;->a()V

    .line 66
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/offers/j;->c:Lcom/google/googlenav/ui/view/dialog/br;

    if-ne v0, p1, :cond_1e

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/offers/j;->c:Lcom/google/googlenav/ui/view/dialog/br;

    .line 69
    :cond_1e
    return-void
.end method

.method protected b(Lcom/google/googlenav/ui/view/dialog/bu;)Lcom/google/googlenav/ui/view/dialog/br;
    .registers 4
    .parameter

    .prologue
    .line 50
    const/16 v0, 0x323

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/offers/j;->d:I

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlenav/ui/view/dialog/br;->a(Ljava/lang/CharSequence;ILcom/google/googlenav/ui/view/dialog/bs;Lcom/google/googlenav/ui/view/dialog/bu;)Lcom/google/googlenav/ui/view/dialog/br;

    move-result-object v0

    return-object v0
.end method
