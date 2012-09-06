.class public Lcom/google/googlenav/ui/wizard/aE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/ju;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aE;->a:Lcom/google/googlenav/ui/wizard/ju;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aE;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aE;->a:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/h;)V
    .registers 3
    .parameter

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 156
    invoke-static {}, Lcom/google/googlenav/friend/af;->x()V

    .line 162
    :goto_9
    return-void

    .line 157
    :cond_a
    invoke-virtual {p1}, Lcom/google/googlenav/h;->n()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 158
    invoke-static {}, Lcom/google/googlenav/friend/af;->y()V

    goto :goto_9

    .line 160
    :cond_14
    invoke-static {}, Lcom/google/googlenav/friend/af;->w()V

    goto :goto_9
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aE;Lcom/google/googlenav/ui/wizard/aJ;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aE;->b(Lcom/google/googlenav/ui/wizard/aJ;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aJ;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aE;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    const/4 v3, 0x1

    new-instance v4, Lcom/google/googlenav/ui/wizard/aH;

    invoke-direct {v4, p0, p2}, Lcom/google/googlenav/ui/wizard/aH;-><init>(Lcom/google/googlenav/ui/wizard/aE;Lcom/google/googlenav/ui/wizard/aJ;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/iS;ZLcom/google/googlenav/ui/wizard/iR;)V

    .line 105
    return-void
.end method

.method private b(Lcom/google/googlenav/ui/wizard/aJ;)V
    .registers 10
    .parameter

    .prologue
    .line 115
    const/16 v0, 0x83

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    const/16 v0, 0x81

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    const/16 v0, 0x82

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    const/4 v5, 0x1

    .line 120
    const/4 v6, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aE;->a:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v7, Lcom/google/googlenav/ui/wizard/aI;

    invoke-direct {v7, p0, p1}, Lcom/google/googlenav/ui/wizard/aI;-><init>(Lcom/google/googlenav/ui/wizard/aE;Lcom/google/googlenav/ui/wizard/aJ;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 149
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aJ;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aE;->a(Lcom/google/googlenav/h;)V

    .line 54
    invoke-virtual {p1}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/google/googlenav/h;->n()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 55
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aE;->b(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aJ;)V

    .line 59
    :goto_12
    return-void

    .line 57
    :cond_13
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/wizard/aE;->a(Lcom/google/googlenav/ui/wizard/aJ;)V

    goto :goto_12
.end method

.method public a(Lcom/google/googlenav/ui/wizard/aJ;)V
    .registers 5
    .parameter

    .prologue
    .line 70
    const-string v0, "home_speedbump_ack"

    const/4 v1, 0x0

    new-instance v2, Lcom/google/googlenav/ui/wizard/aF;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/aF;-><init>(Lcom/google/googlenav/ui/wizard/aE;Lcom/google/googlenav/ui/wizard/aJ;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ZLcom/google/googlenav/friend/bc;)V

    .line 88
    return-void
.end method
