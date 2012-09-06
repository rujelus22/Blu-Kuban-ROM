.class public final Lcom/acquariusoft/UpdateMe/b/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/i;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/b/i;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    return-void
.end method
