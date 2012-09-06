.class final Ldbxyzptlk/p/y;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/p/D;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/io/FileInputStream;

.field private final c:Ldbxyzptlk/l/q;

.field private final d:Ldbxyzptlk/p/a;

.field private final e:Ldbxyzptlk/p/i;

.field private final f:Ldbxyzptlk/p/z;

.field private final g:Ldbxyzptlk/p/l;

.field private h:Ldbxyzptlk/p/r;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1197
    const-class v0, Ldbxyzptlk/p/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/p/y;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileInputStream;Ldbxyzptlk/p/g;Ldbxyzptlk/p/i;Ldbxyzptlk/p/z;Ldbxyzptlk/p/l;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/p/y;->h:Ldbxyzptlk/p/r;

    .line 1225
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbxyzptlk/p/y;->i:Z

    .line 1215
    iput-object p1, p0, Ldbxyzptlk/p/y;->b:Ljava/io/FileInputStream;

    .line 1216
    iget-object v0, p2, Ldbxyzptlk/p/g;->d:Ldbxyzptlk/l/q;

    iput-object v0, p0, Ldbxyzptlk/p/y;->c:Ldbxyzptlk/l/q;

    .line 1217
    iget-object v0, p2, Ldbxyzptlk/p/g;->a:Ldbxyzptlk/p/a;

    iput-object v0, p0, Ldbxyzptlk/p/y;->d:Ldbxyzptlk/p/a;

    .line 1218
    iput-object p3, p0, Ldbxyzptlk/p/y;->e:Ldbxyzptlk/p/i;

    .line 1219
    iput-object p4, p0, Ldbxyzptlk/p/y;->f:Ldbxyzptlk/p/z;

    .line 1220
    iput-object p5, p0, Ldbxyzptlk/p/y;->g:Ldbxyzptlk/p/l;

    .line 1221
    return-void
.end method

.method private static a(Ljava/io/FileInputStream;J)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const-wide/32 v4, 0x7fffffff

    .line 1243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_19

    const/4 v0, 0x1

    .line 1244
    :goto_b
    if-nez v0, :cond_11

    cmp-long v0, p1, v4

    if-gtz v0, :cond_1b

    .line 1245
    :cond_11
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1266
    :cond_18
    return-void

    :cond_19
    move v0, v2

    .line 1243
    goto :goto_b

    .line 1249
    :cond_1b
    sget-object v0, Ldbxyzptlk/p/y;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "safeSeeking to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1252
    sub-long v0, p1, v4

    .line 1256
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 1257
    :goto_40
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_18

    .line 1260
    array-length v4, v3

    int-to-long v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v3, v2, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 1261
    if-ltz v4, :cond_18

    .line 1264
    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1265
    goto :goto_40
.end method

.method private b()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1228
    monitor-enter p0

    .line 1229
    :try_start_2
    iget-boolean v0, p0, Ldbxyzptlk/p/y;->i:Z

    if-eqz v0, :cond_10

    .line 1230
    new-instance v0, Ldbxyzptlk/m/e;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ldbxyzptlk/m/e;-><init>(I)V

    throw v0

    .line 1232
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_d

    .line 1233
    iget-object v0, p0, Ldbxyzptlk/p/y;->g:Ldbxyzptlk/p/l;

    if-eqz v0, :cond_23

    iget-object v0, p0, Ldbxyzptlk/p/y;->g:Ldbxyzptlk/p/l;

    invoke-interface {v0}, Ldbxyzptlk/p/l;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1234
    new-instance v0, Ldbxyzptlk/m/e;

    invoke-direct {v0, v1}, Ldbxyzptlk/m/e;-><init>(I)V

    throw v0

    .line 1236
    :cond_23
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldbxyzptlk/p/y;->h:Ldbxyzptlk/p/r;

    if-eqz v0, :cond_a

    .line 1325
    iget-object v0, p0, Ldbxyzptlk/p/y;->h:Ldbxyzptlk/p/r;

    invoke-virtual {v0}, Ldbxyzptlk/p/r;->a()V

    .line 1327
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/p/y;->i:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1328
    monitor-exit p0

    return-void

    .line 1324
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1270
    invoke-direct {p0}, Ldbxyzptlk/p/y;->b()V

    .line 1272
    :try_start_4
    iget-object v0, p0, Ldbxyzptlk/p/y;->f:Ldbxyzptlk/p/z;

    iget-object v1, p0, Ldbxyzptlk/p/y;->d:Ldbxyzptlk/p/a;

    invoke-virtual {v1}, Ldbxyzptlk/p/a;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ldbxyzptlk/p/y;->d:Ldbxyzptlk/p/a;

    invoke-virtual {v2}, Ldbxyzptlk/p/a;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ldbxyzptlk/p/z;->b(Ljava/util/List;J)Ljava/lang/Object;
    :try_end_15
    .catch Ldbxyzptlk/p/B; {:try_start_4 .. :try_end_15} :catch_17

    move-result-object v0

    .line 1310
    :goto_16
    return-object v0

    .line 1273
    :catch_17
    move-exception v0

    .line 1274
    iget-object v1, p0, Ldbxyzptlk/p/y;->d:Ldbxyzptlk/p/a;

    iget-object v0, v0, Ldbxyzptlk/p/B;->a:Ljava/util/List;

    invoke-virtual {v1, v0}, Ldbxyzptlk/p/a;->a(Ljava/util/Collection;)V

    .line 1278
    :try_start_1f
    iget-object v0, p0, Ldbxyzptlk/p/y;->d:Ldbxyzptlk/p/a;

    iget-object v1, p0, Ldbxyzptlk/p/y;->c:Ldbxyzptlk/l/q;

    invoke-virtual {v0, v1}, Ldbxyzptlk/p/a;->a(Ldbxyzptlk/l/q;)Ldbxyzptlk/l/q;

    move-result-object v5

    move v6, v7

    .line 1280
    :goto_28
    iget-object v0, p0, Ldbxyzptlk/p/y;->d:Ldbxyzptlk/p/a;

    invoke-virtual {v0}, Ldbxyzptlk/p/a;->c()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1281
    iget-object v0, p0, Ldbxyzptlk/p/y;->d:Ldbxyzptlk/p/a;

    invoke-virtual {v0}, Ldbxyzptlk/p/a;->b()Ldbxyzptlk/p/c;

    move-result-object v4

    .line 1285
    iget-object v0, p0, Ldbxyzptlk/p/y;->b:Ljava/io/FileInputStream;

    iget-wide v1, v4, Ldbxyzptlk/p/c;->b:J

    invoke-static {v0, v1, v2}, Ldbxyzptlk/p/y;->a(Ljava/io/FileInputStream;J)V

    .line 1286
    monitor-enter p0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_3e} :catch_6c

    .line 1287
    :try_start_3e
    invoke-direct {p0}, Ldbxyzptlk/p/y;->b()V

    .line 1288
    iget-object v0, p0, Ldbxyzptlk/p/y;->e:Ldbxyzptlk/p/i;

    iget-object v1, p0, Ldbxyzptlk/p/y;->b:Ljava/io/FileInputStream;

    iget-wide v2, v4, Ldbxyzptlk/p/c;->c:J

    iget-object v4, v4, Ldbxyzptlk/p/c;->a:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/p/i;->a(Ldbxyzptlk/p/i;Ljava/io/InputStream;JLjava/lang/String;Ldbxyzptlk/l/q;)Ldbxyzptlk/p/r;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/p/y;->h:Ldbxyzptlk/p/r;

    .line 1289
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_69

    .line 1290
    :try_start_50
    sget-object v0, Ldbxyzptlk/p/y;->a:Ljava/lang/String;

    const-string v1, "Starting block upload.."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_57} :catch_6c

    .line 1292
    :try_start_57
    iget-object v0, p0, Ldbxyzptlk/p/y;->h:Ldbxyzptlk/p/r;

    invoke-virtual {v0}, Ldbxyzptlk/p/r;->b()Ljava/lang/String;

    move-result-object v0

    .line 1293
    iget-object v1, p0, Ldbxyzptlk/p/y;->d:Ldbxyzptlk/p/a;

    invoke-virtual {v1, v0}, Ldbxyzptlk/p/a;->a(Ljava/lang/String;)V

    .line 1294
    monitor-enter p0
    :try_end_63
    .catch Ldbxyzptlk/m/b; {:try_start_57 .. :try_end_63} :catch_76
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_6c

    .line 1295
    const/4 v0, 0x0

    :try_start_64
    iput-object v0, p0, Ldbxyzptlk/p/y;->h:Ldbxyzptlk/p/r;

    .line 1296
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_73

    move v6, v7

    .line 1307
    goto :goto_28

    .line 1289
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v0
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6c} :catch_6c

    .line 1317
    :catch_6c
    move-exception v0

    .line 1318
    new-instance v1, Ldbxyzptlk/m/b;

    invoke-direct {v1, v0}, Ldbxyzptlk/m/b;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1296
    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    :try_start_75
    throw v0
    :try_end_76
    .catch Ldbxyzptlk/m/b; {:try_start_75 .. :try_end_76} :catch_76
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_76} :catch_6c

    .line 1297
    :catch_76
    move-exception v0

    .line 1298
    :try_start_77
    sget-object v1, Ldbxyzptlk/p/y;->a:Ljava/lang/String;

    const-string v2, "Block upload error"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1299
    add-int/lit8 v1, v6, 0x1

    .line 1300
    const/4 v2, 0x3

    if-ge v1, v2, :cond_8c

    .line 1301
    sget-object v0, Ldbxyzptlk/p/y;->a:Ljava/lang/String;

    const-string v2, "Trying again.."

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v1

    .line 1302
    goto :goto_28

    .line 1304
    :cond_8c
    throw v0

    .line 1308
    :cond_8d
    invoke-direct {p0}, Ldbxyzptlk/p/y;->b()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_90} :catch_6c

    .line 1310
    :try_start_90
    iget-object v0, p0, Ldbxyzptlk/p/y;->f:Ldbxyzptlk/p/z;

    iget-object v1, p0, Ldbxyzptlk/p/y;->d:Ldbxyzptlk/p/a;

    invoke-virtual {v1}, Ldbxyzptlk/p/a;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ldbxyzptlk/p/y;->d:Ldbxyzptlk/p/a;

    invoke-virtual {v2}, Ldbxyzptlk/p/a;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ldbxyzptlk/p/z;->b(Ljava/util/List;J)Ljava/lang/Object;
    :try_end_a1
    .catch Ldbxyzptlk/p/B; {:try_start_90 .. :try_end_a1} :catch_a4
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a1} :catch_6c

    move-result-object v0

    goto/16 :goto_16

    .line 1311
    :catch_a4
    move-exception v0

    .line 1314
    :try_start_a5
    sget-object v1, Ldbxyzptlk/p/y;->a:Ljava/lang/String;

    const-string v2, "NeedBlocksException when we just uploaded everything"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1315
    new-instance v0, Ldbxyzptlk/m/a;

    const-string v1, "NeedBlocksException when we just uploaded everything"

    invoke-direct {v0, v1}, Ldbxyzptlk/m/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b4} :catch_6c
.end method
