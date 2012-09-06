.class public LapX;
.super Ljava/lang/Object;
.source "StackTraceElements.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    const/4 v1, -0x1

    .line 82
    new-instance v2, Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "class"

    invoke-direct {v2, v3, v4, v0, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method

.method public static a(Ljava/lang/reflect/Member;)Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 49
    if-nez p0, :cond_5

    .line 50
    sget-object v0, LapW;->a:Ljava/lang/Object;

    .line 68
    :goto_4
    return-object v0

    .line 53
    :cond_5
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, -0x1

    .line 66
    invoke-static {p0}, LapV;->a(Ljava/lang/reflect/Member;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    const-class v1, Ljava/lang/reflect/Constructor;

    if-ne v0, v1, :cond_20

    const-string v0, "<init>"

    .line 68
    :goto_15
    new-instance v1, Ljava/lang/StackTraceElement;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_4

    .line 67
    :cond_20
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method
