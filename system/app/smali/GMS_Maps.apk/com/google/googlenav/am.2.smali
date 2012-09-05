.class public Lcom/google/googlenav/am;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/am;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/am;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/am;->c:Ljava/lang/String;

    iput p4, p0, Lcom/google/googlenav/am;->d:I

    return-void
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/am;
    .registers 7

    const/4 v5, 0x3

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v5}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v5, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    new-instance v4, Lcom/google/googlenav/am;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/google/googlenav/am;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method
