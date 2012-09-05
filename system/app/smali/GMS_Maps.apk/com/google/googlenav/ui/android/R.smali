.class Lcom/google/googlenav/ui/android/R;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/OfferView;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/android/OfferView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/R;->a:Lcom/google/googlenav/ui/android/OfferView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/OfferView;Lcom/google/googlenav/ui/android/Q;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/R;-><init>(Lcom/google/googlenav/ui/android/OfferView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/R;->a:Lcom/google/googlenav/ui/android/OfferView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/OfferView;->b:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
