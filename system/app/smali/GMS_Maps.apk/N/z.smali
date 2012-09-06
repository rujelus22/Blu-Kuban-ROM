.class final Ln/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/D;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 40
    check-cast p1, Ln/x;

    invoke-virtual {p0, p1}, Ln/z;->a(Ln/x;)Ln/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Ln/x;)Ln/m;
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Ln/x;->b()Ln/p;

    move-result-object v0

    return-object v0
.end method
