.class public Ll/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ll/m;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ll/l;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Ll/l;

    iget-object v1, p0, Ll/m;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ll/l;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public a(Ln/az;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Ll/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public a(Ln/d;)V
    .registers 3
    .parameter

    .prologue
    .line 74
    invoke-virtual {p1}, Ln/d;->b()Ln/az;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll/m;->a(Ln/az;)V

    .line 75
    return-void
.end method
