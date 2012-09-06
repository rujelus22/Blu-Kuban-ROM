.class final Lcom/google/android/apps/common/offerslib/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/commerce/wireless/topiary/E;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/commerce/wireless/topiary/HybridWebView;)V
    .registers 4
    .parameter

    .prologue
    .line 173
    new-instance v0, Lcom/google/android/apps/common/offerslib/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/offerslib/r;-><init>(Lcom/google/android/apps/common/offerslib/f;)V

    const-string v1, "Android"

    invoke-virtual {p1, v0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    return-void
.end method
