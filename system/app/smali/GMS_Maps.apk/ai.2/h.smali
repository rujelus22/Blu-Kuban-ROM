.class public Lai/h;
.super Ljava/lang/Object;

# interfaces
.implements Lah/h;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)Lah/f;
    .registers 5

    new-instance v0, Lai/f;

    iget-object v1, p0, Lai/h;->a:Landroid/content/Context;

    sget-object v2, Lai/g;->a:Lai/g;

    invoke-direct {v0, v1, p1, v2}, Lai/f;-><init>(Landroid/content/Context;ILai/g;)V

    return-object v0
.end method

.method public a(II)Lah/f;
    .registers 4

    new-instance v0, Lai/f;

    invoke-direct {v0, p1, p2}, Lai/f;-><init>(II)V

    return-object v0
.end method

.method public a(IIZ)Lah/f;
    .registers 5

    new-instance v0, Lai/f;

    invoke-direct {v0, p1, p2, p3}, Lai/f;-><init>(IIZ)V

    return-object v0
.end method

.method public a([BII)Lah/f;
    .registers 5

    new-instance v0, Lai/f;

    invoke-direct {v0, p1, p2, p3}, Lai/f;-><init>([BII)V

    return-object v0
.end method

.method public a([IIIZ)Lah/f;
    .registers 6

    new-instance v0, Lai/f;

    invoke-direct {v0, p1, p2, p3, p4}, Lai/f;-><init>([IIIZ)V

    return-object v0
.end method

.method public b(I)Lah/f;
    .registers 5

    new-instance v0, Lai/f;

    iget-object v1, p0, Lai/h;->a:Landroid/content/Context;

    sget-object v2, Lai/g;->b:Lai/g;

    invoke-direct {v0, v1, p1, v2}, Lai/f;-><init>(Landroid/content/Context;ILai/g;)V

    return-object v0
.end method
