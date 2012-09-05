.class public final Llu;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Llu;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Llu;->b:Ljava/lang/Class;

    .line 35
    iput-object v0, p0, Llu;->a:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Llu;->c:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Llu;->b:Ljava/lang/Class;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llu;->a:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Llu;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Llu;->c:I

    .line 44
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 19
    check-cast p1, Llu;

    iget-object v0, p0, Llu;->a:Ljava/lang/String;

    iget-object v1, p1, Llu;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p1, p0, :cond_6

    move v0, v3

    .line 87
    :goto_5
    return v0

    .line 75
    :cond_6
    if-nez p1, :cond_a

    move v0, v2

    goto :goto_5

    .line 76
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v2

    goto :goto_5

    .line 77
    :cond_16
    check-cast p1, Llu;

    .line 87
    iget-object v0, p1, Llu;->b:Ljava/lang/Class;

    iget-object v1, p0, Llu;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_20

    move v0, v3

    goto :goto_5

    :cond_20
    move v0, v2

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Llu;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Llu;->a:Ljava/lang/String;

    return-object v0
.end method
