.class public Lcom/google/wireless/googlenav/proto/j2me/eT;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x21e

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x224

    const/4 v1, 0x0

    .line 67
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/eT;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 68
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/eT;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 69
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/eT;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 70
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/eT;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 71
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/eT;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 72
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/eT;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 74
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/eT;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x116

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eU;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eU;

    invoke-virtual {v2, v7, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eU;

    const/4 v0, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 85
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/eT;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eV;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/eT;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 90
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/eT;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eX;

    invoke-virtual {v2, v7, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eX;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/eT;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 98
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/eT;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x116

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eZ;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eZ;

    invoke-virtual {v2, v4, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 106
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/eT;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eW;

    invoke-virtual {v2, v7, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eW;

    invoke-virtual {v2, v4, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eW;

    const/4 v0, 0x3

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x213

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eW;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eW;

    const/4 v0, 0x5

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eW;

    const/4 v0, 0x6

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eW;

    const/4 v0, 0x7

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eW;

    const/16 v0, 0x8

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eW;

    const/16 v0, 0x9

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eW;

    const/16 v0, 0xa

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 138
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/eT;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eY;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/eT;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v2, 0x41b

    check-cast v1, Lcom/google/wireless/googlenav/proto/j2me/eY;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/eT;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v2, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 146
    return-void
.end method
