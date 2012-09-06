.class Lcom/google/googlenav/offers/c;
.super LY/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/offers/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/offers/a;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    invoke-direct {p0, p2}, LY/d;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v0}, Lcom/google/googlenav/offers/a;->a(Lcom/google/googlenav/offers/a;)Lat/u;

    move-result-object v0

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v1}, Lcom/google/googlenav/offers/a;->b(Lcom/google/googlenav/offers/a;)Lat/B;

    move-result-object v1

    if-nez v1, :cond_17

    .line 121
    iget-object v1, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v1, v0}, Lcom/google/googlenav/offers/a;->a(Lcom/google/googlenav/offers/a;Lat/B;)Lat/B;

    .line 125
    :cond_17
    iget-object v1, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v1}, Lcom/google/googlenav/offers/a;->c(Lcom/google/googlenav/offers/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 126
    :try_start_1e
    iget-object v2, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v2}, Lcom/google/googlenav/offers/a;->d(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/aW;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 127
    iget-object v2, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v2}, Lcom/google/googlenav/offers/a;->d(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/aW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aW;->O()Lat/B;

    move-result-object v2

    invoke-virtual {v0, v2}, Lat/B;->a(Lat/B;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v4}, Lcom/google/googlenav/offers/a;->e(Lcom/google/googlenav/offers/a;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4a

    .line 129
    iget-object v2, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/googlenav/offers/a;->a(Lcom/google/googlenav/offers/a;Lcom/google/googlenav/aW;)Lcom/google/googlenav/aW;

    .line 130
    sget-object v2, Lag/b;->k:Lag/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lag/c;->a(I)V

    .line 133
    :cond_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_1e .. :try_end_4b} :catchall_68

    .line 136
    iget-object v1, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/offers/a;->a(Lat/B;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 137
    iget-object v1, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    const-string v2, "bm"

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/offers/a;->a(Lcom/google/googlenav/offers/a;Lat/B;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->e()Lcom/google/googlenav/clientparam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/d;->b()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/google/googlenav/offers/c;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v1, v0}, Lcom/google/googlenav/offers/a;->a(Lcom/google/googlenav/offers/a;I)V

    .line 143
    :cond_67
    return-void

    .line 133
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0
.end method
