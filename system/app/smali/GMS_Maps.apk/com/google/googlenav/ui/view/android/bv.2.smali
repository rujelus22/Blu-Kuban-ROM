.class Lcom/google/googlenav/ui/view/android/bV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/bR;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bR;Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bV;->b:Lcom/google/googlenav/ui/view/android/bR;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bV;->a:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bV;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x6aa

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 164
    return-void
.end method
