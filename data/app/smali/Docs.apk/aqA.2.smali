.class LaqA;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# instance fields
.field final a:I

.field final a:Ljava/lang/String;

.field final a:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 7
    .parameter

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaqA;->a:Ljava/lang/String;

    .line 800
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, LaqA;->a:[Ljava/lang/Class;

    .line 802
    iget-object v0, p0, LaqA;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 803
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LaqA;->a:[Ljava/lang/Class;

    array-length v1, v1

    add-int/2addr v1, v0

    .line 804
    iget-object v2, p0, LaqA;->a:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v3, :cond_2d

    aget-object v4, v2, v0

    .line 805
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 807
    :cond_2d
    iput v1, p0, LaqA;->a:I

    .line 808
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 815
    instance-of v0, p1, LaqA;

    if-nez v0, :cond_6

    .line 834
    :cond_5
    :goto_5
    return v1

    .line 819
    :cond_6
    check-cast p1, LaqA;

    .line 820
    iget-object v0, p0, LaqA;->a:Ljava/lang/String;

    iget-object v2, p1, LaqA;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 824
    iget-object v0, p0, LaqA;->a:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v2, p1, LaqA;->a:[Ljava/lang/Class;

    array-length v2, v2

    if-ne v0, v2, :cond_5

    move v0, v1

    .line 828
    :goto_1b
    iget-object v2, p0, LaqA;->a:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    .line 829
    iget-object v2, p0, LaqA;->a:[Ljava/lang/Class;

    aget-object v2, v2, v0

    iget-object v3, p1, LaqA;->a:[Ljava/lang/Class;

    aget-object v3, v3, v0

    if-ne v2, v3, :cond_5

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 834
    :cond_2d
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 811
    iget v0, p0, LaqA;->a:I

    return v0
.end method
