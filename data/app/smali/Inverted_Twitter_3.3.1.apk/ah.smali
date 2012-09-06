.class final Lah;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lah;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lah;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lah;->a:Ljava/lang/String;

    iput-object p2, p0, Lah;->b:Lah;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lah;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a([CII)Ljava/lang/String;
    .registers 9

    iget-object v1, p0, Lah;->a:Ljava/lang/String;

    iget-object v0, p0, Lah;->b:Lah;

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_1c

    const/4 v2, 0x0

    :cond_b
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v2

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_19

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_b

    :cond_19
    if-ne v2, p3, :cond_1c

    :goto_1b
    return-object v1

    :cond_1c
    if-eqz v0, :cond_23

    iget-object v1, v0, Lah;->a:Ljava/lang/String;

    iget-object v0, v0, Lah;->b:Lah;

    goto :goto_4

    :cond_23
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public final b()Lah;
    .registers 2

    iget-object v0, p0, Lah;->b:Lah;

    return-object v0
.end method
