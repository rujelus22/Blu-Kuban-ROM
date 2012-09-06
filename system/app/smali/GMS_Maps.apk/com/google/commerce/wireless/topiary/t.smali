.class Lcom/google/commerce/wireless/topiary/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/commerce/wireless/topiary/HybridWebView;


# direct methods
.method constructor <init>(Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/t;->b:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/t;->b:Lcom/google/commerce/wireless/topiary/HybridWebView;

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/t;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V

    .line 763
    return-void
.end method
