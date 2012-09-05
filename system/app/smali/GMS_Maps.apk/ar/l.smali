.class Lar/l;
.super Ljava/lang/Object;

# interfaces
.implements Lar/d;


# instance fields
.field final synthetic a:Lar/k;


# direct methods
.method constructor <init>(Lar/k;)V
    .registers 2

    iput-object p1, p0, Lar/l;->a:Lar/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p2, Lar/k;

    iget v0, p2, Lar/k;->b:I

    check-cast p1, Lar/k;

    iget v1, p1, Lar/k;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
