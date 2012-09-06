.class LWn;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWZ",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Landroid/app/Activity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LWa;


# direct methods
.method constructor <init>(LWa;)V
    .registers 2
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, LWn;->a:LWa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    const-class v0, LanN;

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 709
    invoke-virtual {p0}, LWn;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 732
    invoke-static {}, LWr;->a()V

    .line 733
    return-void
.end method

.method public a(LanD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 727
    invoke-static {p1}, LWr;->a(LanD;)V

    .line 728
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 717
    invoke-static {p1}, LWr;->a(LanG;)V

    .line 718
    return-void
.end method

.method public b()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    invoke-static {}, LWr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
