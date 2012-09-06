.class Lcom/google/commerce/wireless/topiary/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/commerce/wireless/topiary/HybridWebView;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;


# direct methods
.method constructor <init>(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/x;->e:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/x;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iput-boolean p3, p0, Lcom/google/commerce/wireless/topiary/x;->b:Z

    iput p4, p0, Lcom/google/commerce/wireless/topiary/x;->c:I

    iput-object p5, p0, Lcom/google/commerce/wireless/topiary/x;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/x;->e:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/x;->a:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iget-boolean v2, p0, Lcom/google/commerce/wireless/topiary/x;->b:Z

    iget v3, p0, Lcom/google/commerce/wireless/topiary/x;->c:I

    iget-object v4, p0, Lcom/google/commerce/wireless/topiary/x;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b(Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V

    .line 299
    return-void
.end method
