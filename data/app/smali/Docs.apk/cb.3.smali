.class public Lcb;
.super Lanf;
.source "ApplicationModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lanf;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, LcI;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcb;->a([Ljava/lang/Class;)V

    .line 71
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Ldd;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcb;->a([Ljava/lang/Class;)V

    .line 73
    const-class v0, LdG;

    invoke-virtual {p0, v0}, Lcb;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LdH;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 74
    const-class v0, Lx;

    invoke-virtual {p0, v0}, Lcb;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lx;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 76
    new-instance v0, Lcc;

    invoke-direct {v0, p0}, Lcc;-><init>(Lcb;)V

    invoke-virtual {p0, v0}, Lcb;->a(LanP;)LanQ;

    move-result-object v0

    const-string v1, "StartingActivityOnLaunch"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    const-class v1, Lcf;

    invoke-interface {v0, v1}, LanU;->b(Ljava/lang/Class;)LanV;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanV;->a(Ljava/lang/Class;)V

    .line 80
    new-instance v0, Lcd;

    invoke-direct {v0, p0}, Lcd;-><init>(Lcb;)V

    invoke-virtual {p0, v0}, Lcb;->a(LanP;)LanQ;

    move-result-object v0

    const-string v1, "DocListActivity"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    const-class v1, Lce;

    invoke-interface {v0, v1}, LanU;->b(Ljava/lang/Class;)LanV;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanV;->a(Ljava/lang/Class;)V

    .line 84
    const-class v0, LpI;

    invoke-virtual {p0, v0}, Lcb;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    sget-object v1, LpI;->b:LpI;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Object;)V

    .line 86
    const-class v0, LeO;

    invoke-virtual {p0, v0}, Lcb;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LeP;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 88
    const-class v0, [Lhq;

    invoke-virtual {p0, v0}, Lcb;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, [Lhq;

    invoke-static {v1}, LeC;->a(Ljava/lang/Class;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 91
    const-class v0, LdO;

    invoke-virtual {p0, v0}, Lcb;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)V

    .line 92
    const-class v0, LdL;

    invoke-virtual {p0, v0}, Lcb;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LdO;

    invoke-interface {v0, v1}, LanQ;->b(Ljava/lang/Class;)LanV;

    .line 94
    const-class v0, LeZ;

    invoke-virtual {p0, v0}, Lcb;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lfb;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 96
    const-class v0, LdX;

    invoke-virtual {p0, v0}, Lcb;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    invoke-static {}, LZG;->a()LdX;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lhx;

    const-string v1, "minVersion"

    const-string v2, "upgradeUrl"

    sget v3, LcY;->version_too_old_close:I

    sget v4, LcY;->version_too_old_drivev2:I

    sget v5, LcY;->version_too_old_title:I

    sget v6, LcY;->version_too_old_upgrade:I

    invoke-direct/range {v0 .. v6}, Lhx;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {p0, v0}, Lcb;->a(Lanz;)V

    .line 102
    return-void
.end method
