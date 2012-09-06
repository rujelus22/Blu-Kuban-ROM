.class Lcom/google/googlenav/ui/view/android/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aD;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aF;->b:Lcom/google/googlenav/ui/view/android/aD;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/aF;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aF;->b:Lcom/google/googlenav/ui/view/android/aD;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aD;->g:Lcom/google/googlenav/ui/g;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/aF;->a:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 170
    return-void
.end method
