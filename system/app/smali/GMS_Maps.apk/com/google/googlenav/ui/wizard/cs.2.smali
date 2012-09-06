.class public Lcom/google/googlenav/ui/wizard/cS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/aL;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cR;

.field private b:Lcom/google/googlenav/ui/wizard/cR;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/cR;Lcom/google/googlenav/ui/wizard/cR;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cS;->b:Lcom/google/googlenav/ui/wizard/cR;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cS;)V
    .registers 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cS;->b()V

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cU;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cU;-><init>(Lcom/google/googlenav/ui/wizard/cS;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ZLcom/google/googlenav/ui/wizard/dk;)V

    .line 132
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cS;->b:Lcom/google/googlenav/ui/wizard/cR;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cR;->a()V

    .line 65
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/ui/view/dialog/aM;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v6, v0, Lcom/google/googlenav/ui/wizard/cR;->a:Lcom/google/googlenav/friend/history/w;

    new-instance v0, Lcom/google/googlenav/ui/wizard/cT;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/cT;-><init>(Lcom/google/googlenav/ui/wizard/cS;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/ui/view/dialog/aM;)V

    invoke-virtual {v6, p2, p3, v0}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/G;)V

    .line 91
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/history/l;)V
    .registers 4
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cS;->b:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->d:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cV;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/wizard/cV;-><init>(Lcom/google/googlenav/ui/wizard/cS;Lcom/google/googlenav/friend/history/l;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/friend/history/l;Lcom/google/googlenav/ui/wizard/aZ;)V

    .line 162
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/aN;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->a:Lcom/google/googlenav/friend/history/w;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cW;

    invoke-direct {v1, p0, p2}, Lcom/google/googlenav/ui/wizard/cW;-><init>(Lcom/google/googlenav/ui/wizard/cS;Lcom/google/googlenav/ui/view/dialog/aN;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/friend/history/w;->a(Ljava/lang/String;Lcom/google/googlenav/friend/history/H;)V

    .line 180
    return-void
.end method

.method public b(Lcom/google/googlenav/friend/history/l;)V
    .registers 9
    .parameter

    .prologue
    .line 136
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v6

    new-instance v0, Lcom/google/googlenav/friend/history/a;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/history/l;->e()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/googlenav/friend/history/l;->f()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/googlenav/friend/history/l;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/friend/history/a;-><init>(JJLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v6, v0}, Lac/h;->c(Lac/g;)V

    .line 138
    invoke-virtual {p1}, Lcom/google/googlenav/friend/history/l;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/history/l;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/aF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aF;->m()V

    .line 141
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->a:Lcom/google/googlenav/friend/history/w;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/history/l;->q()Lcom/google/googlenav/friend/history/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/b;)V

    .line 142
    return-void
.end method
