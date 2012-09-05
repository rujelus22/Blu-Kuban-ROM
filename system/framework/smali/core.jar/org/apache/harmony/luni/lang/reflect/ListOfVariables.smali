.class Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;
.super Ljava/lang/Object;
.source "ListOfVariables.java"


# static fields
.field public static final EMPTY:[Ljava/lang/reflect/TypeVariable;


# instance fields
.field array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    sput-object v0, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->EMPTY:[Ljava/lang/reflect/TypeVariable;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/reflect/TypeVariable;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, elem:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method getArray()[Ljava/lang/reflect/TypeVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/reflect/TypeVariable;

    .line 33
    .local v0, a:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;

    return-object v1
.end method
