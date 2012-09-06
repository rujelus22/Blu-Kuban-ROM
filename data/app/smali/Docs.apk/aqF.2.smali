.class public final LaqF;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Laqm;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Ljava/lang/Throwable;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {p1}, LaiA;->a(Ljava/lang/Object;)LaiA;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, LaqF;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 63
    invoke-static {}, LaiA;->c()LaiA;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, LaqF;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, LaiA;->a(Ljava/util/Collection;)LaiA;

    move-result-object v0

    iput-object v0, p0, LaqF;->a:Ljava/util/List;

    .line 54
    const-string v0, "message"

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaqF;->a:Ljava/lang/String;

    .line 55
    iput-object p3, p0, LaqF;->a:Ljava/lang/Throwable;

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, LaqF;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, LaqF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, LapW;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, LaqF;->a:Ljava/util/List;

    iget-object v1, p0, LaqF;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Laoy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public a()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, LaqF;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, LaqF;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, LaqF;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 108
    instance-of v1, p1, LaqF;

    if-nez v1, :cond_6

    .line 112
    :cond_5
    :goto_5
    return v0

    .line 111
    :cond_6
    check-cast p1, LaqF;

    .line 112
    iget-object v1, p0, LaqF;->a:Ljava/lang/String;

    iget-object v2, p1, LaqF;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LaqF;->a:Ljava/lang/Throwable;

    iget-object v2, p1, LaqF;->a:Ljava/lang/Throwable;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LaqF;->a:Ljava/util/List;

    iget-object v2, p1, LaqF;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, LaqF;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, LaqF;->a:Ljava/lang/String;

    return-object v0
.end method
