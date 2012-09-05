.class public Lau/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/util/Date;


# direct methods
.method private constructor <init>(Ljava/util/Date;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau/l;->b:Ljava/util/Date;

    iput p2, p0, Lau/l;->a:I

    return-void
.end method

.method public static a()Lau/l;
    .registers 3

    new-instance v0, Lau/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lau/l;-><init>(Ljava/util/Date;I)V

    return-object v0
.end method

.method public static a(Ljava/util/Date;I)Lau/l;
    .registers 3

    new-instance v0, Lau/l;

    invoke-direct {v0, p0, p1}, Lau/l;-><init>(Ljava/util/Date;I)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .registers 2

    iget-object v0, p0, Lau/l;->b:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Ljava/util/Date;
    .registers 2

    invoke-virtual {p0}, Lau/l;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lau/l;->b:Ljava/util/Date;

    goto :goto_b
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lau/l;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lau/l;

    if-eqz v2, :cond_5

    check-cast p1, Lau/l;

    iget v2, p0, Lau/l;->a:I

    iget v3, p1, Lau/l;->a:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lau/l;->b()Z

    move-result v2

    invoke-virtual {p1}, Lau/l;->b()Z

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lau/l;->b:Ljava/util/Date;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lau/l;->b:Ljava/util/Date;

    iget-object v3, p1, Lau/l;->b:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2a
    move v0, v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lau/l;->a:I

    iget-object v1, p0, Lau/l;->b:Ljava/util/Date;

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lau/l;->b:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lau/l;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Current time"

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lau/l;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    const-string v0, "unknown time type for"

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lau/l;->c()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_2e
    const-string v0, "depart at "

    goto :goto_12

    :pswitch_31
    const-string v0, "arrive by"

    goto :goto_12

    :pswitch_34
    const-string v0, "last trip on"

    goto :goto_12

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch
.end method
