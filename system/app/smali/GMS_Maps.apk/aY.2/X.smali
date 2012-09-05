.class public LaY/X;
.super Ljava/lang/Object;


# static fields
.field private static a:LaY/X;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LaY/X;
    .registers 1

    sget-object v0, LaY/X;->a:LaY/X;

    return-object v0
.end method

.method public static a(LaY/X;)V
    .registers 1

    sput-object p0, LaY/X;->a:LaY/X;

    return-void
.end method


# virtual methods
.method public a(LaY/i;)LaY/r;
    .registers 5

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    :pswitch_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Layer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20
    const/4 v0, 0x0

    :goto_21
    return-object v0

    :pswitch_22
    new-instance v0, LaY/aB;

    invoke-direct {v0, p1}, LaY/aB;-><init>(LaY/i;)V

    goto :goto_21

    :pswitch_28
    new-instance v0, LaY/V;

    invoke-direct {v0, p1}, LaY/V;-><init>(LaY/i;)V

    goto :goto_21

    :pswitch_2e
    new-instance v0, LaY/v;

    invoke-direct {v0, p1}, LaY/v;-><init>(LaY/i;)V

    goto :goto_21

    :pswitch_34
    new-instance v0, LaY/I;

    invoke-direct {v0, p1}, LaY/I;-><init>(LaY/i;)V

    goto :goto_21

    :pswitch_3a
    new-instance v0, LaY/z;

    check-cast p1, LaY/G;

    invoke-direct {v0, p1}, LaY/z;-><init>(LaY/G;)V

    goto :goto_21

    :pswitch_42
    new-instance v0, LaY/bg;

    check-cast p1, LaY/bh;

    invoke-direct {v0, p1}, LaY/bg;-><init>(LaY/bh;)V

    goto :goto_21

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_3a
        :pswitch_22
        :pswitch_34
        :pswitch_7
        :pswitch_20
        :pswitch_22
        :pswitch_22
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_22
        :pswitch_7
        :pswitch_2e
        :pswitch_7
        :pswitch_28
        :pswitch_22
        :pswitch_7
        :pswitch_22
        :pswitch_20
        :pswitch_7
        :pswitch_42
        :pswitch_20
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method
