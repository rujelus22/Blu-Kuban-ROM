.class public Lcom/google/googlenav/ui/wizard/aY;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/friend/history/l;

.field private b:Lcom/google/googlenav/ui/wizard/aZ;

.field private final c:Lcom/google/googlenav/friend/history/w;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/history/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 61
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aY;->c:Lcom/google/googlenav/friend/history/w;

    .line 62
    return-void
.end method

.method public static a(Lcom/google/googlenav/h;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 298
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/aL;->q:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 299
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/az;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 301
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 302
    invoke-virtual {p0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 313
    :goto_4a
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/googlenav/h;->f()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 314
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/googlenav/h;->f()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 318
    return-object v0

    .line 305
    :cond_63
    invoke-virtual {p0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 306
    invoke-virtual {p0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_4a

    .line 311
    :cond_71
    const-string v1, ""

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_4a
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/friend/history/l;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/friend/history/l;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.google.com/maps?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/googlenav/az;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/ui/wizard/aZ;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aY;->b:Lcom/google/googlenav/ui/wizard/aZ;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/friend/history/w;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aY;->c:Lcom/google/googlenav/friend/history/w;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/history/l;Lcom/google/googlenav/ui/wizard/aZ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/friend/history/l;

    .line 326
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aY;->b:Lcom/google/googlenav/ui/wizard/aZ;

    .line 327
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aY;->j()V

    .line 328
    return-void
.end method

.method protected b()V
    .registers 4

    .prologue
    .line 83
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/X;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/friend/history/l;

    new-instance v2, Lcom/google/googlenav/ui/wizard/ba;

    invoke-direct {v2, p0, p0}, Lcom/google/googlenav/ui/wizard/ba;-><init>(Lcom/google/googlenav/ui/wizard/aY;Lcom/google/googlenav/ui/wizard/aY;)V

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/X;-><init>(Lcom/google/googlenav/friend/history/l;Lcom/google/googlenav/ui/view/dialog/ah;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aY;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 84
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->b()V

    .line 85
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 90
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aY;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 91
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aY;->b:Lcom/google/googlenav/ui/wizard/aZ;

    .line 92
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aY;->a:Lcom/google/googlenav/friend/history/l;

    .line 93
    return-void
.end method
