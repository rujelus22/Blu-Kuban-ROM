.class public final Ljx;
.super Ljava/lang/Object;
.source "a"


# static fields
.field static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/lang/String;

.field final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Ljx;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Ljx;->b:Ljava/lang/String;

    .line 31
    if-nez p2, :cond_c

    sget-object v0, Ljx;->a:[Ljava/lang/Class;

    :goto_9
    iput-object v0, p0, Ljx;->c:[Ljava/lang/Class;

    .line 32
    return-void

    :cond_c
    move-object v0, p2

    .line 31
    goto :goto_9
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljx;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 4
    .parameter

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljx;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    if-ne p1, p0, :cond_6

    move v0, v7

    .line 81
    :goto_5
    return v0

    .line 49
    :cond_6
    if-nez p1, :cond_a

    move v0, v6

    goto :goto_5

    .line 50
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v6

    .line 51
    goto :goto_5

    .line 53
    :cond_16
    check-cast p1, Ljx;

    .line 54
    iget-object v0, p0, Ljx;->b:Ljava/lang/String;

    iget-object v1, p1, Ljx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v6

    .line 55
    goto :goto_5

    .line 57
    :cond_24
    iget-object v0, p1, Ljx;->c:[Ljava/lang/Class;

    .line 58
    iget-object v1, p0, Ljx;->c:[Ljava/lang/Class;

    array-length v1, v1

    .line 59
    array-length v2, v0

    if-eq v2, v1, :cond_2e

    move v0, v6

    .line 60
    goto :goto_5

    :cond_2e
    move v2, v6

    .line 62
    :goto_2f
    if-ge v2, v1, :cond_4a

    .line 63
    aget-object v3, v0, v2

    .line 64
    iget-object v4, p0, Ljx;->c:[Ljava/lang/Class;

    aget-object v4, v4, v2

    .line 65
    if-eq v3, v4, :cond_47

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_47

    move v0, v6

    .line 77
    goto :goto_5

    .line 62
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_4a
    move v0, v7

    .line 81
    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Ljx;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljx;->c:[Ljava/lang/Class;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljx;->c:[Ljava/lang/Class;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-args)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
