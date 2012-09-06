.class LOq;
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
        "LOz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LOm;


# direct methods
.method constructor <init>(LOm;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, LOq;->a:LOm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LOz;
    .registers 2

    .prologue
    .line 294
    invoke-static {}, LOt;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOz;

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
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, LOq;->a()LOz;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 314
    invoke-static {}, LOt;->a()V

    .line 315
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
            "LOz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {p1}, LOt;->a(LanD;)V

    .line 310
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 299
    invoke-static {p1}, LOt;->a(LanG;)V

    .line 300
    return-void
.end method
