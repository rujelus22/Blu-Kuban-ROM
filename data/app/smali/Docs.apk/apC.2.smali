.class LapC;
.super Ljava/lang/Object;
.source "ProvisionListenerCallbackStore.java"


# instance fields
.field final a:Lang;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lang",
            "<*>;"
        }
    .end annotation
.end field

.field final a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lant;Lang;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;",
            "Lang",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, LapC;->a:Lant;

    .line 98
    iput-object p2, p0, LapC;->a:Lang;

    .line 99
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 103
    instance-of v0, p1, LapC;

    if-eqz v0, :cond_12

    iget-object v0, p0, LapC;->a:Lant;

    check-cast p1, LapC;

    iget-object v1, p1, LapC;->a:Lant;

    invoke-virtual {v0, v1}, Lant;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, LapC;->a:Lant;

    invoke-virtual {v0}, Lant;->hashCode()I

    move-result v0

    return v0
.end method
