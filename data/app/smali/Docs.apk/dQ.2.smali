.class public LdQ;
.super Ljava/lang/Object;
.source "ApplicationStringHelper.java"


# instance fields
.field a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LanD;)V
    .registers 3
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lck;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, LdR;

    invoke-direct {v0, p0}, LdR;-><init>(LdQ;)V

    iput-object v0, p0, LdQ;->a:Ljava/util/Map;

    .line 21
    iput-object p1, p0, LdQ;->a:LanD;

    .line 22
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, LdQ;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    .line 50
    sget-object v1, LdL;->b:LdL;

    if-ne v0, v1, :cond_1e

    .line 51
    iget-object v0, p0, LdQ;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 52
    if-eqz v0, :cond_1e

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 57
    :cond_1e
    return p1
.end method
