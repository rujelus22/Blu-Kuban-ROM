.class public final Ldbxyzptlk/p/i;
.super Ldbxyzptlk/l/a;
.source "panda.py"


# static fields
.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ldbxyzptlk/p/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    const-class v0, Ldbxyzptlk/l/o;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/l/o;

    .line 93
    sget-object v2, Ldbxyzptlk/p/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ldbxyzptlk/l/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 95
    :cond_27
    return-void
.end method

.method public constructor <init>(Ldbxyzptlk/o/m;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Ldbxyzptlk/l/a;-><init>(Ldbxyzptlk/o/m;)V

    .line 104
    return-void
.end method

.method static synthetic a(Lorg/apache/http/HttpResponse;Ljava/lang/String;F)F
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Ldbxyzptlk/p/i;->b(Lorg/apache/http/HttpResponse;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method static synthetic a(Ldbxyzptlk/p/i;Ljava/lang/String;Ljava/util/List;JZLjava/lang/String;)Ldbxyzptlk/l/k;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct/range {p0 .. p6}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/util/List;JZLjava/lang/String;)Ldbxyzptlk/l/k;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;JZLjava/lang/String;)Ldbxyzptlk/l/k;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1159
    const-string v0, "path"

    invoke-static {p1, v0}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 1163
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1167
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/commit_file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1168
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "block_hashes"

    aput-object v1, v4, v0

    invoke-static {p2}, Ldbxyzptlk/B/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "overwrite"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "parent_rev"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    if-eqz p6, :cond_90

    :goto_64
    aput-object p6, v4, v0

    const/4 v0, 0x6

    const-string v1, "size"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1176
    :try_start_72
    sget-object v0, Ldbxyzptlk/l/u;->b:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->b(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ldbxyzptlk/l/m;

    move-result-object v0

    iget-object v0, v0, Ldbxyzptlk/l/m;->b:Lorg/apache/http/HttpResponse;

    .line 1181
    new-instance v1, Ldbxyzptlk/l/k;

    invoke-static {v0}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V
    :try_end_8e
    .catch Ldbxyzptlk/m/g; {:try_start_72 .. :try_end_8e} :catch_93

    move-object v0, v1

    .line 1185
    :goto_8f
    return-object v0

    .line 1168
    :cond_90
    const-string p6, ""

    goto :goto_64

    .line 1183
    :catch_93
    move-exception v0

    .line 1184
    invoke-static {v0}, Ldbxyzptlk/p/i;->a(Ldbxyzptlk/m/g;)V

    .line 1185
    const/4 v0, 0x0

    goto :goto_8f
.end method

.method private a(Lorg/apache/http/HttpResponse;)Ldbxyzptlk/p/p;
    .registers 5
    .parameter

    .prologue
    .line 345
    invoke-static {p1}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 346
    new-instance v1, Ldbxyzptlk/p/p;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ldbxyzptlk/p/p;-><init>(Ljava/util/Map;Ldbxyzptlk/p/j;)V

    return-object v1
.end method

.method static synthetic a(Ldbxyzptlk/p/i;Ljava/io/InputStream;JLjava/lang/String;Ldbxyzptlk/l/q;)Ldbxyzptlk/p/r;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Ldbxyzptlk/p/i;->a(Ljava/io/InputStream;JLjava/lang/String;Ldbxyzptlk/l/q;)Ldbxyzptlk/p/r;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/InputStream;JLjava/lang/String;Ldbxyzptlk/l/q;)Ldbxyzptlk/p/r;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1061
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 1062
    const-wide/32 v0, 0x400000

    cmp-long v0, p2, v0

    if-lez v0, :cond_12

    .line 1063
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block length too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1066
    :cond_12
    const-string v0, "/upload_block"

    .line 1067
    if-eqz p4, :cond_2d

    .line 1068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1071
    :cond_2d
    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v0, v2}, Ldbxyzptlk/o/m;->a(Lorg/apache/http/HttpRequest;)V

    .line 1075
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 1076
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 1079
    if-eqz p5, :cond_5e

    .line 1080
    new-instance v0, Ldbxyzptlk/l/r;

    invoke-direct {v0, v1, p5}, Ldbxyzptlk/l/r;-><init>(Lorg/apache/http/HttpEntity;Ldbxyzptlk/l/q;)V

    .line 1083
    :goto_53
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1084
    new-instance v0, Ldbxyzptlk/p/r;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-direct {v0, v2, v1}, Ldbxyzptlk/p/r;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Ldbxyzptlk/o/m;)V

    return-object v0

    :cond_5e
    move-object v0, v1

    goto :goto_53
.end method

.method static synthetic a(Ldbxyzptlk/p/i;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;I)Ldbxyzptlk/p/t;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct/range {p0 .. p13}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;I)Ldbxyzptlk/p/t;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;I)Ldbxyzptlk/p/t;
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1125
    const-string v1, "fileName"

    move-object/from16 v0, p7

    invoke-static {v1, v0}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v1, "cuHash8"

    move-object/from16 v0, p11

    invoke-static {v1, v0}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v1, "cuHashFull"

    move-object/from16 v0, p12

    invoke-static {v1, v0}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 1131
    const-string v1, "/"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 1135
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/commit_camera_upload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move/from16 v7, p13

    .line 1136
    invoke-direct/range {v1 .. v7}, Ldbxyzptlk/p/i;->a(JJLjava/lang/String;I)Ljava/util/HashMap;

    move-result-object v3

    .line 1137
    const-string v1, "block_hashes"

    invoke-static/range {p8 .. p8}, Ldbxyzptlk/B/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const-string v1, "size"

    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string v1, "cu_hash_full"

    move-object/from16 v0, p12

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    const-string v1, "mime_type"

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    :try_start_7a
    sget-object v1, Ldbxyzptlk/l/u;->b:Ldbxyzptlk/l/u;

    iget-object v2, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v2}, Ldbxyzptlk/o/m;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v3}, Ldbxyzptlk/p/i;->a(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    move-object v3, v8

    invoke-static/range {v1 .. v6}, Ldbxyzptlk/l/t;->b(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ldbxyzptlk/l/m;

    move-result-object v1

    iget-object v2, v1, Ldbxyzptlk/l/m;->b:Lorg/apache/http/HttpResponse;

    .line 1148
    new-instance v3, Ldbxyzptlk/l/k;

    invoke-static {v2}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v3, v1}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    .line 1149
    const-string v1, "dropbox-chillout"

    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Ldbxyzptlk/p/i;->b(Lorg/apache/http/HttpResponse;Ljava/lang/String;F)F

    move-result v2

    .line 1150
    new-instance v1, Ldbxyzptlk/p/t;

    invoke-direct {v1, v3, v2}, Ldbxyzptlk/p/t;-><init>(Ldbxyzptlk/l/k;F)V
    :try_end_a7
    .catch Ldbxyzptlk/m/g; {:try_start_7a .. :try_end_a7} :catch_a8

    .line 1153
    :goto_a7
    return-object v1

    .line 1151
    :catch_a8
    move-exception v1

    .line 1152
    invoke-static {v1}, Ldbxyzptlk/p/i;->a(Ldbxyzptlk/m/g;)V

    .line 1153
    const/4 v1, 0x0

    goto :goto_a7
.end method

.method private a(JJLjava/lang/String;I)Ljava/util/HashMap;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 814
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 815
    const-string v0, "device_manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string v0, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v0, "device_uid"

    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v2

    invoke-virtual {v2}, Ldbxyzptlk/j/m;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v0, "client_platform"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string v0, "client_buildstring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v3

    invoke-virtual {v3}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v3

    iget-object v3, v3, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v2, "file_mtime"

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-lez v0, :cond_94

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_68
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v0, "client_timeoffset"

    invoke-virtual {v1, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v0, "client_import_time"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    if-lez p6, :cond_84

    .line 824
    const-string v0, "file_number"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :cond_84
    const-string v0, "locale"

    iget-object v2, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v2}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    return-object v1

    .line 820
    :cond_94
    const-string v0, ""

    goto :goto_68
.end method

.method private static a(Ldbxyzptlk/m/g;)V
    .registers 3
    .parameter

    .prologue
    .line 1107
    .line 1108
    iget v0, p0, Ldbxyzptlk/m/g;->b:I

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Ldbxyzptlk/m/g;->f:Ljava/util/Map;

    if-eqz v0, :cond_1c

    .line 1109
    iget-object v0, p0, Ldbxyzptlk/m/g;->f:Ljava/util/Map;

    const-string v1, "need_blocks"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1110
    if-eqz v0, :cond_1c

    .line 1112
    check-cast v0, Ljava/util/List;

    .line 1113
    new-instance v1, Ldbxyzptlk/p/B;

    invoke-direct {v1, v0}, Ldbxyzptlk/p/B;-><init>(Ljava/util/List;)V

    throw v1

    .line 1116
    :cond_1c
    throw p0
.end method

.method private static a(Ljava/util/Map;)[Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 831
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    .line 832
    const/4 v0, 0x0

    .line 833
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 834
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v2

    .line 835
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 836
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_12

    .line 838
    :cond_34
    return-object v3
.end method

.method private static b(Lorg/apache/http/HttpResponse;Ljava/lang/String;F)F
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 980
    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 981
    if-eqz v0, :cond_e

    .line 983
    :try_start_6
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_d} :catch_f

    move-result p2

    .line 986
    :cond_e
    :goto_e
    return p2

    .line 984
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method static synthetic c(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {p0, p1}, Ldbxyzptlk/p/i;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Ljava/util/Map;Ljava/lang/String;)J
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {p0, p1}, Ldbxyzptlk/p/i;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Ljava/util/Map;Ljava/lang/String;)J
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {p0, p1}, Ldbxyzptlk/p/i;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/FileInputStream;ZLjava/lang/String;Ldbxyzptlk/p/g;)Ldbxyzptlk/p/D;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1014
    .line 1015
    new-instance v7, Ldbxyzptlk/p/y;

    new-instance v0, Ldbxyzptlk/p/k;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldbxyzptlk/p/k;-><init>(Ldbxyzptlk/p/i;Ldbxyzptlk/p/i;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    move-object v3, p5

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Ldbxyzptlk/p/y;-><init>(Ljava/io/FileInputStream;Ldbxyzptlk/p/g;Ldbxyzptlk/p/i;Ldbxyzptlk/p/z;Ldbxyzptlk/p/l;)V

    return-object v7
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ILjava/io/FileInputStream;Ldbxyzptlk/p/g;Ldbxyzptlk/p/l;)Ldbxyzptlk/p/D;
    .registers 27
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 993
    new-instance v13, Ldbxyzptlk/p/y;

    new-instance v0, Ldbxyzptlk/p/j;

    move-object v1, p0

    move-object/from16 v2, p10

    move-object/from16 v3, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p3

    move-object v10, p1

    move-object/from16 v11, p11

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Ldbxyzptlk/p/j;-><init>(Ldbxyzptlk/p/i;Ljava/io/FileInputStream;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/p/g;I)V

    move-object v1, v13

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object v4, p0

    move-object v5, v0

    move-object/from16 v6, p12

    invoke-direct/range {v1 .. v6}, Ldbxyzptlk/p/y;-><init>(Ljava/io/FileInputStream;Ldbxyzptlk/p/g;Ldbxyzptlk/p/i;Ldbxyzptlk/p/z;Ldbxyzptlk/p/l;)V

    return-object v13
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ILjava/io/InputStream;JLdbxyzptlk/l/q;)Ldbxyzptlk/p/D;
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 848
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/camera_upload/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v3, p0

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 852
    invoke-direct/range {v3 .. v9}, Ldbxyzptlk/p/i;->a(JJLjava/lang/String;I)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v3}, Ldbxyzptlk/p/i;->a(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    .line 854
    iget-object v4, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v4}, Ldbxyzptlk/o/m;->i()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5, v10, v3}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 858
    new-instance v5, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v5, v3}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 859
    iget-object v3, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v3, v5}, Ldbxyzptlk/o/m;->a(Lorg/apache/http/HttpRequest;)V

    .line 861
    const-string v3, "Content-Type"

    invoke-virtual {v5, v3, p2}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v4, Lorg/apache/http/entity/InputStreamEntity;

    move-object/from16 v0, p10

    move-wide/from16 v1, p11

    invoke-direct {v4, v0, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 864
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 868
    if-eqz p13, :cond_6b

    .line 869
    new-instance v3, Ldbxyzptlk/l/r;

    move-object/from16 v0, p13

    invoke-direct {v3, v4, v0}, Ldbxyzptlk/l/r;-><init>(Lorg/apache/http/HttpEntity;Ldbxyzptlk/l/q;)V

    .line 872
    :goto_60
    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 874
    new-instance v3, Ldbxyzptlk/p/s;

    iget-object v4, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-direct {v3, p0, v5, v4}, Ldbxyzptlk/p/s;-><init>(Ldbxyzptlk/p/i;Lorg/apache/http/client/methods/HttpUriRequest;Ldbxyzptlk/o/m;)V

    return-object v3

    :cond_6b
    move-object v3, v4

    goto :goto_60
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ldbxyzptlk/p/p;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 394
    const-string v0, "username"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v0, "password"

    invoke-static {v0, p2}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/dropbox/android/util/aJ;->m:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/dropbox/android/util/aJ;->v:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string v2, "first_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string v2, "last_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p4, v0, v1

    const/16 v1, 0x8

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/android/util/aJ;->j:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locale"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v2}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 406
    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/account"

    invoke-static {v1, v3, v2, v0}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v0}, Ldbxyzptlk/o/m;->a()Ldbxyzptlk/o/l;

    move-result-object v0

    .line 414
    new-instance v2, Ldbxyzptlk/p/F;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p5, v3}, Ldbxyzptlk/p/F;-><init>(Ldbxyzptlk/o/l;Landroid/content/Context;Ldbxyzptlk/o/k;)V

    .line 415
    invoke-virtual {v2, v1}, Ldbxyzptlk/p/F;->a(Lorg/apache/http/HttpRequest;)V

    .line 417
    iget-object v0, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static {v0, v1}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 418
    invoke-direct {p0, v0}, Ldbxyzptlk/p/i;->a(Lorg/apache/http/HttpResponse;)Ldbxyzptlk/p/p;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldbxyzptlk/p/v;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 278
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/media_transcode/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "mpegts"

    aput-object v1, v0, v5

    .line 288
    const/16 v1, 0x12

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "locale"

    aput-object v1, v4, v5

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    const-string v3, "screen_resolution"

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object p2, v4, v1

    const/4 v1, 0x4

    const-string v3, "connection_type"

    aput-object v3, v4, v1

    const/4 v1, 0x5

    aput-object p3, v4, v1

    const/4 v1, 0x6

    const-string v3, "container"

    aput-object v3, v4, v1

    const/4 v1, 0x7

    const-string v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/16 v0, 0x8

    const-string v1, "model"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0xa

    const-string v1, "app_version"

    aput-object v1, v4, v0

    const/16 v0, 0xb

    aput-object p4, v4, v0

    const/16 v0, 0xc

    const-string v1, "sys_version"

    aput-object v1, v4, v0

    const/16 v0, 0xd

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0xe

    const-string v1, "platform"

    aput-object v1, v4, v0

    const/16 v0, 0xf

    const-string v1, "android"

    aput-object v1, v4, v0

    const/16 v0, 0x10

    const-string v1, "manufacturer"

    aput-object v1, v4, v0

    const/16 v0, 0x11

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 301
    :try_start_94
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 303
    new-instance v1, Ldbxyzptlk/p/v;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ldbxyzptlk/p/v;-><init>(Ljava/util/Map;Ldbxyzptlk/p/j;)V
    :try_end_ab
    .catch Ldbxyzptlk/m/g; {:try_start_94 .. :try_end_ab} :catch_ac

    return-object v1

    .line 304
    :catch_ac
    move-exception v0

    .line 305
    iget v1, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v2, 0x19f

    if-ne v1, v2, :cond_b9

    .line 307
    new-instance v0, Ldbxyzptlk/p/C;

    invoke-direct {v0}, Ldbxyzptlk/p/C;-><init>()V

    throw v0

    .line 309
    :cond_b9
    throw v0
.end method

.method public final a(Ldbxyzptlk/p/h;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 427
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 429
    const/16 v0, 0x22

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/dropbox/android/util/aJ;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android"

    aput-object v0, v4, v3

    const/4 v0, 0x2

    sget-object v1, Lcom/dropbox/android/util/aJ;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p1, Ldbxyzptlk/p/h;->a:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/dropbox/android/util/aJ;->D:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p1, Ldbxyzptlk/p/h;->b:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x6

    sget-object v1, Lcom/dropbox/android/util/aJ;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    aput-object v1, v4, v0

    const/16 v0, 0x8

    sget-object v1, Lcom/dropbox/android/util/aJ;->k:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x9

    iget-object v1, p1, Ldbxyzptlk/p/h;->e:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0xa

    sget-object v1, Lcom/dropbox/android/util/aJ;->l:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0xb

    iget-object v1, p1, Ldbxyzptlk/p/h;->h:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0xc

    sget-object v1, Lcom/dropbox/android/util/aJ;->A:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0xd

    iget-object v1, p1, Ldbxyzptlk/p/h;->i:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0xe

    sget-object v1, Lcom/dropbox/android/util/aJ;->C:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0xf

    iget-object v1, p1, Ldbxyzptlk/p/h;->d:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0x10

    sget-object v1, Lcom/dropbox/android/util/aJ;->o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x11

    iget-object v1, p1, Ldbxyzptlk/p/h;->o:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0x12

    sget-object v1, Lcom/dropbox/android/util/aJ;->r:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x13

    iget-object v1, p1, Ldbxyzptlk/p/h;->g:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0x14

    sget-object v1, Lcom/dropbox/android/util/aJ;->x:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x15

    iget-object v1, p1, Ldbxyzptlk/p/h;->l:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0x16

    sget-object v1, Lcom/dropbox/android/util/aJ;->t:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x17

    iget-object v1, p1, Ldbxyzptlk/p/h;->n:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0x18

    sget-object v1, Lcom/dropbox/android/util/aJ;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x19

    iget-object v1, p1, Ldbxyzptlk/p/h;->m:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0x1a

    sget-object v1, Lcom/dropbox/android/util/aJ;->z:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x1b

    iget-object v1, p1, Ldbxyzptlk/p/h;->j:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0x1c

    sget-object v1, Lcom/dropbox/android/util/aJ;->q:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x1d

    iget-object v1, p1, Ldbxyzptlk/p/h;->k:Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0x1e

    sget-object v1, Lcom/dropbox/android/util/aJ;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x1f

    invoke-virtual {p1}, Ldbxyzptlk/p/h;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x20

    sget-object v1, Lcom/dropbox/android/util/aJ;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x21

    iget-object v1, p1, Ldbxyzptlk/p/h;->p:Ljava/util/Map;

    invoke-static {v1}, Ldbxyzptlk/B/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 450
    sget-object v0, Ldbxyzptlk/l/u;->b:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dropbox/android/util/aJ;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 455
    iget-object v1, p1, Ldbxyzptlk/p/h;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/util/List;I)Ljava/util/List;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 567
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 569
    if-gtz p2, :cond_8

    .line 570
    const/16 p2, 0x2710

    .line 573
    :cond_8
    iget-object v0, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v0}, Ldbxyzptlk/o/m;->b()Ldbxyzptlk/o/n;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/o/n;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    new-instance v2, Ldbxyzptlk/B/a;

    invoke-direct {v2}, Ldbxyzptlk/B/a;-><init>()V

    .line 575
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldbxyzptlk/B/a;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 579
    :cond_3c
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "paths"

    aput-object v1, v4, v0

    invoke-virtual {v2}, Ldbxyzptlk/B/a;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v1, "file_limit"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 585
    const-string v2, "/iphone/files_batch/"

    .line 587
    sget-object v0, Ldbxyzptlk/l/u;->b:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/B/a;

    .line 591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 593
    invoke-virtual {v0}, Ldbxyzptlk/B/a;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_83
    :goto_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 594
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_83

    .line 595
    new-instance v3, Ldbxyzptlk/l/k;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v3, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    .line 596
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 600
    :cond_9c
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/h/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;JZ)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/android/util/aJ;->g:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/dropbox/android/util/aJ;->k:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    const-string v5, "log_level"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p3}, Ldbxyzptlk/h/e;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/dropbox/android/util/aJ;->f:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    if-nez p4, :cond_36

    const-string p4, "0"

    :cond_36
    aput-object p4, v3, v4

    const/16 v4, 0x8

    sget-object v5, Lcom/dropbox/android/util/aJ;->D:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    aput-object p5, v3, v4

    const/16 v4, 0xa

    sget-object v5, Lcom/dropbox/android/util/aJ;->l:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    aput-object p6, v3, v4

    const/16 v4, 0xc

    sget-object v5, Lcom/dropbox/android/util/aJ;->A:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    aput-object p7, v3, v4

    const/16 v4, 0xe

    const-string v5, "ts"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 475
    iget-object v4, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v4}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, Lcom/dropbox/android/util/aJ;->u:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v3}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 479
    iget-object v3, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v3, v4}, Ldbxyzptlk/o/m;->a(Lorg/apache/http/HttpRequest;)V

    .line 481
    new-instance v5, Lorg/apache/http/entity/InputStreamEntity;

    move-object/from16 v0, p10

    move-wide/from16 v1, p11

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 482
    if-eqz p13, :cond_c0

    const-string v3, "gzip"

    :goto_98
    invoke-virtual {v5, v3}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 483
    const-string v3, "text/plain"

    invoke-virtual {v5, v3}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 484
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 485
    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 497
    iget-object v3, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static {v3, v4}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 499
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_c3

    .line 500
    new-instance v4, Ldbxyzptlk/m/g;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ldbxyzptlk/m/g;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V

    throw v4

    .line 482
    :cond_c0
    const-string v3, "application/octet-stream"

    goto :goto_98

    .line 502
    :cond_c3
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ldbxyzptlk/p/p;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 355
    const-string v0, "username"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "password"

    invoke-static {v0, p2}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "email"

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    const/4 v1, 0x2

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string v2, "locale"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v2}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 364
    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/token"

    invoke-static {v1, v3, v2, v0}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v0, v1}, Ldbxyzptlk/o/m;->a(Lorg/apache/http/HttpRequest;)V

    .line 369
    iget-object v0, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static {v0, v1}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 370
    invoke-direct {p0, v0}, Ldbxyzptlk/p/i;->a(Lorg/apache/http/HttpResponse;)Ldbxyzptlk/p/p;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ldbxyzptlk/p/x;
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 165
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 168
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/account/info"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "locale"

    aput-object v6, v4, v5

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v5}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 174
    new-instance v1, Ldbxyzptlk/p/x;

    invoke-direct {v1, v0}, Ldbxyzptlk/p/x;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final d(Ljava/lang/String;)Ldbxyzptlk/p/E;
    .registers 4
    .parameter

    .prologue
    .line 332
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 333
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1, v0}, Ldbxyzptlk/o/m;->a(Lorg/apache/http/HttpRequest;)V

    .line 335
    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static {v1, v0}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 338
    invoke-static {v0}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 339
    new-instance v1, Ldbxyzptlk/p/E;

    invoke-direct {v1, v0}, Ldbxyzptlk/p/E;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final d()Ljava/util/List;
    .registers 7

    .prologue
    .line 605
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 607
    const-string v2, "/camera_upload_hashes"

    .line 609
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 612
    new-instance v1, Ljava/util/LinkedList;

    const-string v2, "hashes_8"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/B/a;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final e(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 381
    const-string v0, "email"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "email"

    aput-object v1, v4, v0

    aput-object p1, v4, v3

    .line 383
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/password_reset"

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public final f(Ljava/lang/String;)Ldbxyzptlk/p/u;
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 508
    const-string v2, "/connect_info"

    .line 509
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "consumer_key"

    aput-object v1, v4, v0

    aput-object p1, v4, v3

    const/4 v0, 0x2

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 513
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 517
    new-instance v1, Ldbxyzptlk/p/u;

    invoke-direct {v1, v0}, Ldbxyzptlk/p/u;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final g(Ljava/lang/String;)Ldbxyzptlk/p/o;
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 524
    invoke-virtual {p0}, Ldbxyzptlk/p/i;->b()V

    .line 526
    const-string v2, "/dtoken"

    .line 527
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "consumer_key"

    aput-object v1, v4, v0

    aput-object p1, v4, v3

    const/4 v0, 0x2

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 531
    sget-object v0, Ldbxyzptlk/l/u;->a:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 535
    new-instance v1, Ldbxyzptlk/p/o;

    invoke-direct {v1, v0}, Ldbxyzptlk/p/o;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final h(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter

    .prologue
    .line 544
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static {v1, v0}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 547
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_29

    .line 550
    :try_start_11
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_22

    move-result-object v1

    .line 552
    :try_start_15
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d

    move-result-object v0

    .line 554
    :try_start_19
    invoke-static {v1}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 562
    :goto_1c
    return-object v0

    .line 554
    :catchall_1d
    move-exception v0

    invoke-static {v1}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    throw v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_22

    .line 557
    :catch_22
    move-exception v0

    .line 558
    new-instance v1, Ldbxyzptlk/m/b;

    invoke-direct {v1, v0}, Ldbxyzptlk/m/b;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 562
    :cond_29
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public final i(Ljava/lang/String;)Ldbxyzptlk/l/g;
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 638
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "cursor"

    aput-object v1, v4, v0

    aput-object p1, v4, v3

    const/4 v0, 0x2

    const-string v1, "locale"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 643
    sget-object v0, Ldbxyzptlk/l/u;->b:Ldbxyzptlk/l/u;

    iget-object v1, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-interface {v1}, Ldbxyzptlk/o/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/camera_uploads_delta"

    iget-object v5, p0, Ldbxyzptlk/p/i;->b:Ldbxyzptlk/o/m;

    invoke-static/range {v0 .. v5}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/l/u;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ldbxyzptlk/o/m;)Ljava/lang/Object;

    move-result-object v0

    .line 646
    :try_start_2d
    new-instance v1, Ldbxyzptlk/n/k;

    invoke-direct {v1, v0}, Ldbxyzptlk/n/k;-><init>(Ljava/lang/Object;)V

    sget-object v0, Ldbxyzptlk/p/m;->c:Ldbxyzptlk/p/n;

    invoke-static {v1, v0}, Ldbxyzptlk/l/g;->a(Ldbxyzptlk/n/k;Ldbxyzptlk/n/c;)Ldbxyzptlk/l/g;
    :try_end_37
    .catch Ldbxyzptlk/n/b; {:try_start_2d .. :try_end_37} :catch_39

    move-result-object v0

    return-object v0

    .line 647
    :catch_39
    move-exception v0

    .line 648
    new-instance v1, Ldbxyzptlk/m/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing /camera_uploads_delta results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldbxyzptlk/n/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldbxyzptlk/m/d;-><init>(Ljava/lang/String;)V

    throw v1
.end method
