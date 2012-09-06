.class final enum Ldbxyzptlk/j/h;
.super Ldbxyzptlk/j/f;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldbxyzptlk/j/f;-><init>(Ljava/lang/String;ILdbxyzptlk/j/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
