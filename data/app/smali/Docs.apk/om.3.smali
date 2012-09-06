.class Lom;
.super Ljava/lang/Object;
.source "DialogRegistryImpl.java"

# interfaces
.implements LpD;


# instance fields
.field private a:Landroid/os/Bundle;

.field private final a:Lof;


# direct methods
.method public constructor <init>(Lof;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lof;

    iput-object v0, p0, Lom;->a:Lof;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lom;->a:Landroid/os/Bundle;

    .line 54
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lom;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public a()Lof;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lom;->a:Lof;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lom;->a:Landroid/os/Bundle;

    .line 59
    return-void
.end method
