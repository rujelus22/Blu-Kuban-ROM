.class Lcom/google/googlenav/ui/view/android/bO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/bJ;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/bJ;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->b:Lcom/google/googlenav/ui/view/android/bJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bO;->a:Ljava/lang/String;

    .line 397
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->a:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 402
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->b:Lcom/google/googlenav/ui/view/android/bJ;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bJ;->E:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x10

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bO;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 405
    :cond_14
    return-void
.end method
