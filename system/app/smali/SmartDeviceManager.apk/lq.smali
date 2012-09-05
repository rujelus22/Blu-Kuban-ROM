.class final Llq;
.super Llm;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llm",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llm;-><init>(Ljava/lang/Class;B)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhg;
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lhq$a;->FAIL_ON_EMPTY_BEANS:Lhq$a;

    invoke-virtual {p3, v0}, Lhs;->a(Lhq$a;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 62
    new-instance v0, Lhg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No serializer found for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2f
    invoke-virtual {p2}, Lez;->d()V

    .line 66
    invoke-virtual {p2}, Lez;->e()V

    .line 67
    return-void
.end method
