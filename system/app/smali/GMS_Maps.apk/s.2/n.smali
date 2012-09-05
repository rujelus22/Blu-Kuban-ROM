.class Ls/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ls/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Ls/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/n;->a:Ljava/lang/String;

    iput-object p2, p0, Ls/n;->b:Ls/c;

    return-void
.end method

.method static synthetic a(Ls/n;)Ls/c;
    .registers 2

    iget-object v0, p0, Ls/n;->b:Ls/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ls/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/location/LocationListener;
    .registers 2

    iget-object v0, p0, Ls/n;->b:Ls/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Ls/n;

    if-eqz v1, :cond_1c

    check-cast p1, Ls/n;

    iget-object v1, p0, Ls/n;->a:Ljava/lang/String;

    iget-object v2, p1, Ls/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Ls/n;->b:Ls/c;

    iget-object v2, p1, Ls/n;->b:Ls/c;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ls/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ls/n;->b:Ls/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
