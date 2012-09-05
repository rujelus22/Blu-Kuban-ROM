.class final Lle$b;
.super Lkw;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "b"
.end annotation


# instance fields
.field protected final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lkw;Ljava/lang/Class;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkw;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lkw;-><init>(Lkw;)V

    .line 36
    iput-object p2, p0, Lle$b;->k:Ljava/lang/Class;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p3}, Lhs;->a()Ljava/lang/Class;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_e

    iget-object v1, p0, Lle$b;->k:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lkw;->a(Ljava/lang/Object;Lez;Lhs;)V

    .line 47
    :cond_11
    return-void
.end method
