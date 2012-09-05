.class public LG/d;
.super LG/g;


# instance fields
.field public final a:LF/R;


# direct methods
.method public constructor <init>(LF/R;)V
    .registers 4

    invoke-virtual {p1}, LF/R;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LG/g;-><init>(J)V

    iput-object p1, p0, LG/d;->a:LF/R;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Writer;)V
    .registers 7

    const-string v1, "<%s %s=\'%s\' %s=\'%s\' %s=\'%s\' %s=\'%s\' %s=\'%s\' %s=\'%s\' />\n"

    const/16 v0, 0xd

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "location-scan"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "time"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, LG/d;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "provider"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, LG/d;->a:LF/R;

    invoke-virtual {v3}, LF/R;->getProvider()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "latitude"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-object v3, p0, LG/d;->a:LF/R;

    invoke-virtual {v3}, LF/R;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "longitude"

    aput-object v3, v2, v0

    const/16 v0, 0x8

    iget-object v3, p0, LG/d;->a:LF/R;

    invoke-virtual {v3}, LF/R;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x9

    const-string v3, "accuracy"

    aput-object v3, v2, v0

    const/16 v0, 0xa

    iget-object v3, p0, LG/d;->a:LF/R;

    invoke-virtual {v3}, LF/R;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xb

    const-string v3, "speed"

    aput-object v3, v2, v0

    const/16 v3, 0xc

    iget-object v0, p0, LG/d;->a:LF/R;

    invoke-virtual {v0}, LF/R;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, LG/d;->a:LF/R;

    invoke-virtual {v0}, LF/R;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_78
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_82
    const-string v0, ""

    goto :goto_78
.end method
