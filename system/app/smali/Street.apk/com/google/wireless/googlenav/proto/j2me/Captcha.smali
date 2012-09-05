.class public Lcom/google/wireless/googlenav/proto/j2me/Captcha;
.super Ljava/lang/Object;


# static fields
.field public static final CAPTCHA_REQUEST_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final CAPTCHA_REQUEST_PROTO_ANSWER:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final CAPTCHA_RESPONSE_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final CAPTCHA_RESPONSE_PROTO_QUESTION:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x124

    const/4 v3, 0x0

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Captcha;->CAPTCHA_REQUEST_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Captcha;->CAPTCHA_REQUEST_PROTO_ANSWER:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Captcha;->CAPTCHA_RESPONSE_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Captcha;->CAPTCHA_RESPONSE_PROTO_QUESTION:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Captcha;->CAPTCHA_REQUEST_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientCapabilities;->CLIENT_CAPABILITIES_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/Captcha;->CAPTCHA_REQUEST_PROTO_ANSWER:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Captcha;->CAPTCHA_REQUEST_PROTO_ANSWER:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4, v7, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Captcha;->CAPTCHA_RESPONSE_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11e

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/Captcha;->CAPTCHA_RESPONSE_PROTO_QUESTION:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Captcha;->CAPTCHA_RESPONSE_PROTO_QUESTION:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/16 v1, 0x123

    invoke-virtual {v0, v1, v7, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
