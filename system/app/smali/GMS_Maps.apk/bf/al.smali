.class public Lbf/al;
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
    .registers 10

    .prologue
    const/16 v9, 0x41b

    const/16 v8, 0x212

    const-wide/16 v6, 0x0

    const/16 v5, 0x215

    const/4 v1, 0x0

    .line 82
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/al;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 83
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/al;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 84
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/al;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 85
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/al;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 86
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/al;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 87
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/al;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 88
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/al;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 89
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/al;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 91
    sget-object v2, Lbf/al;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x213

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/4 v0, 0x2

    sget-object v3, Lbf/al;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v9, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/4 v0, 0x3

    sget-object v3, Lbf/al;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v9, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/4 v0, 0x4

    sget-object v3, Lbf/al;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v9, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/4 v0, 0x5

    sget-object v3, Lbf/al;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v9, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/4 v0, 0x6

    sget-object v3, Lbf/x;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v9, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/4 v0, 0x7

    sget-object v3, Lbf/aD;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v9, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/16 v0, 0x8

    sget-object v3, Lbf/R;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v9, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/16 v0, 0x9

    sget-object v4, Lbf/al;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/16 v0, 0xa

    sget-object v3, Lbf/al;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v9, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/at;

    const/16 v0, 0xb

    sget-object v3, Lbf/al;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v9, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 126
    sget-object v2, Lbf/al;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbf/as;

    const/4 v0, 0x1

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/as;

    const/4 v0, 0x2

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/as;

    const/4 v0, 0x3

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/as;

    const/4 v0, 0x4

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/as;

    const/4 v0, 0x5

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/as;

    const/4 v0, 0x6

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/as;

    const/4 v0, 0x7

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/as;

    const/16 v0, 0x8

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 152
    sget-object v2, Lbf/al;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbf/am;

    const/4 v0, 0x1

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/am;

    const/4 v0, 0x2

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/am;

    const/4 v0, 0x3

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/am;

    const/4 v0, 0x4

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/am;

    const/4 v0, 0x5

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/am;

    const/4 v0, 0x6

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/am;

    const/4 v0, 0x7

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/am;

    const/16 v0, 0x8

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 178
    sget-object v2, Lbf/al;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbf/aq;

    const/4 v0, 0x1

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/aq;

    const/4 v0, 0x2

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/aq;

    const/4 v0, 0x3

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/aq;

    const/4 v0, 0x4

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/aq;

    const/4 v0, 0x5

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/aq;

    const/4 v0, 0x6

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/aq;

    const/4 v0, 0x7

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/aq;

    const/16 v0, 0x8

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 204
    sget-object v2, Lbf/al;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbf/ar;

    const/4 v0, 0x1

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ar;

    const/4 v0, 0x2

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ar;

    const/4 v0, 0x3

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ar;

    const/4 v0, 0x4

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ar;

    const/4 v0, 0x5

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ar;

    const/4 v0, 0x6

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ar;

    const/4 v0, 0x7

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ar;

    const/16 v0, 0x8

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ar;

    const/16 v0, 0x9

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 233
    sget-object v2, Lbf/al;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbf/ao;

    const/4 v0, 0x1

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ao;

    const/4 v0, 0x2

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ao;

    const/4 v0, 0x3

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ao;

    const/4 v0, 0x4

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 247
    sget-object v2, Lbf/al;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbf/ap;

    const/4 v0, 0x1

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ap;

    const/4 v0, 0x2

    sget-object v3, Lbf/al;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v9, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 255
    sget-object v2, Lbf/al;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbf/an;

    const/4 v0, 0x1

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/an;

    const/4 v0, 0x2

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/an;

    const/4 v0, 0x3

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    check-cast v1, Lbf/an;

    const/4 v1, 0x4

    invoke-static {v6, v7}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 269
    return-void
.end method
