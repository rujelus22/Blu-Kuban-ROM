.class Lcom/google/googlenav/ui/view/android/bL;
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
    .line 436
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bL;->b:Lcom/google/googlenav/ui/view/android/bJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bL;->a:Ljava/lang/String;

    .line 438
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x11

    .line 442
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bL;->a:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 443
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bL;->b:Lcom/google/googlenav/ui/view/android/bJ;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bJ;->E:Lcom/google/googlenav/ui/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bL;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v2, v1}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 446
    const/16 v0, 0x54

    const-string v1, "ac"

    const-string v2, "hh"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_1c
    return-void
.end method
