.class public Lcom/google/googlenav/ac;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/googlenav/ui/bg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ac;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ac;->b:Lcom/google/googlenav/ui/bg;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/google/googlenav/ui/bg;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ac;->b:Lcom/google/googlenav/ui/bg;

    return-object v0
.end method
