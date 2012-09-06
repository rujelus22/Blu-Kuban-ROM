.class abstract Lcom/google/googlenav/aJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/aH;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/google/googlenav/aJ;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/googlenav/h;)V
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 245
    new-instance v0, Lcom/google/googlenav/f;

    invoke-static {p1}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 248
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 253
    if-nez p2, :cond_3

    .line 259
    :goto_2
    return-void

    .line 258
    :cond_3
    new-instance v0, Lcom/google/googlenav/h;

    new-instance v1, Lcom/google/googlenav/ai;

    invoke-direct {v1, p2}, Lcom/google/googlenav/ai;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/ai;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aJ;->a(Lcom/google/googlenav/h;)V

    goto :goto_2
.end method
