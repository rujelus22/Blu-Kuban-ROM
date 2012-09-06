.class Ldn;
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
        "Ldi;",
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
    .line 160
    iput-object p1, p0, Ldn;->a:Ldk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ldi;
    .registers 2

    .prologue
    .line 163
    invoke-static {}, Ldp;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldi;

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
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 160
    invoke-virtual {p0}, Ldn;->a()Ldi;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 183
    invoke-static {}, Ldp;->a()V

    .line 184
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
            "Ldi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p1}, Ldp;->a(LanD;)V

    .line 179
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    invoke-static {p1}, Ldp;->a(LanG;)V

    .line 169
    return-void
.end method
