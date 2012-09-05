.class public Lcom/google/googlenav/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:LaJ/B;

.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/google/googlenav/c;-><init>(Ljava/lang/String;III)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x4

    if-eq p1, v0, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/googlenav/c;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/googlenav/c;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/c;->a:Ljava/lang/String;

    new-instance v0, LaJ/B;

    invoke-direct {v0, p2, p3}, LaJ/B;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/c;->b:LaJ/B;

    iput p4, p0, Lcom/google/googlenav/c;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()LaJ/B;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/c;->b:LaJ/B;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/c;->c:I

    return v0
.end method

.method public d()Lau/x;
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/googlenav/c;->c:I

    packed-switch v1, :pswitch_data_24

    :goto_6
    return-object v0

    :pswitch_7
    iget-object v1, p0, Lcom/google/googlenav/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lau/x;->a(Ljava/lang/String;LaJ/B;)Lau/x;

    move-result-object v0

    goto :goto_6

    :pswitch_e
    iget-object v0, p0, Lcom/google/googlenav/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/c;->b:LaJ/B;

    invoke-static {v0, v1}, Lau/x;->a(Ljava/lang/String;LaJ/B;)Lau/x;

    move-result-object v0

    goto :goto_6

    :pswitch_17
    invoke-static {}, Lau/x;->a()Lau/x;

    move-result-object v0

    goto :goto_6

    :pswitch_1c
    iget-object v1, p0, Lcom/google/googlenav/c;->b:LaJ/B;

    invoke-static {v1, v0}, Lau/x;->a(LaJ/B;Lt/y;)Lau/x;

    move-result-object v0

    goto :goto_6

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_7
        :pswitch_e
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method
