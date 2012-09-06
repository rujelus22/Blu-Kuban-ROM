.class Lcom/google/googlenav/ui/wizard/aS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aR;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aR;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aS;->a:Lcom/google/googlenav/ui/wizard/aR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aS;->a:Lcom/google/googlenav/ui/wizard/aR;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aR;->d:Lcom/google/googlenav/ui/wizard/aP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aP;->c:Lcom/google/googlenav/ui/wizard/aO;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aO;->a(Lcom/google/googlenav/ui/wizard/aO;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/aT;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/aT;-><init>(Lcom/google/googlenav/ui/wizard/aS;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 140
    return-void
.end method
