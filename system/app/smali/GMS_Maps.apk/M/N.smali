.class Lm/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lm/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lm/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Lm/n;->a:Ljava/lang/String;

    .line 470
    iput-object p2, p0, Lm/n;->b:Lm/c;

    .line 471
    return-void
.end method

.method static synthetic a(Lm/n;)Lm/c;
    .registers 2
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lm/n;->b:Lm/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lm/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/location/LocationListener;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lm/n;->b:Lm/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 483
    instance-of v1, p1, Lm/n;

    if-eqz v1, :cond_1c

    .line 484
    check-cast p1, Lm/n;

    .line 485
    iget-object v1, p0, Lm/n;->a:Ljava/lang/String;

    iget-object v2, p1, Lm/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lm/n;->b:Lm/c;

    iget-object v2, p1, Lm/n;->b:Lm/c;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    .line 488
    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 493
    iget-object v0, p0, Lm/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lm/n;->b:Lm/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
