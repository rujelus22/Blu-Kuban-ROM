.class public Lcom/google/wireless/googlenav/proto/j2me/ei;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 9
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/ei;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 11
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ei;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ej;

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x221

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ej;

    const/4 v0, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 19
    return-void
.end method
