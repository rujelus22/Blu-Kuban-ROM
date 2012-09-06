.class Lorg/simpleframework/xml/stream/PullReader$End;
.super Lorg/simpleframework/xml/stream/EventToken;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventToken;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/stream/PullReader$End;)V
    .registers 2

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader$End;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnd()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
