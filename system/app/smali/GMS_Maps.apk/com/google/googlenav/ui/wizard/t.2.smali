.class Lcom/google/googlenav/ui/wizard/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aY;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/S;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/S;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/T;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aW;)V
    .registers 2
    .parameter

    .prologue
    .line 431
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->r()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 411
    const/16 v0, 0x66

    const-string v1, "a"

    const-string v2, "z"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 424
    const/16 v0, 0x27

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aW;->b(Ljava/lang/String;)V

    .line 426
    :cond_18
    return-void
.end method

.method public b(Lcom/google/googlenav/aW;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    return-void
.end method
