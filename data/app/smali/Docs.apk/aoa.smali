.class Laoa;
.super Ljava/lang/Object;
.source "Annotations.java"

# interfaces
.implements LafH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LafH",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Ljava/lang/annotation/Annotation;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LanZ;


# direct methods
.method constructor <init>(LanZ;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Laoa;->a:LanZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Boolean;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_7
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    .line 96
    iget-object v5, p0, Laoa;->a:LanZ;

    invoke-static {v5}, LanZ;->a(LanZ;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 100
    :goto_20
    return-object v0

    .line 95
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 100
    :cond_24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_20
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 93
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Laoa;->a(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
