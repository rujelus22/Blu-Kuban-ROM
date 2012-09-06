.class final LaoB;
.super LaoD;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LaoD",
        "<",
        "Ljava/lang/reflect/Member;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 678
    invoke-direct {p0, p1}, LaoD;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 678
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, LaoB;->a(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 680
    invoke-static {p1}, LapV;->a(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
