.class public Lcom/google/wireless/googlenav/proto/j2me/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0x224

    const/16 v8, 0x124

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 44
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 45
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/x;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 46
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/x;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 47
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/x;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 48
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/x;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 50
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/z;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/z;

    invoke-virtual {v2, v8, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/z;

    const/4 v0, 0x3

    invoke-virtual {v2, v9, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/z;

    const/4 v0, 0x4

    invoke-virtual {v2, v9, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/z;

    const/4 v0, 0x5

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/x;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/z;

    const/4 v0, 0x6

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/z;

    const/4 v0, 0x7

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 73
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/x;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/C;

    invoke-virtual {v2, v8, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/C;

    invoke-virtual {v2, v9, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/C;

    const/4 v0, 0x3

    invoke-virtual {v2, v9, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 84
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/x;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/A;

    invoke-virtual {v2, v8, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x424

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/A;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 92
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/x;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/B;

    invoke-virtual {v2, v8, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x424

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/B;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/B;

    const/4 v0, 0x3

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/x;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 103
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/x;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v2, 0x41b

    check-cast v1, Lcom/google/wireless/googlenav/proto/j2me/y;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v2, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 108
    return-void
.end method
