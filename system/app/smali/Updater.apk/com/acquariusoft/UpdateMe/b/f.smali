.class public final Lcom/acquariusoft/UpdateMe/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/acquariusoft/UpdateMe/b/e;

    check-cast p2, Lcom/acquariusoft/UpdateMe/b/e;

    iget-object v0, p1, Lcom/acquariusoft/UpdateMe/b/e;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/acquariusoft/UpdateMe/b/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
