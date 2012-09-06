.class Lorg/simpleframework/xml/core/Function;
.super Ljava/lang/Object;


# instance fields
.field private final contextual:Z

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Function;-><init>(Ljava/lang/reflect/Method;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/simpleframework/xml/core/Function;->contextual:Z

    iput-object p1, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public call(Lorg/simpleframework/xml/core/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v3, 0x0

    if-eqz p2, :cond_24

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getSession()Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Session;->getMap()Ljava/util/Map;

    move-result-object v0

    iget-boolean v1, p0, Lorg/simpleframework/xml/core/Function;->contextual:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    :cond_24
    const/4 v0, 0x0

    goto :goto_1a
.end method
