.class LaM/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/friend/o;


# instance fields
.field final synthetic a:LaM/S;


# direct methods
.method constructor <init>(LaM/S;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, LaM/W;->a:LaM/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, LaM/W;->a:LaM/S;

    invoke-static {v0}, LaM/S;->a(LaM/S;)LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->bH()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/google/googlenav/ui/af;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, LaM/W;->a:LaM/S;

    invoke-static {v0}, LaM/S;->a(LaM/S;)LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->e()Lcom/google/googlenav/ui/friend/D;

    move-result-object v0

    return-object v0
.end method
