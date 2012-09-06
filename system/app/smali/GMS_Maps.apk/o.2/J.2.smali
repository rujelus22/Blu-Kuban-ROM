.class final Lo/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/K;Lo/K;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 555
    invoke-virtual {p2}, Lo/K;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lo/K;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 552
    check-cast p1, Lo/K;

    check-cast p2, Lo/K;

    invoke-virtual {p0, p1, p2}, Lo/J;->a(Lo/K;Lo/K;)I

    move-result v0

    return v0
.end method
