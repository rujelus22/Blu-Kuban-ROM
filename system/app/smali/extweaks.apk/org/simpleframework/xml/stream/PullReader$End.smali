.class Lorg/simpleframework/xml/stream/PullReader$End;
.super Lorg/simpleframework/xml/stream/EventToken;
.source "PullReader.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 510
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventToken;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/stream/PullReader$1;)V
    .registers 2
    .parameter

    .prologue
    .line 510
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader$End;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnd()Z
    .registers 2

    .prologue
    .line 521
    const/4 v0, 0x1

    return v0
.end method
