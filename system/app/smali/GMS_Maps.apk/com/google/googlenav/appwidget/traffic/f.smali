.class final enum Lcom/google/googlenav/appwidget/traffic/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/appwidget/traffic/f;

.field public static final enum b:Lcom/google/googlenav/appwidget/traffic/f;

.field public static final enum c:Lcom/google/googlenav/appwidget/traffic/f;

.field public static final enum d:Lcom/google/googlenav/appwidget/traffic/f;

.field public static final enum e:Lcom/google/googlenav/appwidget/traffic/f;

.field public static final enum f:Lcom/google/googlenav/appwidget/traffic/f;

.field private static final synthetic g:[Lcom/google/googlenav/appwidget/traffic/f;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/f;

    const-string v1, "GREEN"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/appwidget/traffic/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/f;->a:Lcom/google/googlenav/appwidget/traffic/f;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/f;

    const-string v1, "YELLOW"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/appwidget/traffic/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/f;->b:Lcom/google/googlenav/appwidget/traffic/f;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/f;

    const-string v1, "RED"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/appwidget/traffic/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lcom/google/googlenav/appwidget/traffic/f;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/f;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/appwidget/traffic/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/f;->d:Lcom/google/googlenav/appwidget/traffic/f;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/f;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v7}, Lcom/google/googlenav/appwidget/traffic/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/f;->e:Lcom/google/googlenav/appwidget/traffic/f;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/f;

    const-string v1, "SLEEPING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/f;->f:Lcom/google/googlenav/appwidget/traffic/f;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/googlenav/appwidget/traffic/f;

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/f;->a:Lcom/google/googlenav/appwidget/traffic/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/f;->b:Lcom/google/googlenav/appwidget/traffic/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/f;->c:Lcom/google/googlenav/appwidget/traffic/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/f;->d:Lcom/google/googlenav/appwidget/traffic/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/f;->e:Lcom/google/googlenav/appwidget/traffic/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/f;->f:Lcom/google/googlenav/appwidget/traffic/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/f;->g:[Lcom/google/googlenav/appwidget/traffic/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/appwidget/traffic/f;
    .registers 2

    const-class v0, Lcom/google/googlenav/appwidget/traffic/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/appwidget/traffic/f;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/appwidget/traffic/f;
    .registers 1

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/f;->g:[Lcom/google/googlenav/appwidget/traffic/f;

    invoke-virtual {v0}, [Lcom/google/googlenav/appwidget/traffic/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/appwidget/traffic/f;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 4

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->a:[I

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown traffic light enum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    const v0, 0x7f020383

    :goto_27
    return v0

    :pswitch_28
    const v0, 0x7f020387

    goto :goto_27

    :pswitch_2c
    const v0, 0x7f020385

    goto :goto_27

    :pswitch_30
    const v0, 0x7f020382

    goto :goto_27

    :pswitch_34
    const v0, 0x7f020384

    goto :goto_27

    :pswitch_38
    const v0, 0x7f020386

    goto :goto_27

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
    .end packed-switch
.end method
