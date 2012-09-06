.class LarU;
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
    .line 198
    iput-object p1, p0, LarU;->a:LarR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LarP;
    .registers 2

    .prologue
    .line 201
    invoke-static {}, LarX;->a()LanD;

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
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, LarU;->a()LarP;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 221
    invoke-static {}, LarX;->a()V

    .line 222
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
    .line 216
    invoke-static {p1}, LarX;->a(LanD;)V

    .line 217
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    invoke-static {p1}, LarX;->a(LanG;)V

    .line 207
    return-void
.end method
