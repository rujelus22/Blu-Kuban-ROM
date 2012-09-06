.class LabN;
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
        "LabQ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LabK;


# direct methods
.method constructor <init>(LabK;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, LabN;->a:LabK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LabQ;
    .registers 2

    .prologue
    .line 120
    invoke-static {}, LabP;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LabQ;

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
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 117
    invoke-virtual {p0}, LabN;->a()LabQ;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 140
    invoke-static {}, LabP;->a()V

    .line 141
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
            "LabQ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p1}, LabP;->a(LanD;)V

    .line 136
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    invoke-static {p1}, LabP;->a(LanG;)V

    .line 126
    return-void
.end method
