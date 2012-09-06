.class LarT;
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
        "LarP;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LarR;


# direct methods
.method constructor <init>(LarR;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, LarT;->a:LarR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LarP;
    .registers 2

    .prologue
    .line 174
    invoke-static {}, LarY;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LarP;

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
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, LarT;->a()LarP;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 194
    invoke-static {}, LarY;->a()V

    .line 195
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
            "LarP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1}, LarY;->a(LanD;)V

    .line 190
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    invoke-static {p1}, LarY;->a(LanG;)V

    .line 180
    return-void
.end method
