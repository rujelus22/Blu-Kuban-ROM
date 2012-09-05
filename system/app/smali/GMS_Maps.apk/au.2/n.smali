.class public Lau/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lau/n;->a:I

    iput-object p2, p0, Lau/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lau/n;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lau/n;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Lau/n;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public d()I
    .registers 3

    const/4 v0, 0x4

    iget-object v1, p0, Lau/n;->b:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lau/n;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    return v0
.end method
