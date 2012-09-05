.class public final Llg;
.super Llm;
.source "a"

# interfaces
.implements Lhp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llm",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lhp;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/reflect/Method;

.field protected b:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lhj;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llm;-><init>(Ljava/lang/Class;B)V

    .line 49
    iput-object p1, p0, Llg;->a:Ljava/lang/reflect/Method;

    .line 50
    iput-object p2, p0, Llg;->b:Lhj;

    .line 51
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
    .line 115
    iget-object v0, p0, Llg;->b:Lhj;

    if-nez v0, :cond_2c

    .line 121
    sget-object v0, Lhq$a;->USE_STATIC_TYPING:Lhq$a;

    invoke-virtual {p1, v0}, Lhs;->a(Lhq$a;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Llg;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 123
    :cond_1c
    iget-object v0, p0, Llg;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lhs;->b(Lnd;)Lhj;

    move-result-object v0

    iput-object v0, p0, Llg;->b:Lhj;

    .line 132
    :cond_2c
    return-void
.end method

.method public final a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Llg;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    if-nez v1, :cond_13

    .line 62
    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v2

    .line 75
    :cond_f
    :goto_f
    invoke-virtual {v2, v1, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    .line 90
    return-void

    .line 64
    :cond_13
    iget-object v2, p0, Llg;->b:Lhj;

    .line 65
    if-nez v2, :cond_f

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 72
    invoke-virtual {p3, v2}, Lhs;->b(Ljava/lang/Class;)Lhj;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_58

    move-result-object v2

    goto :goto_f

    .line 76
    :catch_20
    move-exception v1

    throw v1

    .line 81
    :goto_22
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 82
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_22

    .line 85
    :cond_31
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_3a

    .line 86
    move-object v0, v1

    check-cast v0, Ljava/lang/Error;

    move-object p0, v0

    throw p0

    .line 89
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llg;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lhg;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lhg;

    move-result-object v1

    throw v1

    .line 78
    :catch_58
    move-exception v1

    goto :goto_22
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(@JsonValue serializer for method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llg;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llg;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
