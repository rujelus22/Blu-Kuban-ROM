.class public Lcom/google/googlenav/offers/OfferDetailsIntentProcessorHandler;
.super Lcom/google/googlenav/android/DelegateIntentProcessorHandler;
.source "SourceFile"


# instance fields
.field private dialog:Lcom/google/googlenav/ui/view/dialog/br;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/br;Lcom/google/googlenav/android/P;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lcom/google/googlenav/android/DelegateIntentProcessorHandler;-><init>(Lcom/google/googlenav/android/P;)V

    .line 27
    iput-object p1, p0, Lcom/google/googlenav/offers/OfferDetailsIntentProcessorHandler;->dialog:Lcom/google/googlenav/ui/view/dialog/br;

    .line 28
    iput-object p3, p0, Lcom/google/googlenav/offers/OfferDetailsIntentProcessorHandler;->intent:Landroid/content/Intent;

    .line 29
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlenav/offers/OfferDetailsIntentProcessorHandler;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public resetForInvocation()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public startBusinessDetailsLayer(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/offers/OfferDetailsIntentProcessorHandler;->dialog:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/br;->a(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method
