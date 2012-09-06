.class Lcom/google/commerce/wireless/topiary/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/commerce/wireless/topiary/S;

.field final synthetic b:Lcom/google/commerce/wireless/topiary/HybridWebView;


# direct methods
.method constructor <init>(Lcom/google/commerce/wireless/topiary/HybridWebView;Lcom/google/commerce/wireless/topiary/S;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/s;->b:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/s;->a:Lcom/google/commerce/wireless/topiary/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/s;->b:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/s;->a:Lcom/google/commerce/wireless/topiary/S;

    invoke-static {v0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;Lcom/google/commerce/wireless/topiary/S;)V

    .line 624
    return-void
.end method
