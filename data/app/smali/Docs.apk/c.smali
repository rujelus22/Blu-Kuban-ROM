.class Lc;
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
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La;


# direct methods
.method constructor <init>(La;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lc;->a:La;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Application;
    .registers 2

    .prologue
    .line 128
    invoke-static {}, Le;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

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
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lc;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 148
    invoke-static {}, Le;->a()V

    .line 149
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
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p1}, Le;->a(LanD;)V

    .line 144
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    invoke-static {p1}, Le;->a(LanG;)V

    .line 134
    return-void
.end method
