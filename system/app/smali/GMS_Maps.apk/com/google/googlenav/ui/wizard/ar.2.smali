.class Lcom/google/googlenav/ui/wizard/aR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/cs;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/aK;

.field final synthetic b:Lcom/google/googlenav/F;

.field final synthetic c:Lcom/google/googlenav/a;

.field final synthetic d:Lcom/google/googlenav/ui/wizard/aP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aP;Lcom/google/googlenav/friend/aK;Lcom/google/googlenav/F;Lcom/google/googlenav/a;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aR;->d:Lcom/google/googlenav/ui/wizard/aP;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aR;->a:Lcom/google/googlenav/friend/aK;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/aR;->b:Lcom/google/googlenav/F;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/aR;->c:Lcom/google/googlenav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 7
    .parameter

    .prologue
    .line 117
    if-nez p1, :cond_e

    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aR;->d:Lcom/google/googlenav/ui/wizard/aP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aP;->c:Lcom/google/googlenav/ui/wizard/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aR;->d:Lcom/google/googlenav/ui/wizard/aP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aP;->b:Lcom/google/googlenav/ui/wizard/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aO;->a(Lcom/google/googlenav/ui/wizard/aO;Lcom/google/googlenav/ui/wizard/aV;)V

    .line 142
    :cond_d
    :goto_d
    return-void

    .line 124
    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aR;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->B()[Lcom/google/googlenav/a;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    .line 127
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aR;->d:Lcom/google/googlenav/ui/wizard/aP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aP;->c:Lcom/google/googlenav/ui/wizard/aO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aO;->b(Lcom/google/googlenav/ui/wizard/aO;)LaM/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aR;->b:Lcom/google/googlenav/F;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/googlenav/ui/wizard/aS;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/wizard/aS;-><init>(Lcom/google/googlenav/ui/wizard/aR;)V

    invoke-virtual {v0, v1, v2, v3, v4}, LaM/a;->a(ILcom/google/googlenav/F;Lcom/google/googlenav/android/Y;LaM/g;)V

    goto :goto_d
.end method
