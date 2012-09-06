.class Lorg/simpleframework/xml/stream/HyphenBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/stream/Style;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    new-instance v1, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;

    invoke-direct {v1, p0, p1, v0}, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;-><init>(Lorg/simpleframework/xml/stream/HyphenBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;)V

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->process()Ljava/lang/String;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    new-instance v1, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;

    invoke-direct {v1, p0, p1, v0}, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;-><init>(Lorg/simpleframework/xml/stream/HyphenBuilder;Ljava/lang/String;Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;)V

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/HyphenBuilder$Parser;->process()Ljava/lang/String;

    move-result-object v0

    :cond_c
    return-object v0
.end method
