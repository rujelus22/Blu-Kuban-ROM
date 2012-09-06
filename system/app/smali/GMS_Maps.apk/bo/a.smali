.class public Lbo/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x41b

    const/16 v7, 0x11b

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 48
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 49
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 50
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 51
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/a;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 52
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/a;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 53
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/a;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 54
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/a;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 55
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/a;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 57
    sget-object v2, Lbo/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x124

    move-object v0, v1

    check-cast v0, Lbo/d;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lbo/d;

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lbo/d;

    const/4 v0, 0x3

    sget-object v4, Lbo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x218

    move-object v0, v1

    check-cast v0, Lbo/d;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 71
    sget-object v2, Lbo/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lbo/g;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fz;->q:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 76
    sget-object v2, Lbo/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbo/h;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/go;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v7, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbo/h;

    sget-object v0, Lbo/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v7, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 84
    sget-object v2, Lbo/a;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbo/e;

    sget-object v0, Lbo/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v8, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 89
    sget-object v2, Lbo/a;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x124

    move-object v0, v1

    check-cast v0, Lbo/f;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 94
    sget-object v2, Lbo/a;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbo/i;

    sget-object v0, Lbo/a;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v7, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x118

    move-object v0, v1

    check-cast v0, Lbo/i;

    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbo/i;

    const/4 v0, 0x3

    sget-object v3, Lbo/a;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v8, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 105
    sget-object v2, Lbo/a;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbo/c;

    sget-object v0, Lbo/a;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v8, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 110
    sget-object v2, Lbo/a;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x213

    move-object v0, v1

    check-cast v0, Lbo/b;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lbo/b;

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 118
    return-void
.end method
