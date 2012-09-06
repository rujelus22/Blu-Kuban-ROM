.class Lcom/google/googlenav/offers/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/offers/k;


# direct methods
.method constructor <init>(Lcom/google/googlenav/offers/k;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/googlenav/offers/l;->a:Lcom/google/googlenav/offers/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 93
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/google/googlenav/offers/k;->g()Lcom/google/android/apps/common/offerslib/a;

    move-result-object v1

    .line 95
    invoke-static {v0}, Lcom/google/googlenav/offers/k;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Landroid/content/Context;Lcom/google/android/apps/common/offerslib/a;Landroid/accounts/Account;)V

    .line 96
    return-void
.end method
