.class Lcom/google/commerce/wireless/topiary/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/commerce/wireless/topiary/HybridWebView;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;


# direct methods
.method constructor <init>(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;ILjava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/y;->e:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/y;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iput p3, p0, Lcom/google/commerce/wireless/topiary/y;->b:I

    iput-object p4, p0, Lcom/google/commerce/wireless/topiary/y;->c:Ljava/lang/String;

    iput p5, p0, Lcom/google/commerce/wireless/topiary/y;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/y;->e:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/y;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iget v2, p0, Lcom/google/commerce/wireless/topiary/y;->b:I

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/y;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/commerce/wireless/topiary/y;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b(Lcom/google/commerce/wireless/topiary/HybridWebView;ILjava/lang/String;I)V

    .line 311
    return-void
.end method
