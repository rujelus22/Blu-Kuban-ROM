.class final LaN/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/az;


# instance fields
.field final synthetic a:LaM/O;

.field final synthetic b:LaM/i;

.field final synthetic c:I

.field final synthetic d:LaN/j;

.field final synthetic e:Ln/Q;


# direct methods
.method constructor <init>(LaM/O;LaM/i;ILaN/j;Ln/Q;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, LaN/f;->a:LaM/O;

    iput-object p2, p0, LaN/f;->b:LaM/i;

    iput p3, p0, LaN/f;->c:I

    iput-object p4, p0, LaN/f;->d:LaN/j;

    iput-object p5, p0, LaN/f;->e:Ln/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/Q;)V
    .registers 5
    .parameter

    .prologue
    .line 923
    iget-object v0, p0, LaN/f;->a:LaM/O;

    invoke-virtual {v0}, LaM/O;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lad/b;

    .line 924
    invoke-static {p1}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v1

    .line 925
    iget-object v2, p0, LaN/f;->b:LaM/i;

    invoke-virtual {v2, v1}, LaM/i;->a(Lat/B;)Ln/B;

    move-result-object v2

    invoke-static {v1, v2}, Lad/y;->a(Lat/B;Ln/B;)Lad/y;

    move-result-object v2

    .line 927
    iget v1, p0, LaN/f;->c:I

    if-nez v1, :cond_4a

    new-instance v1, Lad/j;

    invoke-virtual {v0}, Lad/b;->as()Lad/y;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lad/j;-><init>(Lad/y;Lad/y;)V

    move-object v0, v1

    .line 930
    :goto_24
    iget-object v1, p0, LaN/f;->a:LaM/O;

    invoke-virtual {v1, v0}, LaM/O;->a(Lad/j;)Lad/b;

    move-result-object v0

    .line 931
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lad/b;->a(Z)V

    .line 935
    new-instance v1, LaN/g;

    invoke-direct {v1, p0}, LaN/g;-><init>(LaN/f;)V

    invoke-virtual {v0, v1}, Lad/b;->a(Lad/e;)V

    .line 941
    iget-object v1, p0, LaN/f;->a:LaM/O;

    invoke-virtual {v1, v0}, LaM/O;->c(Lad/b;)V

    .line 942
    iget-object v0, p0, LaN/f;->a:LaM/O;

    invoke-virtual {v0}, LaM/O;->c()V

    .line 943
    iget v0, p0, LaN/f;->c:I

    if-nez v0, :cond_55

    const-string v0, "ds"

    :goto_46
    invoke-static {v0}, LaM/O;->b(Ljava/lang/String;)V

    .line 946
    return-void

    .line 927
    :cond_4a
    new-instance v1, Lad/j;

    invoke-virtual {v0}, Lad/b;->aq()Lad/y;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lad/j;-><init>(Lad/y;Lad/y;)V

    move-object v0, v1

    goto :goto_24

    .line 943
    :cond_55
    const-string v0, "de"

    goto :goto_46
.end method
