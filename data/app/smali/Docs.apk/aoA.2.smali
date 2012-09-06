.class final LaoA;
.super LaoD;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LaoD",
        "<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 673
    invoke-direct {p0, p1}, LaoD;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 675
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 673
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, LaoA;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
