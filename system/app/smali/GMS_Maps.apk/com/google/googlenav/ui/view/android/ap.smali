.class Lcom/google/googlenav/ui/view/android/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/c;

.field private final b:Lcom/google/googlenav/ui/view/c;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ap;->a:Lcom/google/googlenav/ui/view/c;

    .line 456
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ap;->b:Lcom/google/googlenav/ui/view/c;

    .line 457
    return-void
.end method


# virtual methods
.method public notifyClick(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 469
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->a:Lcom/google/googlenav/ui/view/c;

    if-eqz v0, :cond_10

    .line 470
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->a:Lcom/google/googlenav/ui/view/c;

    new-instance v1, Lcom/google/googlenav/ui/view/E;

    invoke-direct {v1, p1}, Lcom/google/googlenav/ui/view/E;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/c;->a(Lcom/google/googlenav/ui/view/J;)Z

    .line 472
    :cond_10
    return-void
.end method

.method public notifyPageLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->b:Lcom/google/googlenav/ui/view/c;

    if-eqz v0, :cond_e

    .line 484
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->b:Lcom/google/googlenav/ui/view/c;

    new-instance v1, Lcom/google/googlenav/ui/view/E;

    invoke-direct {v1, p2, p1}, Lcom/google/googlenav/ui/view/E;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/c;->a(Lcom/google/googlenav/ui/view/J;)Z

    .line 486
    :cond_e
    return-void
.end method
