.class public final Lkt;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field protected final a:Ljava/lang/reflect/Method;

.field protected final b:Llh;


# direct methods
.method public constructor <init>(Ljp;Llh;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object v0, p1, Ljp;->a:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lkt;->a:Ljava/lang/reflect/Method;

    .line 26
    iput-object p2, p0, Lkt;->b:Llh;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lhs;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lkt;->b:Llh;

    invoke-virtual {v0, p1}, Llh;->a(Lhs;)V

    .line 46
    return-void
.end method

.method public final a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lkt;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    if-nez v1, :cond_c

    .line 41
    :goto_b
    return-void

    .line 36
    :cond_c
    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_41

    .line 37
    new-instance v2, Lhg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value returned by \'any-getter\' ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lkt;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "()) not java.util.Map but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_41
    iget-object v2, p0, Lkt;->b:Llh;

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object p0, v0

    invoke-virtual {v2, p0, p2, p3}, Llh;->a(Ljava/util/Map;Lez;Lhs;)V

    goto :goto_b
.end method
