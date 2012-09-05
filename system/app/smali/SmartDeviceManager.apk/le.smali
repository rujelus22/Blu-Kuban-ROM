.class public abstract Lle;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lle$a;,
        Lle$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static a(Lkw;[Ljava/lang/Class;)Lkw;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkw;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lkw;"
        }
    .end annotation

    .prologue
    .line 17
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 18
    new-instance v0, Lle$b;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, p0, v1}, Lle$b;-><init>(Lkw;Ljava/lang/Class;)V

    .line 20
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lle$a;

    invoke-direct {v0, p0, p1}, Lle$a;-><init>(Lkw;[Ljava/lang/Class;)V

    goto :goto_c
.end method
