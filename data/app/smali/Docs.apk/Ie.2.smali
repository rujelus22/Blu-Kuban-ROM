.class LIe;
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
        "LHY;",
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
    .line 165
    iput-object p1, p0, LIe;->a:LIb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LHY;
    .registers 2

    .prologue
    .line 168
    invoke-static {}, LIg;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHY;

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
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, LIe;->a()LHY;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 188
    invoke-static {}, LIg;->a()V

    .line 189
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
            "LHY;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p1}, LIg;->a(LanD;)V

    .line 184
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    invoke-static {p1}, LIg;->a(LanG;)V

    .line 174
    return-void
.end method
