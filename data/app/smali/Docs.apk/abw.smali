.class Labw;
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
        "LabB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Labu;


# direct methods
.method constructor <init>(Labu;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Labw;->a:Labu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LabB;
    .registers 2

    .prologue
    .line 152
    invoke-static {}, Labz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LabB;

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
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Labw;->a()LabB;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 172
    invoke-static {}, Labz;->a()V

    .line 173
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
            "LabB;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p1}, Labz;->a(LanD;)V

    .line 168
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    invoke-static {p1}, Labz;->a(LanG;)V

    .line 158
    return-void
.end method
