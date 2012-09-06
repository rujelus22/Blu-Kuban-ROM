.class final enum Lcom/google/googlenav/appwidget/traffic/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/appwidget/traffic/g;

.field public static final enum b:Lcom/google/googlenav/appwidget/traffic/g;

.field public static final enum c:Lcom/google/googlenav/appwidget/traffic/g;

.field public static final enum d:Lcom/google/googlenav/appwidget/traffic/g;

.field public static final enum e:Lcom/google/googlenav/appwidget/traffic/g;

.field public static final enum f:Lcom/google/googlenav/appwidget/traffic/g;

.field private static final synthetic g:[Lcom/google/googlenav/appwidget/traffic/g;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "GREEN"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->a:Lcom/google/googlenav/appwidget/traffic/g;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "YELLOW"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->b:Lcom/google/googlenav/appwidget/traffic/g;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "RED"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->c:Lcom/google/googlenav/appwidget/traffic/g;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->d:Lcom/google/googlenav/appwidget/traffic/g;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v7}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->e:Lcom/google/googlenav/appwidget/traffic/g;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "SLEEPING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->f:Lcom/google/googlenav/appwidget/traffic/g;

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/googlenav/appwidget/traffic/g;

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->a:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->b:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->c:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->d:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->e:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/g;->f:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->g:[Lcom/google/googlenav/appwidget/traffic/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/appwidget/traffic/g;
    .registers 2
    .parameter

    .prologue
    .line 30
    const-class v0, Lcom/google/googlenav/appwidget/traffic/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/appwidget/traffic/g;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/appwidget/traffic/g;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/g;->g:[Lcom/google/googlenav/appwidget/traffic/g;

    invoke-virtual {v0}, [Lcom/google/googlenav/appwidget/traffic/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/appwidget/traffic/g;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 4

    .prologue
    .line 37
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/f;->a:[I

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 51
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

    .line 39
    :pswitch_24
    const v0, 0x7f020423

    .line 49
    :goto_27
    return v0

    .line 41
    :pswitch_28
    const v0, 0x7f020427

    goto :goto_27

    .line 43
    :pswitch_2c
    const v0, 0x7f020425

    goto :goto_27

    .line 45
    :pswitch_30
    const v0, 0x7f020422

    goto :goto_27

    .line 47
    :pswitch_34
    const v0, 0x7f020424

    goto :goto_27

    .line 49
    :pswitch_38
    const v0, 0x7f020426

    goto :goto_27

    .line 37
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
