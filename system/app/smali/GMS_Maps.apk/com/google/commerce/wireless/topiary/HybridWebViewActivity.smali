.class public Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field private static c:I


# instance fields
.field protected a:Lcom/google/commerce/wireless/topiary/C;

.field protected b:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/16 v0, 0x64

    sput v0, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->a()Landroid/support/v4/app/t;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->a:Lcom/google/commerce/wireless/topiary/C;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/f;)Landroid/support/v4/app/t;

    .line 42
    invoke-virtual {v0}, Landroid/support/v4/app/t;->a()I

    .line 43
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 44
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->b:Landroid/widget/FrameLayout;

    .line 27
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->b:Landroid/widget/FrameLayout;

    sget v1, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 28
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->b:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    new-instance v0, Lcom/google/commerce/wireless/topiary/C;

    invoke-direct {v0}, Lcom/google/commerce/wireless/topiary/C;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->a:Lcom/google/commerce/wireless/topiary/C;

    .line 32
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->a()Landroid/support/v4/app/t;

    move-result-object v0

    .line 34
    sget v1, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->c:I

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->a:Lcom/google/commerce/wireless/topiary/C;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/f;)Landroid/support/v4/app/t;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/t;->a()I

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 49
    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->b:Landroid/widget/FrameLayout;

    .line 50
    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewActivity;->a:Lcom/google/commerce/wireless/topiary/C;

    .line 51
    return-void
.end method
