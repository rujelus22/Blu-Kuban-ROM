.class Lu/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lu/x;


# direct methods
.method constructor <init>(Lu/x;)V
    .registers 2

    iput-object p1, p0, Lu/z;->a:Lu/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/A;Lu/A;)I
    .registers 5

    iget v0, p1, Lu/A;->a:I

    iget v1, p2, Lu/A;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lu/A;

    check-cast p2, Lu/A;

    invoke-virtual {p0, p1, p2}, Lu/z;->a(Lu/A;Lu/A;)I

    move-result v0

    return v0
.end method
