.class public Lcom/google/commerce/wireless/topiary/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/commerce/wireless/topiary/z;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/commerce/wireless/topiary/HybridWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 172
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;ILjava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-virtual {p1, p3}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p1, p2}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->setWaitUiVisibility(Z)V

    .line 144
    return-void
.end method

.method public b(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    return-void
.end method

.method public b(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-virtual {p1, p2}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->setWebViewVisibility(Z)V

    .line 149
    return-void
.end method

.method public c(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method
