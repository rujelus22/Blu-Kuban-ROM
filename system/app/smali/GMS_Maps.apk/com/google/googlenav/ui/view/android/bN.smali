.class Lcom/google/googlenav/ui/view/android/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bm;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bn;->a:Lcom/google/googlenav/ui/view/android/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bn;->a:Lcom/google/googlenav/ui/view/android/bm;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    const/16 v1, 0x909

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    .line 126
    return-void
.end method
