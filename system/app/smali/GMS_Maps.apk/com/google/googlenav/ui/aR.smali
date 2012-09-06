.class Lcom/google/googlenav/ui/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bd;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ap;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ap;)V
    .registers 2
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/googlenav/ui/ar;->a:Lcom/google/googlenav/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v1, p0, Lcom/google/googlenav/ui/ar;->a:Lcom/google/googlenav/ui/ap;

    if-ne p1, v2, :cond_1d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    invoke-static {v1, v0}, Lcom/google/googlenav/ui/ap;->a(Lcom/google/googlenav/ui/ap;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 345
    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->a:Lcom/google/googlenav/ui/ap;

    invoke-static {v0}, Lcom/google/googlenav/ui/ap;->c(Lcom/google/googlenav/ui/ap;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/as;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/as;-><init>(Lcom/google/googlenav/ui/ar;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 351
    return-void

    .line 340
    :cond_1d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7
.end method
