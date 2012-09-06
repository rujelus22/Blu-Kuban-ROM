.class public LXg;
.super Ljava/lang/Object;
.source "AccountCapability.java"


# instance fields
.field private final a:LSp;

.field private final a:Ljava/util/Date;


# direct methods
.method public constructor <init>(LSp;Ljava/util/Date;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, LXg;->a:LSp;

    .line 51
    iput-object p2, p0, LXg;->a:Ljava/util/Date;

    .line 52
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, LXg;->a:LSp;

    invoke-virtual {v0}, LSp;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(LkU;)J
    .registers 4
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, LXg;->a:LSp;

    invoke-virtual {v0, p1}, LSp;->a(LkU;)J

    move-result-wide v0

    return-wide v0
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
    .line 108
    iget-object v0, p0, LXg;->a:LSp;

    invoke-virtual {v0, p1}, LSp;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a()LrQ;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, LXg;->a:LSp;

    invoke-virtual {v0}, LSp;->a()LrQ;

    move-result-object v0

    invoke-static {v0}, Lsy;->a(LrQ;)Lsy;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 55
    sget-object v0, LkH;->a:Ljava/util/Date;

    iget-object v1, p0, LXg;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, LXg;->a:LSp;

    invoke-virtual {v0, p1}, LSp;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b()J
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, LXg;->a:LSp;

    invoke-virtual {v0}, LSp;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, LXg;->a:LSp;

    invoke-virtual {v0}, LSp;->a()Ljava/util/Set;

    move-result-object v0

    const-string v1, "upload_any"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, LXg;->a:LSp;

    invoke-virtual {v0}, LSp;->a()Ljava/util/Set;

    move-result-object v0

    const-string v1, "drive"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, LXg;->a:LSp;

    invoke-virtual {v0}, LSp;->a()Ljava/util/Set;

    move-result-object v0

    const-string v1, "drive_requested"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
