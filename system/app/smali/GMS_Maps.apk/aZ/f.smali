.class public Laz/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bh;


# static fields
.field private static final h:I

.field private static final i:I


# instance fields
.field private final a:Lcom/google/googlenav/prefetch/android/y;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/Bitmap;

.field private f:Z

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x40

    .line 998
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Laz/f;->h:I

    .line 1003
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Laz/f;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/prefetch/android/y;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p1, p0, Laz/f;->a:Lcom/google/googlenav/prefetch/android/y;

    .line 1009
    iput-object p2, p0, Laz/f;->b:Ljava/lang/String;

    .line 1010
    iput p3, p0, Laz/f;->c:I

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Laz/f;->e:Landroid/graphics/Bitmap;

    .line 1012
    if-eqz p4, :cond_39

    .line 1013
    new-instance v0, LT/f;

    invoke-direct {v0, p4}, LT/f;-><init>(Landroid/graphics/Bitmap;)V

    sget v1, Laz/f;->i:I

    sget v2, Laz/f;->h:I

    invoke-static {v0, v1, v2}, LS/j;->a(LS/f;II)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 1019
    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq p4, v1, :cond_26

    .line 1020
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1022
    :cond_26
    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Laz/f;->e:Landroid/graphics/Bitmap;

    .line 1025
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Laz/g;

    invoke-direct {v2, p0, v0}, Laz/g;-><init>(Laz/f;LT/f;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1044
    :cond_39
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/prefetch/android/y;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p1, p0, Laz/f;->a:Lcom/google/googlenav/prefetch/android/y;

    .line 1054
    iput-object p2, p0, Laz/f;->b:Ljava/lang/String;

    .line 1055
    iput p3, p0, Laz/f;->c:I

    .line 1056
    iput-object p4, p0, Laz/f;->d:Ljava/lang/String;

    .line 1059
    const/4 v0, 0x0

    iput-object v0, p0, Laz/f;->e:Landroid/graphics/Bitmap;

    .line 1060
    iput-wide p5, p0, Laz/f;->g:J

    .line 1061
    return-void
.end method

.method static synthetic a(Laz/f;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 984
    iput p1, p0, Laz/f;->c:I

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Laz/f;
    .registers 2
    .parameter

    .prologue
    .line 984
    invoke-static {p0}, Laz/f;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Laz/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Laz/f;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 984
    invoke-direct {p0}, Laz/f;->i()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Laz/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Laz/f;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Laz/f;)I
    .registers 2
    .parameter

    .prologue
    .line 984
    iget v0, p0, Laz/f;->c:I

    return v0
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 1090
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v1

    .line 1092
    const/4 v0, 0x1

    invoke-static {p0, v2, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    .line 1098
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1103
    :goto_11
    return-object v0

    .line 1100
    :cond_12
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    move-object v0, v1

    .line 1101
    goto :goto_11

    .line 1103
    :cond_1a
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Laz/f;
    .registers 8
    .parameter

    .prologue
    .line 1189
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Laz/f;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/prefetch/android/E;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/prefetch/android/E;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {p0, v5}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Laz/f;-><init>(Lcom/google/googlenav/prefetch/android/y;Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_3
.end method

.method static synthetic c(Laz/f;)Lcom/google/googlenav/prefetch/android/y;
    .registers 2
    .parameter

    .prologue
    .line 984
    iget-object v0, p0, Laz/f;->a:Lcom/google/googlenav/prefetch/android/y;

    return-object v0
.end method

.method private i()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 1178
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbo/r;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1179
    const/4 v1, 0x1

    iget-object v2, p0, Laz/f;->a:Lcom/google/googlenav/prefetch/android/y;

    invoke-interface {v2}, Lcom/google/googlenav/prefetch/android/y;->k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1181
    const/4 v1, 0x2

    iget-object v2, p0, Laz/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1182
    const/4 v1, 0x3

    iget v2, p0, Laz/f;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1183
    const/4 v1, 0x4

    iget-object v2, p0, Laz/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1184
    const/4 v1, 0x5

    iget-wide v2, p0, Laz/f;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1185
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1047
    iget v0, p0, Laz/f;->c:I

    return v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1134
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter

    .prologue
    .line 1174
    iput-object p1, p0, Laz/f;->e:Landroid/graphics/Bitmap;

    .line 1175
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1114
    iget-boolean v0, p0, Laz/f;->f:Z

    if-eqz v0, :cond_5

    .line 1129
    :cond_4
    :goto_4
    return-void

    .line 1117
    :cond_5
    const/16 v0, 0x9

    invoke-static {p3, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1122
    invoke-static {p1}, Laz/f;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    :cond_15
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1126
    invoke-virtual {p0, v0}, Laz/f;->a(Ljava/lang/String;)V

    .line 1127
    invoke-static {}, Laz/a;->q()Laz/a;

    move-result-object v0

    new-instance v1, Laz/l;

    invoke-direct {v1}, Laz/l;-><init>()V

    invoke-static {v0, v1}, Laz/a;->a(Laz/a;Laz/l;)V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, Laz/f;->f:Z

    .line 1150
    iput-object p1, p0, Laz/f;->b:Ljava/lang/String;

    .line 1151
    return-void
.end method

.method public b()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1067
    iget-object v0, p0, Laz/f;->a:Lcom/google/googlenav/prefetch/android/y;

    check-cast v0, Lcom/google/googlenav/prefetch/android/E;

    .line 1068
    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/E;->f()Lat/B;

    move-result-object v1

    .line 1070
    const/16 v2, 0x57

    const-string v3, "stp"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1075
    new-instance v3, Lcom/google/googlenav/friend/bi;

    invoke-direct {v3}, Lcom/google/googlenav/friend/bi;-><init>()V

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/friend/bi;->a(I)Lcom/google/googlenav/friend/bi;

    move-result-object v3

    invoke-virtual {v1}, Lat/B;->e()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/friend/bi;->b(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/friend/bh;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/E;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/friend/bi;->d(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/E;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/bi;->e(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->h(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1}, Las/f;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->c(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/friend/bi;->d(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/friend/bi;->e(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    .line 1086
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bi;->a()Lcom/google/googlenav/friend/bg;

    move-result-object v0

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 1087
    return-void
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 1137
    iput-wide p1, p0, Laz/f;->g:J

    .line 1138
    return-void
.end method

.method public c()J
    .registers 3

    .prologue
    .line 1141
    iget-wide v0, p0, Laz/f;->g:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1145
    iget-object v0, p0, Laz/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/google/googlenav/prefetch/android/y;
    .registers 2

    .prologue
    .line 1154
    iget-object v0, p0, Laz/f;->a:Lcom/google/googlenav/prefetch/android/y;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1200
    instance-of v1, p1, Laz/f;

    if-nez v1, :cond_6

    .line 1204
    :cond_5
    :goto_5
    return v0

    .line 1203
    :cond_6
    check-cast p1, Laz/f;

    .line 1204
    iget-object v1, p0, Laz/f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Laz/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Laz/f;->a:Lcom/google/googlenav/prefetch/android/y;

    iget-object v2, p1, Laz/f;->a:Lcom/google/googlenav/prefetch/android/y;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Laz/f;->c:I

    iget v2, p1, Laz/f;->c:I

    if-ne v1, v2, :cond_5

    iget-wide v1, p0, Laz/f;->g:J

    iget-wide v3, p1, Laz/f;->g:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    iget-object v1, p0, Laz/f;->d:Ljava/lang/String;

    iget-object v2, p1, Laz/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1158
    iget-object v0, p0, Laz/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/io/File;
    .registers 4

    .prologue
    .line 1162
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1163
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laz/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1166
    :goto_20
    return-object v0

    .line 1165
    :cond_21
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    invoke-static {v0}, Laz/a;->l(Laz/a;)LaD/i;

    move-result-object v0

    invoke-interface {v0}, LaD/i;->d()Landroid/content/Context;

    move-result-object v0

    .line 1166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OfflineMapArea_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laz/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_20
.end method

.method public h()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 1170
    iget-object v0, p0, Laz/f;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method
