.class Lcom/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.intel.bluetooth"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->b:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    packed-switch p1, :pswitch_data_14

    :goto_3
    :pswitch_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/a/a/d;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_c
    iget-object v0, p0, Lcom/a/a/d;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method public a(I)Z
    .registers 4

    packed-switch p1, :pswitch_data_10

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/a/a/d;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    goto :goto_4

    :pswitch_e
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_e
    .end packed-switch
.end method
