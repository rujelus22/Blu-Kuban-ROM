.class Lcom/google/android/apps/common/offerslib/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/common/offerslib/JavascriptCallbackInterface;


# instance fields
.field a:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/r;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/common/offerslib/f;)V
    .registers 2
    .parameter

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/google/android/apps/common/offerslib/r;-><init>()V

    return-void
.end method


# virtual methods
.method public enableNfc(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 851
    return-void
.end method

.method public finishedLoading(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/r;->a:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 819
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/r;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/common/offerslib/s;

    invoke-direct {v1, p0}, Lcom/google/android/apps/common/offerslib/s;-><init>(Lcom/google/android/apps/common/offerslib/r;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 829
    :cond_10
    return-void
.end method

.method public isNfcEnabledForOffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 803
    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 797
    return-void
.end method

.method public purchaseOffer(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 808
    return-void
.end method

.method public showExternalUrl(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 792
    return-void
.end method

.method public showSpinner(Z)V
    .registers 2
    .parameter

    .prologue
    .line 787
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 840
    return-void
.end method

.method public trackPageView(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 834
    return-void
.end method

.method public updateSharingContent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 845
    return-void
.end method
