.class public LG/f;
.super LG/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .registers 6

    invoke-direct {p0, p1, p2}, LG/g;-><init>(J)V

    iput-object p3, p0, LG/f;->a:Ljava/lang/String;

    packed-switch p4, :pswitch_data_10

    const/4 v0, -0x1

    iput v0, p0, LG/f;->b:I

    :goto_b
    return-void

    :pswitch_c
    iput p4, p0, LG/f;->b:I

    goto :goto_b

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1, p2}, LG/g;-><init>(J)V

    iput-object p3, p0, LG/f;->a:Ljava/lang/String;

    invoke-static {p4}, LG/f;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LG/f;->b:I

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 2

    const-string v0, "AVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    :goto_9
    return v0

    :cond_a
    const-string v0, "OUT_OF_SERVICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_9

    :cond_14
    const-string v0, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_9

    :cond_1e
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const-string v0, "NOT_SUPPORTED"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "AVAILABLE"

    goto :goto_5

    :pswitch_9
    const-string v0, "OUT_OF_SERVICE"

    goto :goto_5

    :pswitch_c
    const-string v0, "TEMPORARILY_UNAVAILABLE"

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/io/Writer;)V
    .registers 6

    const-string v0, "<%s %s=\'%s\' %s=\'%s\' %s=\'%s\' />\n"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "provider-status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, LG/f;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "provider"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, LG/f;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, LG/f;->b:I

    invoke-static {v3}, LG/f;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
