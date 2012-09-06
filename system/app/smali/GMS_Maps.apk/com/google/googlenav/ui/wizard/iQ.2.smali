.class Lcom/google/googlenav/ui/wizard/iQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aT;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iK;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iK;)V
    .registers 2
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iQ;->a:Lcom/google/googlenav/ui/wizard/iK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aS;)V
    .registers 5
    .parameter

    .prologue
    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/google/googlenav/aS;->i()I

    move-result v0

    if-nez v0, :cond_17

    .line 298
    const/4 v0, 0x0

    move-object v1, v0

    .line 308
    :goto_8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iQ;->a:Lcom/google/googlenav/ui/wizard/iK;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/iK;->a(Lcom/google/googlenav/ui/wizard/iK;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iQ;->a:Lcom/google/googlenav/ui/wizard/iK;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iK;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/cj;->a(Ljava/lang/String;)V

    .line 310
    return-void

    .line 300
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aS;->a(I)Lcom/google/googlenav/aU;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_8
.end method
