.class Lcom/google/googlenav/ui/wizard/aP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/h;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aV;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/aO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aO;Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aV;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aP;->c:Lcom/google/googlenav/ui/wizard/aO;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aP;->a:Lcom/google/googlenav/h;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/aP;->b:Lcom/google/googlenav/ui/wizard/aV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/F;)V
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 83
    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-gtz v0, :cond_25

    .line 86
    :cond_9
    invoke-static {}, Lcom/google/googlenav/aM;->a()Lcom/google/googlenav/aM;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aP;->a:Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aM;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aP;->c:Lcom/google/googlenav/ui/wizard/aO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aO;->a(Lcom/google/googlenav/ui/wizard/aO;)Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/aQ;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/aQ;-><init>(Lcom/google/googlenav/ui/wizard/aP;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 145
    :goto_24
    return-void

    .line 100
    :cond_25
    new-instance v0, Lcom/google/googlenav/friend/aM;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/aM;-><init>(Lcom/google/googlenav/F;)V

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v8

    .line 101
    invoke-virtual {v8}, Lcom/google/googlenav/friend/aK;->B()[Lcom/google/googlenav/a;

    move-result-object v0

    .line 102
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3e

    .line 103
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aP;->c:Lcom/google/googlenav/ui/wizard/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aP;->b:Lcom/google/googlenav/ui/wizard/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aO;->a(Lcom/google/googlenav/ui/wizard/aO;Lcom/google/googlenav/ui/wizard/aV;)V

    goto :goto_24

    .line 106
    :cond_3e
    aget-object v9, v0, v3

    .line 107
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v5

    .line 108
    new-instance v0, Lcom/google/googlenav/cr;

    invoke-virtual {v9}, Lcom/google/googlenav/a;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v9}, Lcom/google/googlenav/a;->b()J

    move-result-wide v3

    new-instance v7, Lcom/google/googlenav/ui/wizard/aR;

    invoke-direct {v7, p0, v8, p1, v9}, Lcom/google/googlenav/ui/wizard/aR;-><init>(Lcom/google/googlenav/ui/wizard/aP;Lcom/google/googlenav/friend/aK;Lcom/google/googlenav/F;Lcom/google/googlenav/a;)V

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/cr;-><init>(Ljava/lang/String;IJJLcom/google/googlenav/cs;)V

    .line 144
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    goto :goto_24
.end method
