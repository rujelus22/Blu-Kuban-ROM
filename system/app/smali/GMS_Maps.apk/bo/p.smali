.class public Lbo/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x21b

    .line 9
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/p;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 11
    sget-object v2, Lbo/p;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbo/q;

    const/4 v0, 0x1

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/aY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v4, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    check-cast v1, Lbo/q;

    const/4 v1, 0x2

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/aY;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 19
    return-void
.end method
