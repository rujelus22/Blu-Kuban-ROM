.class public Lau/j;
.super Ljava/lang/Object;

# interfaces
.implements Lau/k;


# instance fields
.field private a:Lau/x;

.field private b:Lau/x;

.field private c:Lam/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lau/j;->a:Lau/x;

    iput-object v0, p0, Lau/j;->b:Lau/x;

    iput-object v0, p0, Lau/j;->c:Lam/b;

    return-void
.end method

.method public constructor <init>(Lau/x;Lau/x;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lau/j;->a:Lau/x;

    iput-object v0, p0, Lau/j;->b:Lau/x;

    iput-object v0, p0, Lau/j;->c:Lam/b;

    iput-object p1, p0, Lau/j;->a:Lau/x;

    iput-object p2, p0, Lau/j;->b:Lau/x;

    return-void
.end method

.method public constructor <init>(Lau/x;Lau/x;Lam/b;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lau/j;-><init>(Lau/x;Lau/x;)V

    iput-object p3, p0, Lau/j;->c:Lam/b;

    return-void
.end method


# virtual methods
.method public a(Lam/b;)V
    .registers 2

    iput-object p1, p0, Lau/j;->c:Lam/b;

    return-void
.end method

.method public a(Lau/x;)V
    .registers 2

    iput-object p1, p0, Lau/j;->a:Lau/x;

    return-void
.end method

.method public af()[LaJ/B;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public as()Lau/x;
    .registers 2

    iget-object v0, p0, Lau/j;->a:Lau/x;

    return-object v0
.end method

.method public au()Lau/x;
    .registers 2

    iget-object v0, p0, Lau/j;->b:Lau/x;

    return-object v0
.end method

.method public aw()Lam/b;
    .registers 2

    iget-object v0, p0, Lau/j;->c:Lam/b;

    return-object v0
.end method

.method public b(Lau/x;)V
    .registers 2

    iput-object p1, p0, Lau/j;->b:Lau/x;

    return-void
.end method

.method public m(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
