.class Lcom/google/commerce/wireless/topiary/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/commerce/wireless/topiary/p;


# direct methods
.method constructor <init>(Lcom/google/commerce/wireless/topiary/p;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/q;->b:Lcom/google/commerce/wireless/topiary/p;

    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/q;->b:Lcom/google/commerce/wireless/topiary/p;

    iget-object v0, v0, Lcom/google/commerce/wireless/topiary/p;->e:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-static {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Processing token form acct mgr"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/q;->b:Lcom/google/commerce/wireless/topiary/p;

    iget-object v0, v0, Lcom/google/commerce/wireless/topiary/p;->e:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/q;->b:Lcom/google/commerce/wireless/topiary/p;

    iget-object v1, v1, Lcom/google/commerce/wireless/topiary/p;->c:Lcom/google/commerce/wireless/topiary/S;

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/q;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;Lcom/google/commerce/wireless/topiary/S;Ljava/lang/String;)V

    .line 457
    return-void
.end method
