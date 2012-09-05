.class public Lbb/a;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/E;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbb/a;-><init>(IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbb/a;->a:I

    iput p2, p0, Lbb/a;->b:I

    iput-object p3, p0, Lbb/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lbb/a;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lbb/a;->b:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lbb/a;->c:Ljava/lang/Object;

    return-object v0
.end method
