.class Laz/i;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/google/googlenav/prefetch/android/E;

.field final synthetic c:J

.field final synthetic d:Lcom/google/googlenav/ui/android/w;

.field final synthetic e:Laz/h;


# direct methods
.method constructor <init>(Laz/h;FLcom/google/googlenav/prefetch/android/E;JLcom/google/googlenav/ui/android/w;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Laz/i;->e:Laz/h;

    iput p2, p0, Laz/i;->a:F

    iput-object p3, p0, Laz/i;->b:Lcom/google/googlenav/prefetch/android/E;

    iput-wide p4, p0, Laz/i;->c:J

    iput-object p6, p0, Laz/i;->d:Lcom/google/googlenav/ui/android/w;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/16 v0, 0xe

    const/4 v1, 0x5

    .line 131
    iget v2, p0, Laz/i;->a:F

    float-to-int v2, v2

    .line 132
    if-le v2, v0, :cond_30

    .line 137
    :goto_8
    iget-object v1, p0, Laz/i;->b:Lcom/google/googlenav/prefetch/android/E;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/prefetch/android/E;->a(I)V

    .line 138
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 140
    :goto_11
    iget-object v1, p0, Laz/i;->b:Lcom/google/googlenav/prefetch/android/E;

    invoke-virtual {v1}, Lcom/google/googlenav/prefetch/android/E;->a()Ln/am;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 141
    invoke-virtual {v1}, Ln/am;->b()I

    move-result v2

    if-eq v2, v0, :cond_34

    .line 146
    :cond_1f
    iget-object v6, p0, Laz/i;->e:Laz/h;

    new-instance v0, Laz/j;

    iget-object v1, p0, Laz/i;->e:Laz/h;

    iget-wide v2, p0, Laz/i;->c:J

    iget-object v5, p0, Laz/i;->d:Lcom/google/googlenav/ui/android/w;

    invoke-direct/range {v0 .. v5}, Laz/j;-><init>(Laz/h;JLjava/util/List;Lcom/google/googlenav/ui/android/w;)V

    invoke-static {v6, v0}, Laz/h;->a(Laz/h;Laz/j;)Laz/j;

    .line 147
    return-void

    .line 134
    :cond_30
    if-ge v2, v1, :cond_38

    move v0, v1

    .line 135
    goto :goto_8

    .line 144
    :cond_34
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_38
    move v0, v2

    goto :goto_8
.end method
