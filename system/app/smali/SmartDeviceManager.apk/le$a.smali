.class final Lle$a;
.super Lkw;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field protected final k:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lkw;[Ljava/lang/Class;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkw;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lkw;-><init>(Lkw;)V

    .line 57
    iput-object p2, p0, Lle$a;->k:[Ljava/lang/Class;

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p3}, Lhs;->a()Ljava/lang/Class;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1c

    .line 66
    const/4 v1, 0x0

    iget-object v2, p0, Lle$a;->k:[Ljava/lang/Class;

    array-length v2, v2

    .line 67
    :goto_a
    if-ge v1, v2, :cond_19

    .line 68
    iget-object v3, p0, Lle$a;->k:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 71
    :cond_19
    if-ne v1, v2, :cond_1c

    .line 76
    :goto_1b
    return-void

    .line 75
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Lkw;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_1b
.end method
