.class final Ll/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/e;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/am;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 82
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ll/f;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    return-void
.end method

.method public a(Ln/m;)Z
    .registers 3
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method
