.class public Lcom/google/wireless/googlenav/proto/j2me/gV;
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
    .registers 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x215

    const/4 v1, 0x0

    .line 84
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/gV;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 85
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/gV;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 86
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/gV;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 87
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/gV;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 88
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/gV;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 89
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/gV;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 91
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/gV;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gY;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/gV;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x41e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gY;

    invoke-virtual {v2, v3, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gY;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 102
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/gV;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ha;

    invoke-virtual {v2, v6, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ha;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v6, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ha;

    invoke-virtual {v2, v3, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ha;

    const/4 v0, 0x4

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ha;

    const/4 v0, 0x5

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/do;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ha;

    const/4 v0, 0x6

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/gV;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ha;

    const/4 v0, 0x7

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/gV;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x218

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ha;

    const/16 v0, 0x8

    sget-object v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 128
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/gV;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gX;

    invoke-virtual {v2, v6, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gX;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/gV;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 136
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/gV;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/hb;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/hb;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v6, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/hb;

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v6, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/hb;

    const/4 v0, 0x4

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/hb;

    const/4 v0, 0x5

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 153
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/gV;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gW;

    invoke-virtual {v2, v6, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gW;

    invoke-virtual {v2, v6, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gW;

    invoke-virtual {v2, v6, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gW;

    const/4 v0, 0x4

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/do;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gW;

    const/4 v0, 0x5

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gW;

    const/4 v0, 0x6

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/gV;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 173
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/gV;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gZ;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x218

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gZ;

    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x218

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gZ;

    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gZ;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/gZ;

    const/4 v0, 0x5

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v2, 0x218

    check-cast v1, Lcom/google/wireless/googlenav/proto/j2me/gZ;

    const/4 v1, 0x6

    sget-object v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 193
    return-void
.end method
