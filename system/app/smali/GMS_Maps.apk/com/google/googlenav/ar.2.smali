.class public Lcom/google/googlenav/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 4126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4128
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ar;->a:Ljava/lang/String;

    .line 4129
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ar;->b:Ljava/lang/String;

    .line 4130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4133
    iput-object p1, p0, Lcom/google/googlenav/ar;->a:Ljava/lang/String;

    .line 4134
    iput-object p2, p0, Lcom/google/googlenav/ar;->b:Ljava/lang/String;

    .line 4135
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ar;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 4121
    iget-object v0, p0, Lcom/google/googlenav/ar;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 4146
    iput-object p1, p0, Lcom/google/googlenav/ar;->b:Ljava/lang/String;

    .line 4147
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4138
    iget-object v0, p0, Lcom/google/googlenav/ar;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4142
    iget-object v0, p0, Lcom/google/googlenav/ar;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4150
    iget-object v0, p0, Lcom/google/googlenav/ar;->a:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_b
    iget-object v3, p0, Lcom/google/googlenav/ar;->b:Ljava/lang/String;

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    :goto_13
    and-int/2addr v0, v1

    return v0

    :cond_15
    move v0, v2

    goto :goto_b

    :cond_17
    move v1, v2

    goto :goto_13
.end method
