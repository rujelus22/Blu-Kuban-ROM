.class public LD/f;
.super LD/g;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, LD/g;-><init>(J)V

    .line 39
    iput-object p3, p0, LD/f;->a:Ljava/lang/String;

    .line 40
    packed-switch p4, :pswitch_data_10

    .line 47
    const/4 v0, -0x1

    iput v0, p0, LD/f;->b:I

    .line 50
    :goto_b
    return-void

    .line 44
    :pswitch_c
    iput p4, p0, LD/f;->b:I

    goto :goto_b

    .line 40
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, LD/g;-><init>(J)V

    .line 54
    iput-object p3, p0, LD/f;->a:Ljava/lang/String;

    .line 55
    invoke-static {p4}, LD/f;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LD/f;->b:I

    .line 56
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 2
    .parameter

    .prologue
    .line 81
    const-string v0, "AVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    const/4 v0, 0x2

    .line 88
    :goto_9
    return v0

    .line 83
    :cond_a
    const-string v0, "OUT_OF_SERVICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 84
    const/4 v0, 0x0

    goto :goto_9

    .line 85
    :cond_14
    const-string v0, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 86
    const/4 v0, 0x1

    goto :goto_9

    .line 88
    :cond_1e
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 69
    packed-switch p0, :pswitch_data_10

    .line 77
    const-string v0, "NOT_SUPPORTED"

    :goto_5
    return-object v0

    .line 71
    :pswitch_6
    const-string v0, "AVAILABLE"

    goto :goto_5

    .line 73
    :pswitch_9
    const-string v0, "OUT_OF_SERVICE"

    goto :goto_5

    .line 75
    :pswitch_c
    const-string v0, "TEMPORARILY_UNAVAILABLE"

    goto :goto_5

    .line 69
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
    .parameter

    .prologue
    .line 60
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

    invoke-virtual {p0}, LD/f;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "provider"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, LD/f;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, LD/f;->b:I

    invoke-static {v3}, LD/f;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    return-void
.end method
