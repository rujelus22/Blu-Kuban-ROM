.class public LhX;
.super Ljava/lang/Object;
.source "CriterionSet.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LhK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LhX;->a:Ljava/util/List;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "LhK;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LhX;->a:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public a()LhW;
    .registers 3

    .prologue
    .line 60
    new-instance v0, LhY;

    iget-object v1, p0, LhX;->a:Ljava/util/List;

    invoke-direct {v0, v1}, LhY;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(LhK;)LhX;
    .registers 3
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LhX;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-object p0
.end method
