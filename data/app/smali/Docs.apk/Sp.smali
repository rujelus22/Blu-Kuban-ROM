.class public LSp;
.super Lase;
.source "AccountMetadataEntry.java"


# instance fields
.field private a:I

.field private a:J

.field private final a:LakW;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LakW",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "LkU;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LrQ;

.field private b:I

.field private b:J

.field private final b:LakW;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LakW",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 29
    invoke-direct {p0}, Lase;-><init>()V

    .line 30
    iput-wide v0, p0, LSp;->a:J

    .line 31
    iput-wide v0, p0, LSp;->b:J

    .line 32
    iput-wide v0, p0, LSp;->c:J

    .line 34
    const/4 v0, 0x0

    iput v0, p0, LSp;->a:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, LSp;->b:I

    .line 39
    invoke-static {}, Lais;->a()Lais;

    move-result-object v0

    iput-object v0, p0, LSp;->a:LakW;

    .line 40
    invoke-static {}, Lais;->a()Lais;

    move-result-object v0

    iput-object v0, p0, LSp;->b:LakW;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LSp;->a:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LSp;->a:Ljava/util/Map;

    .line 43
    new-instance v0, LrS;

    invoke-direct {v0}, LrS;-><init>()V

    iput-object v0, p0, LSp;->a:LrQ;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, LSp;->a:I

    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 63
    iget-wide v0, p0, LSp;->a:J

    return-wide v0
.end method

.method public a(LkU;)J
    .registers 5
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, LSp;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 165
    if-nez v0, :cond_2f

    .line 166
    const-string v0, "AccountMetadataEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find max import size for file type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LkU;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning 0 bytes as a result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-wide/16 v0, 0x0

    .line 171
    :goto_2e
    return-wide v0

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2e
.end method

.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, LSp;->a:Ljava/util/Set;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, LSp;->a:LakW;

    invoke-interface {v0, p1}, LakW;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a()LrQ;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, LSp;->a:LrQ;

    invoke-static {v0}, Lsy;->a(LrQ;)Lsy;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 49
    invoke-super {p0}, Lase;->a()V

    .line 50
    iput-wide v0, p0, LSp;->a:J

    .line 51
    iput-wide v0, p0, LSp;->b:J

    .line 52
    iput-wide v0, p0, LSp;->c:J

    .line 53
    const/4 v0, 0x0

    iput v0, p0, LSp;->a:I

    .line 54
    const/4 v0, -0x1

    iput v0, p0, LSp;->b:I

    .line 55
    iget-object v0, p0, LSp;->a:LakW;

    invoke-interface {v0}, LakW;->a()V

    .line 56
    iget-object v0, p0, LSp;->b:LakW;

    invoke-interface {v0}, LakW;->a()V

    .line 57
    iget-object v0, p0, LSp;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 58
    iget-object v0, p0, LSp;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget-object v0, p0, LSp;->a:LrQ;

    invoke-interface {v0}, LrQ;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 60
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput p1, p0, LSp;->a:I

    .line 99
    return-void
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 67
    iput-wide p1, p0, LSp;->a:J

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, LSp;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, LSp;->a:LakW;

    invoke-interface {v0, p1, p2}, LakW;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public a(LkU;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, LSp;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 103
    iget v0, p0, LSp;->b:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(LSE;)Z
    .registers 3
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, LSp;->a:LrQ;

    invoke-interface {v0}, LrQ;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, LSp;->a()Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 114
    iget v0, p0, LSp;->b:I

    return v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 71
    iget-wide v0, p0, LSp;->b:J

    return-wide v0
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 118
    if-ltz p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 119
    iput p1, p0, LSp;->b:I

    .line 120
    return-void

    .line 118
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 75
    iput-wide p1, p0, LSp;->b:J

    .line 76
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, LSp;->b:LakW;

    invoke-interface {v0, p1, p2}, LakW;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public c(J)V
    .registers 3
    .parameter

    .prologue
    .line 83
    iput-wide p1, p0, LSp;->c:J

    .line 84
    return-void
.end method
