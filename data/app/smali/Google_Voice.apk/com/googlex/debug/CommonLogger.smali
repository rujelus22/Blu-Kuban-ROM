.class public Lcom/googlex/debug/CommonLogger;
.super Lcom/googlex/debug/SimpleLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlex/debug/SimpleLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/googlex/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
