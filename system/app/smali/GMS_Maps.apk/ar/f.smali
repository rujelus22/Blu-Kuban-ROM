.class LaR/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/R;


# instance fields
.field final synthetic a:Landroid/widget/TabHost;

.field final synthetic b:I

.field final synthetic c:LaR/e;


# direct methods
.method constructor <init>(LaR/e;Landroid/widget/TabHost;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, LaR/f;->c:LaR/e;

    iput-object p2, p0, LaR/f;->a:Landroid/widget/TabHost;

    iput p3, p0, LaR/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 38
    const/16 v0, 0xb

    return v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LaR/f;->a:Landroid/widget/TabHost;

    iget v1, p0, LaR/f;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 34
    return-void
.end method
