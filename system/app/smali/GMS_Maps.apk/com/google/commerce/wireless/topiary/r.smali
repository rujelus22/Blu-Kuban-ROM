.class Lcom/google/commerce/wireless/topiary/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/commerce/wireless/topiary/HybridWebView;


# direct methods
.method constructor <init>(Lcom/google/commerce/wireless/topiary/HybridWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/r;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/r;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;Z)V

    .line 579
    return-void
.end method
