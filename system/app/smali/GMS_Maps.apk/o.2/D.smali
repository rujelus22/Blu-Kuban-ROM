.class Lo/d;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Locale;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 376
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lo/d;->a:Ljava/util/Locale;

    .line 377
    iput-object p1, p0, Lo/d;->b:Landroid/content/Context;

    .line 378
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 382
    const/16 v0, 0x2b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 394
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lo/d;->a:Ljava/util/Locale;

    .line 395
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5
    .parameter

    .prologue
    .line 399
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lo/d;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 402
    const/4 v0, 0x0

    .line 408
    :goto_d
    return v0

    .line 404
    :cond_e
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/aY;->s:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lo/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/d;->a:Ljava/util/Locale;

    invoke-static {v2}, Lo/c;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lh/a;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z

    .line 407
    iget-object v1, p0, Lo/d;->a:Ljava/util/Locale;

    invoke-static {v1, v0}, Lo/c;->a(Ljava/util/Locale;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 408
    const/4 v0, 0x1

    goto :goto_d
.end method
