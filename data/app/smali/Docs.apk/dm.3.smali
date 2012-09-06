.class Ldm;
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
        "Ldg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldk;


# direct methods
.method constructor <init>(Ldk;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Ldm;->a:Ldk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ldg;
    .registers 2

    .prologue
    .line 136
    invoke-static {}, Ldo;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldg;

    return-object v0
.end method

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
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 133
    invoke-virtual {p0}, Ldm;->a()Ldg;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 156
    invoke-static {}, Ldo;->a()V

    .line 157
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
            "Ldg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p1}, Ldo;->a(LanD;)V

    .line 152
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    invoke-static {p1}, Ldo;->a(LanG;)V

    .line 142
    return-void
.end method
