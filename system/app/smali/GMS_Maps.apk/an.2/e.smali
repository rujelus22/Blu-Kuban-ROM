.class LaN/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field final synthetic a:LaN/b;


# direct methods
.method constructor <init>(LaN/b;)V
    .registers 2
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, LaN/e;->a:LaN/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 5
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, LaN/e;->a:LaN/b;

    invoke-static {v0}, LaN/b;->g(LaN/b;)LaM/C;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_15

    .line 398
    iget-object v1, p0, LaN/e;->a:LaN/b;

    invoke-virtual {v0}, LaM/C;->ar()Lcom/google/googlenav/F;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/F;->c()I

    move-result v2

    invoke-static {v1, v0, v2}, LaN/b;->a(LaN/b;LaM/i;I)V

    .line 400
    :cond_15
    return-void
.end method
