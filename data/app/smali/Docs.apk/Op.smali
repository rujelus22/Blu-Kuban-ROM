.class LOp;
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
        "LOE;",
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
    .line 264
    iput-object p1, p0, LOp;->a:LOm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LOE;
    .registers 2

    .prologue
    .line 267
    invoke-static {}, LOv;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOE;

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
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 264
    invoke-virtual {p0}, LOp;->a()LOE;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 287
    invoke-static {}, LOv;->a()V

    .line 288
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
            "LOE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {p1}, LOv;->a(LanD;)V

    .line 283
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 272
    invoke-static {p1}, LOv;->a(LanG;)V

    .line 273
    return-void
.end method
