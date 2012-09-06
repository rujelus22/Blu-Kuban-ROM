.class public Lbo/j;
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
    .registers 8

    .prologue
    const/16 v7, 0x41b

    const/4 v6, 0x2

    const/16 v5, 0x21b

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 38
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/j;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 39
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/j;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 40
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/j;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 41
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/j;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 42
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbo/j;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 44
    sget-object v2, Lbo/j;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x11e

    move-object v0, v1

    check-cast v0, Lbo/k;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbo/k;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hc;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v7, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 52
    sget-object v2, Lbo/j;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbo/n;

    sget-object v0, Lbo/j;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v7, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 57
    sget-object v2, Lbo/j;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lbo/l;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbo/l;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hc;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v5, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 65
    sget-object v2, Lbo/j;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x218

    move-object v0, v1

    check-cast v0, Lbo/o;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 70
    sget-object v2, Lbo/j;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbo/m;

    sget-object v0, Lbo/j;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v5, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbo/m;

    sget-object v0, Lbo/j;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v5, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    check-cast v1, Lbo/m;

    const/4 v1, 0x3

    sget-object v2, Lbo/j;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 81
    return-void
.end method
