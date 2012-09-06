.class public Lcom/google/android/apps/common/offerslib/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->b(Z)V

    .line 195
    invoke-virtual {p1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Lcom/google/android/apps/common/offerslib/t;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 164
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 37
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/android/apps/common/offerslib/e;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method public b(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 178
    return-void
.end method

.method public c(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    return-void
.end method

.method public c(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 203
    return-void
.end method

.method public d(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    return-void
.end method

.method public d(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 210
    return-void
.end method

.method public e(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Z
    .registers 3
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public f(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Z
    .registers 3
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Z
    .registers 4
    .parameter

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 111
    invoke-virtual {p1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 116
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public h(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/apps/common/offerslib/d;->e(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Landroid/content/Intent;)V

    .line 139
    :cond_10
    return-void
.end method

.method public i(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->t()V

    .line 171
    return-void
.end method
