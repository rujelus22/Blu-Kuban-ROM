.class public LaV/q;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:LaJ/B;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "indexInList="

    sput-object v0, LaV/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;LaJ/B;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_22

    const-string v0, ""

    :goto_7
    iput-object v0, p0, LaV/q;->b:Ljava/lang/String;

    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :goto_f
    iput-object p1, p0, LaV/q;->c:Ljava/lang/String;

    if-nez p3, :cond_15

    const-string p3, ""

    :cond_15
    iput-object p3, p0, LaV/q;->d:Ljava/lang/String;

    iput p4, p0, LaV/q;->e:I

    iput p5, p0, LaV/q;->f:I

    iput p6, p0, LaV/q;->g:I

    iput-object p7, p0, LaV/q;->h:Ljava/lang/String;

    iput-object p8, p0, LaV/q;->i:LaJ/B;

    return-void

    :cond_22
    move-object v0, p1

    goto :goto_7

    :cond_24
    move-object p1, p2

    goto :goto_f
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, LaV/q;->f:I

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LaV/q;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, LaV/q;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LaV/q;->h()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, LaV/q;->h()LaJ/B;

    move-result-object v1

    invoke-virtual {v1}, LaJ/B;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_38

    sget-object v1, LaV/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LaV/q;)Z
    .registers 4

    invoke-virtual {p0}, LaV/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LaV/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LaV/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, LaV/q;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LaV/q;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LaV/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaV/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaV/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaV/q;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, LaV/q;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, LaV/q;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, LaV/q;

    iget v1, p0, LaV/q;->e:I

    invoke-virtual {p1}, LaV/q;->e()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget v1, p0, LaV/q;->f:I

    invoke-virtual {p1}, LaV/q;->a()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget v1, p0, LaV/q;->g:I

    invoke-virtual {p1}, LaV/q;->f()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, LaV/q;->b:Ljava/lang/String;

    invoke-virtual {p1}, LaV/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Las/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LaV/q;->c:Ljava/lang/String;

    invoke-virtual {p1}, LaV/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Las/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LaV/q;->d:Ljava/lang/String;

    invoke-virtual {p1}, LaV/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Las/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LaV/q;->h:Ljava/lang/String;

    invoke-virtual {p1}, LaV/q;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Las/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public f()I
    .registers 2

    iget v0, p0, LaV/q;->g:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaV/q;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()LaJ/B;
    .registers 2

    iget-object v0, p0, LaV/q;->i:LaJ/B;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget v0, p0, LaV/q;->e:I

    packed-switch v0, :pswitch_data_1e

    const-string v0, "d"

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "c"

    goto :goto_7

    :pswitch_b
    const-string v0, "h"

    goto :goto_7

    :pswitch_e
    const-string v0, "r"

    goto :goto_7

    :pswitch_11
    const-string v0, "v"

    goto :goto_7

    :pswitch_14
    const-string v0, "f"

    goto :goto_7

    :pswitch_17
    const-string v0, "p"

    goto :goto_7

    :pswitch_1a
    const-string v0, "d"

    goto :goto_7

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_14
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method

.method public j()Ljava/lang/String;
    .registers 4

    const v0, 0x7f02035c

    iget v1, p0, LaV/q;->e:I

    packed-switch v1, :pswitch_data_28

    :pswitch_8
    const v0, 0x7f02035a

    :goto_b
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    const v0, 0x7f02035e

    goto :goto_b

    :pswitch_23
    const v0, 0x7f02035b

    goto :goto_b

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_23
        :pswitch_1f
        :pswitch_b
    .end packed-switch
.end method

.method public k()I
    .registers 4

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-virtual {p0}, LaV/q;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    :pswitch_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0

    :pswitch_b
    const/4 v0, 0x6

    goto :goto_a

    :pswitch_d
    invoke-virtual {p0}, LaV/q;->e()I

    move-result v1

    if-ne v1, v0, :cond_15

    const/4 v0, 0x2

    goto :goto_a

    :cond_15
    const/4 v0, 0x1

    goto :goto_a

    :pswitch_17
    const/4 v0, 0x5

    goto :goto_a

    :pswitch_19
    const/16 v0, 0x8

    goto :goto_a

    :pswitch_1c
    move v0, v1

    goto :goto_a

    :pswitch_1e
    invoke-virtual {p0}, LaV/q;->e()I

    move-result v2

    if-eq v2, v1, :cond_a

    const/4 v0, 0x7

    goto :goto_a

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_1e
        :pswitch_17
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaV/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaV/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaV/q;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " providerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaV/q;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ranking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaV/q;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
