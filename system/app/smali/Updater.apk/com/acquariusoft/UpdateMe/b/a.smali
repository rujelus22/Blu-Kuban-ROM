.class public final Lcom/acquariusoft/UpdateMe/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    return-void
.end method
