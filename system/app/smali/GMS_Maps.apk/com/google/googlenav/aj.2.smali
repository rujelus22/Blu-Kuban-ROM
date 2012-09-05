.class public Lcom/google/googlenav/aj;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/aj;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/aj;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/aj;->c:I

    return-void
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/aj;
    .registers 5

    new-instance v0, Lcom/google/googlenav/aj;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lam/g;->e(Lam/b;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/aj;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
