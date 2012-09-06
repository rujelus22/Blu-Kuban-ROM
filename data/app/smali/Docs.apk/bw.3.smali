.class Lbw;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 9

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eq p4, v1, :cond_25

    const/4 v0, 0x2

    if-eq p4, v0, :cond_25

    const/4 v0, 0x3

    if-eq p4, v0, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Scope:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-lt p1, v1, :cond_2b

    const/16 v0, 0x32

    if-le p1, v0, :cond_33

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be between 1 and 50, inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_43

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid argument for name:  Cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    if-eqz p3, :cond_4b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_53

    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid argument for value:  Cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_89

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoded form of name and value must not exceed 64 characters combined.  Character length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_89
    iput p1, p0, Lbw;->b:I

    iput p4, p0, Lbw;->a:I

    iput-object p2, p0, Lbw;->a:Ljava/lang/String;

    iput-object p3, p0, Lbw;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lbw;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lbw;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbw;->b:Ljava/lang/String;

    return-object v0
.end method
