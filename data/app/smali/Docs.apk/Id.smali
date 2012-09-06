.class LId;
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
        "LHW;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LIb;


# direct methods
.method constructor <init>(LIb;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, LId;->a:LIb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LHW;
    .registers 2

    .prologue
    .line 141
    invoke-static {}, LIf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHW;

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
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 138
    invoke-virtual {p0}, LId;->a()LHW;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 161
    invoke-static {}, LIf;->a()V

    .line 162
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
            "LHW;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p1}, LIf;->a(LanD;)V

    .line 157
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    invoke-static {p1}, LIf;->a(LanG;)V

    .line 147
    return-void
.end method
