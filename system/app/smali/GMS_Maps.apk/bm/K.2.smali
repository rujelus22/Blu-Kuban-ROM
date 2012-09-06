.class public Lbm/K;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/Extension;

.field public static final c:Lcom/google/googlenav/common/io/protocol/Extension;

.field public static final d:Lcom/google/googlenav/common/io/protocol/Extension;

.field public static final e:Lcom/google/googlenav/common/io/protocol/Extension;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x224

    const/4 v1, 0x0

    .line 10
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbm/K;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 11
    new-instance v0, Lcom/google/googlenav/common/io/protocol/Extension;

    const v2, 0xfdddbc

    sget-object v3, Lbm/K;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/Extension;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, Lbm/K;->b:Lcom/google/googlenav/common/io/protocol/Extension;

    .line 12
    new-instance v0, Lcom/google/googlenav/common/io/protocol/Extension;

    const v2, 0x1114979

    sget-object v3, Lbm/K;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/Extension;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, Lbm/K;->c:Lcom/google/googlenav/common/io/protocol/Extension;

    .line 13
    new-instance v0, Lcom/google/googlenav/common/io/protocol/Extension;

    const v2, 0x1114978

    sget-object v3, Lbm/K;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/Extension;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, Lbm/K;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    .line 14
    new-instance v0, Lcom/google/googlenav/common/io/protocol/Extension;

    const v2, 0x18c05b9

    sget-object v3, Lbm/K;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/Extension;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, Lbm/K;->e:Lcom/google/googlenav/common/io/protocol/Extension;

    .line 16
    sget-object v2, Lbm/K;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbm/L;

    const/4 v0, 0x1

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lbm/L;

    const/4 v0, 0x2

    sget-object v4, Lbm/ag;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbm/L;

    const/4 v0, 0x3

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 27
    return-void
.end method
