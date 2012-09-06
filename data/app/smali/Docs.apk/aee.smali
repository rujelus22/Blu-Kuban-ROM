.class Laee;
.super Ljava/lang/Object;
.source "ArrayValueMap.java"


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laee;->a:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Laee;->a:Ljava/lang/Class;

    .line 64
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Laee;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Laee;->a:Ljava/lang/Class;

    invoke-static {v0, v1}, Laez;->a(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Laee;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 77
    iget-object v0, p0, Laee;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void

    .line 76
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method
