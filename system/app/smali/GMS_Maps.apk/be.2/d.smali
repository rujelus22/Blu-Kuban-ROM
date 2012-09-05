.class public Lbe/d;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lam/b;)Lbe/d;
    .registers 3

    new-instance v0, Lbe/d;

    invoke-direct {v0}, Lbe/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbe/d;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbe/d;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbe/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbe/d;->b:Ljava/lang/String;

    return-object v0
.end method
