.class public Lcom/google/googlenav/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Lcom/google/googlenav/ui/aV;

.field protected static final b:Lcom/google/googlenav/ui/aV;


# instance fields
.field private c:Z

.field private d:Lcom/google/googlenav/bK;

.field private e:Lcom/google/googlenav/bM;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    sput-object v0, Lcom/google/googlenav/ac;->a:Lcom/google/googlenav/ui/aV;

    .line 27
    sget-object v0, Lcom/google/googlenav/ui/aV;->bm:Lcom/google/googlenav/ui/aV;

    sput-object v0, Lcom/google/googlenav/ac;->b:Lcom/google/googlenav/ui/aV;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/google/googlenav/ac;->c:Z

    .line 39
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/google/googlenav/bK;

    invoke-direct {v1, v0}, Lcom/google/googlenav/bK;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v1, p0, Lcom/google/googlenav/ac;->d:Lcom/google/googlenav/bK;

    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ac;->d:Lcom/google/googlenav/bK;

    invoke-virtual {v0, p2, p3}, Lcom/google/googlenav/bK;->a(J)Lcom/google/googlenav/bM;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ac;->e:Lcom/google/googlenav/bM;

    .line 43
    iget-object v0, p0, Lcom/google/googlenav/ac;->e:Lcom/google/googlenav/bM;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ac;->e:Lcom/google/googlenav/bM;

    invoke-virtual {v0}, Lcom/google/googlenav/bM;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, p2

    :goto_27
    iput-wide v0, p0, Lcom/google/googlenav/ac;->f:J

    .line 45
    return-void

    .line 43
    :cond_2a
    const-wide/16 v0, -0x1

    goto :goto_27
.end method

.method private a(JLjava/lang/String;ZI)Ljava/util/Vector;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x370

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ac;->b(J)Z

    move-result v0

    if-nez v0, :cond_a4

    invoke-virtual {p0}, Lcom/google/googlenav/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 81
    int-to-long v0, p5

    mul-long/2addr v0, v6

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    .line 82
    if-eqz p4, :cond_28

    .line 83
    const/16 v0, 0x36c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ac;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 124
    :goto_27
    return-object v0

    .line 86
    :cond_28
    const/16 v0, 0x36b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ac;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    .line 92
    :cond_33
    int-to-long v0, p5

    mul-long/2addr v0, v6

    add-long/2addr v0, p1

    invoke-static {p1, p2, v0, v1}, Lcom/google/googlenav/ac;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 94
    if-eqz p4, :cond_6b

    .line 99
    int-to-long v0, p5

    mul-long/2addr v0, v6

    const-wide/32 v2, 0x3dcc500

    cmp-long v0, v0, v2

    if-lez v0, :cond_5a

    .line 101
    const/16 v0, 0x36f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ac;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    .line 104
    :cond_5a
    invoke-static {v8}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ac;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    .line 108
    :cond_6b
    const/16 v0, 0x36e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ac;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    .line 115
    :cond_7e
    if-eqz p4, :cond_91

    .line 116
    invoke-static {v8}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ac;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    .line 119
    :cond_91
    const/16 v0, 0x36d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ac;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    .line 124
    :cond_a4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto/16 :goto_27
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Vector;
    .registers 4
    .parameter

    .prologue
    .line 134
    sget-object v0, Lcom/google/googlenav/ac;->a:Lcom/google/googlenav/ui/aV;

    sget-object v1, Lcom/google/googlenav/ac;->b:Lcom/google/googlenav/ui/aV;

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/aX;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Ljava/util/Vector;

    move-result-object v0

    .line 136
    if-nez v0, :cond_10

    .line 137
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 141
    :goto_f
    return-object v0

    .line 140
    :cond_10
    const-string v1, ""

    sget-object v2, Lcom/google/googlenav/ac;->a:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method protected static a(JJ)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x5

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 59
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public a(J)Ljava/util/Vector;
    .registers 9
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ac;->e:Lcom/google/googlenav/bM;

    if-nez v0, :cond_a

    .line 70
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 72
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ac;->e:Lcom/google/googlenav/bM;

    invoke-virtual {v0}, Lcom/google/googlenav/bM;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ac;->e:Lcom/google/googlenav/bM;

    invoke-virtual {v0}, Lcom/google/googlenav/bM;->b()Z

    move-result v4

    iget-object v0, p0, Lcom/google/googlenav/ac;->e:Lcom/google/googlenav/bM;

    invoke-virtual {v0}, Lcom/google/googlenav/bM;->c()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ac;->a(JLjava/lang/String;ZI)Ljava/util/Vector;

    move-result-object v0

    goto :goto_9
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/googlenav/ac;->c:Z

    return v0
.end method

.method public b(J)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/google/googlenav/ac;->e:Lcom/google/googlenav/bM;

    if-nez v1, :cond_6

    .line 157
    :cond_5
    :goto_5
    return v0

    .line 154
    :cond_6
    iget-wide v1, p0, Lcom/google/googlenav/ac;->f:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_5

    .line 155
    const/4 v0, 0x1

    goto :goto_5
.end method
