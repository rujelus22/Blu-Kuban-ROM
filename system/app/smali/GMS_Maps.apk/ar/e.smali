.class public LaR/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/L;

.field private b:Lcom/google/googlenav/android/R;


# direct methods
.method public constructor <init>(Landroid/widget/TabHost;ILcom/google/googlenav/L;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p3, p0, LaR/e;->a:Lcom/google/googlenav/L;

    .line 30
    new-instance v0, LaR/f;

    invoke-direct {v0, p0, p1, p2}, LaR/f;-><init>(LaR/e;Landroid/widget/TabHost;I)V

    iput-object v0, p0, LaR/e;->b:Lcom/google/googlenav/android/R;

    .line 41
    return-void
.end method

.method static synthetic a(LaR/e;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ai;LaR/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, LaR/e;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ai;LaR/a;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ai;LaR/a;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x9e

    .line 71
    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-nez v0, :cond_b

    .line 79
    :cond_a
    :goto_a
    return-void

    .line 76
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 77
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 78
    invoke-virtual {p3}, LaR/a;->b()V

    goto :goto_a
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/ai;LaR/a;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    if-eqz p1, :cond_18

    invoke-virtual {p2}, Lcom/google/googlenav/ai;->Q()Z

    move-result v0

    if-nez v0, :cond_18

    .line 50
    new-instance v0, LaR/g;

    invoke-direct {v0, p0, p2, p3}, LaR/g;-><init>(LaR/e;Lcom/google/googlenav/ai;LaR/a;)V

    .line 57
    invoke-static {v0, p1}, Lcom/google/googlenav/f;->a(Lcom/google/googlenav/g;Ljava/lang/String;)Lcom/google/googlenav/f;

    move-result-object v0

    .line 59
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 61
    :cond_18
    return-void
.end method
