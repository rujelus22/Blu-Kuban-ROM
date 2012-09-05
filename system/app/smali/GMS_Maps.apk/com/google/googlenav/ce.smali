.class public Lcom/google/googlenav/ce;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ce;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ce;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ce;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/ce;
    .registers 5

    new-instance v0, Lcom/google/googlenav/ce;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
