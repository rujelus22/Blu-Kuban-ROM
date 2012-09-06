.class Lo/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lo/x;


# direct methods
.method constructor <init>(Lo/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lo/z;->a:Lo/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/A;Lo/A;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1078
    iget v0, p1, Lo/A;->a:I

    iget v1, p2, Lo/A;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1075
    check-cast p1, Lo/A;

    check-cast p2, Lo/A;

    invoke-virtual {p0, p1, p2}, Lo/z;->a(Lo/A;Lo/A;)I

    move-result v0

    return v0
.end method
