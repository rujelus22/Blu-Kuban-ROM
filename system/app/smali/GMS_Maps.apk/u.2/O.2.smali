.class public final Lu/O;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    :pswitch_3
    const-string v0, ""

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "Driving"

    goto :goto_5

    :pswitch_9
    const-string v0, "Walking"

    goto :goto_5

    :pswitch_c
    const-string v0, "Bicycling"

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static a()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method
