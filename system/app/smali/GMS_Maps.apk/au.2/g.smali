.class public Lau/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 4

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lau/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lau/g;->b:Ljava/lang/String;

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/g;->a:Ljava/lang/String;

    return-object v0
.end method
