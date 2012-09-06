.class LajR;
.super LajA;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LajA",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LajQ;

.field a:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LajQ;)V
    .registers 2
    .parameter

    .prologue
    .line 3157
    iput-object p1, p0, LajR;->a:LajQ;

    invoke-direct {p0}, LajA;-><init>()V

    .line 3159
    iput-object p0, p0, LajR;->a:Laka;

    .line 3171
    iput-object p0, p0, LajR;->b:Laka;

    return-void
.end method


# virtual methods
.method public c(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3168
    iput-object p1, p0, LajR;->a:Laka;

    .line 3169
    return-void
.end method

.method public d()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3163
    iget-object v0, p0, LajR;->a:Laka;

    return-object v0
.end method

.method public d(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3180
    iput-object p1, p0, LajR;->b:Laka;

    .line 3181
    return-void
.end method

.method public e()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3175
    iget-object v0, p0, LajR;->b:Laka;

    return-object v0
.end method
