.class public Lat/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/util/Vector;

.field final b:Z

.field final c:Z

.field final synthetic d:Lat/n;


# direct methods
.method constructor <init>(Lat/n;Ljava/util/Vector;)V
    .registers 4

    iput-object p1, p0, Lat/o;->d:Lat/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-static {p2}, Lat/h;->a(Ljava/util/Vector;)Z

    move-result v0

    iput-boolean v0, p0, Lat/o;->b:Z

    invoke-static {p2}, Lat/h;->b(Ljava/util/Vector;)Z

    move-result v0

    iput-boolean v0, p0, Lat/o;->c:Z

    return-void
.end method

.method private a(Lat/l;)V
    .registers 16

    const-wide/16 v12, 0x3e8

    const/4 v4, 0x0

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v0, v0, Lat/h;->k:Lat/f;

    invoke-virtual {v0, p0}, Lat/f;->a(Ljava/lang/Object;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v2}, Lat/o;->a(Ljava/io/OutputStream;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "DRD"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lat/h;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    iget-object v1, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-interface {v0}, Lat/g;->a()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_50
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :try_start_54
    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    invoke-static {v1}, Lat/h;->a(Lat/h;)Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v2

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    iget-object v1, v1, Lat/h;->j:Lak/i;

    invoke-static {p1}, Lat/l;->c(Lat/l;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Lak/i;->a(Ljava/lang/String;Z)Lak/f;
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_25f

    move-result-object v8

    :try_start_6f
    const-string v1, "Content-Type"

    const-string v5, "application/binary"

    invoke-interface {v8, v1, v5}, Lak/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v1, v5}, Lak/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Lak/f;->a()Ljava/io/DataOutputStream;
    :try_end_92
    .catchall {:try_start_6f .. :try_end_92} :catchall_265

    move-result-object v7

    :try_start_93
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    iget v5, v1, Lat/h;->h:I

    array-length v0, v0

    add-int/2addr v0, v5

    iput v0, v1, Lat/h;->h:I

    invoke-interface {v8}, Lak/f;->b()Ljava/io/DataInputStream;
    :try_end_a3
    .catchall {:try_start_93 .. :try_end_a3} :catchall_26b

    move-result-object v6

    :try_start_a4
    invoke-interface {v8}, Lak/f;->c()I

    move-result v0

    invoke-interface {v8}, Lak/f;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lat/o;->d:Lat/n;

    iget-object v4, v4, Lat/n;->a:Lat/h;

    invoke-static {v4}, Lat/h;->a(Lat/h;)Laf/a;

    move-result-object v4

    invoke-interface {v4}, Laf/a;->c()J

    move-result-wide v4

    sub-long v10, v4, v2

    const-string v4, ", "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v4, v10, v12

    if-gez v4, :cond_120

    const-string v4, "<1s"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c8
    invoke-direct {p0, v0, v1}, Lat/o;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1db

    invoke-interface {v8}, Lak/f;->e()J

    move-result-wide v0

    long-to-int v12, v0

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget v1, v0, Lat/h;->i:I

    add-int/2addr v1, v12

    iput v1, v0, Lat/h;->i:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_167

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lat/h;->a(I)V
    :try_end_ec
    .catchall {:try_start_a4 .. :try_end_ec} :catchall_12e

    if-eqz v6, :cond_f1

    :try_start_ee
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_23f

    :cond_f1
    :goto_f1
    if-eqz v7, :cond_f6

    :try_start_f3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_242

    :cond_f6
    :goto_f6
    if-eqz v8, :cond_fb

    :try_start_f8
    invoke-interface {v8}, Lak/f;->f()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_245

    :cond_fb
    :goto_fb
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_106
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_226

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;

    invoke-interface {v0}, Lat/g;->c_()Z

    move-result v3

    if-nez v3, :cond_248

    iget-object v3, p0, Lat/o;->d:Lat/n;

    iget-object v3, v3, Lat/n;->a:Lat/h;

    invoke-virtual {v3, v0}, Lat/h;->b(Lat/g;)V

    goto :goto_106

    :cond_120
    const-wide/16 v4, 0x3e8

    :try_start_122
    div-long v4, v10, v4

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12d
    .catchall {:try_start_122 .. :try_end_12d} :catchall_12e

    goto :goto_c8

    :catchall_12e
    move-exception v0

    move-object v1, v0

    move-object v4, v7

    move-object v2, v8

    move-object v0, v6

    :goto_133
    if-eqz v0, :cond_138

    :try_start_135
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_231

    :cond_138
    :goto_138
    if-eqz v4, :cond_13d

    :try_start_13a
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13d} :catch_234

    :cond_13d
    :goto_13d
    if-eqz v2, :cond_142

    :try_start_13f
    invoke-interface {v2}, Lak/f;->f()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_237

    :cond_142
    :goto_142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;

    invoke-interface {v0}, Lat/g;->c_()Z

    move-result v4

    if-nez v4, :cond_23a

    iget-object v4, p0, Lat/o;->d:Lat/n;

    iget-object v4, v4, Lat/n;->a:Lat/h;

    invoke-virtual {v4, v0}, Lat/h;->b(Lat/g;)V

    goto :goto_14d

    :cond_167
    :try_start_167
    invoke-direct {p0, v6}, Lat/o;->a(Ljava/io/DataInputStream;)V

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    invoke-static {v0}, Lat/h;->a(Lat/h;)Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-int v5, v0

    const/16 v0, 0x16

    const-string v1, "fb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/16 v0, 0x16

    const-string v1, "lb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v0, v0, Lat/h;->k:Lat/f;

    long-to-int v4, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lat/f;->a(Ljava/lang/Object;JII)V

    const/16 v0, 0x2000

    if-lt v12, v0, :cond_1cd

    int-to-long v0, v5

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1cd

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    mul-int/lit16 v1, v12, 0x3e8

    div-int/2addr v1, v5

    invoke-static {v0, v1}, Lat/h;->b(Lat/h;I)I

    :cond_1cd
    const-string v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e8

    if-ge v12, v0, :cond_20f

    const-string v0, "<1kb"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1db
    .catchall {:try_start_167 .. :try_end_1db} :catchall_12e

    :cond_1db
    :goto_1db
    if-eqz v6, :cond_1e0

    :try_start_1dd
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1e0
    .catch Ljava/io/IOException; {:try_start_1dd .. :try_end_1e0} :catch_24d

    :cond_1e0
    :goto_1e0
    if-eqz v7, :cond_1e5

    :try_start_1e2
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1e5} :catch_24f

    :cond_1e5
    :goto_1e5
    if-eqz v8, :cond_1ea

    :try_start_1e7
    invoke-interface {v8}, Lak/f;->f()V
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1ea} :catch_251

    :cond_1ea
    :goto_1ea
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_253

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;

    invoke-interface {v0}, Lat/g;->c_()Z

    move-result v3

    if-nez v3, :cond_25b

    iget-object v3, p0, Lat/o;->d:Lat/n;

    iget-object v3, v3, Lat/n;->a:Lat/h;

    invoke-virtual {v3, v0}, Lat/h;->b(Lat/g;)V

    goto :goto_1f5

    :cond_20f
    :try_start_20f
    div-int/lit16 v0, v12, 0x3e8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21a
    .catchall {:try_start_20f .. :try_end_21a} :catchall_12e

    goto :goto_1db

    :cond_21b
    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    throw v1

    :cond_226
    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    :goto_22d
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    return-void

    :catch_231
    move-exception v0

    goto/16 :goto_138

    :catch_234
    move-exception v0

    goto/16 :goto_13d

    :catch_237
    move-exception v0

    goto/16 :goto_142

    :cond_23a
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14d

    :catch_23f
    move-exception v0

    goto/16 :goto_f1

    :catch_242
    move-exception v0

    goto/16 :goto_f6

    :catch_245
    move-exception v0

    goto/16 :goto_fb

    :cond_248
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_106

    :catch_24d
    move-exception v0

    goto :goto_1e0

    :catch_24f
    move-exception v0

    goto :goto_1e5

    :catch_251
    move-exception v0

    goto :goto_1ea

    :cond_253
    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    goto :goto_22d

    :cond_25b
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f5

    :catchall_25f
    move-exception v0

    move-object v1, v0

    move-object v2, v4

    move-object v0, v4

    goto/16 :goto_133

    :catchall_265
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v4

    goto/16 :goto_133

    :catchall_26b
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v4

    move-object v4, v7

    goto/16 :goto_133
.end method

.method private a(Ljava/io/DataInputStream;)V
    .registers 10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    :try_start_8
    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_88

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_63
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_aa
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_18} :catch_86

    :try_start_18
    invoke-direct {p0, p1, v0}, Lat/o;->a(Ljava/io/DataInput;Lat/g;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_63
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_21} :catch_86

    :cond_21
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_8

    :catch_26
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2a
    :try_start_2a
    instance-of v4, v0, Ljava/io/EOFException;

    if-eqz v4, :cond_62

    invoke-interface {v1}, Lat/g;->aK()V

    iget-object v4, p0, Lat/o;->d:Lat/n;

    iget-object v4, v4, Lat/n;->a:Lat/h;

    iget-boolean v4, v4, Lat/h;->d:Z

    if-eqz v4, :cond_62

    invoke-interface {v1}, Lat/g;->a()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No server support for data request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lat/o;->d:Lat/n;

    iget-object v4, v4, Lat/n;->a:Lat/h;

    iget-object v4, v4, Lat/h;->j:Lak/i;

    invoke-interface {v4}, Lak/i;->d()Z

    move-result v4

    iget-object v5, p0, Lat/o;->d:Lat/n;

    iget-object v5, v5, Lat/n;->a:Lat/h;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4, v1}, Lat/h;->a(IZLjava/lang/String;)V

    :cond_62
    throw v0
    :try_end_63
    .catchall {:try_start_2a .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v0

    iget-object v1, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_7b

    iget-object v1, p0, Lat/o;->a:Ljava/util/Vector;

    iget-object v4, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7b
    iget-object v1, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    throw v0

    :catch_86
    move-exception v0

    :try_start_87
    throw v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_63

    :cond_88
    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_9f

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    iget-object v1, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9f
    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    return-void

    :catch_aa
    move-exception v0

    goto/16 :goto_2a
.end method

.method private a(ILjava/lang/String;)Z
    .registers 7

    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lat/h;->a(I)V

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_98

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Server 500 for request types: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;

    invoke-interface {v0}, Lat/g;->aK()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-interface {v0}, Lat/g;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_42
    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-boolean v0, v0, Lat/h;->d:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v0, v0, Lat/h;->j:Lak/i;

    invoke-interface {v0}, Lak/i;->d()Z

    move-result v0

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    const/4 v3, 0x7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Lat/h;->a(IZLjava/lang/String;)V

    :cond_60
    new-instance v0, Lat/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serverside failure (HTTP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lat/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad HTTP response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    const-string v0, "application/binary"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad HTTP content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b9
    const/4 v0, 0x1

    goto/16 :goto_d
.end method

.method private a(Ljava/io/DataInput;Lat/g;)Z
    .registers 7

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-interface {p2}, Lat/g;->a()I

    move-result v1

    if-eq v0, v1, :cond_31

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lat/g;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    invoke-interface {p2, p1}, Lat/g;->a(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_48

    if-eq p2, p0, :cond_46

    invoke-interface {p2}, Lat/g;->h_()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    invoke-virtual {v0, p2}, Lat/h;->a(Lat/g;)V

    :cond_46
    const/4 v0, 0x1

    :goto_47
    return v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_47
.end method

.method private b()V
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-static {v1}, Lat/h;->c(Ljava/util/Vector;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    invoke-static {v0}, Lat/h;->d(Lat/h;)Lcom/google/googlenav/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bj;->a()Lam/b;

    move-result-object v0

    move-object v1, v0

    :goto_17
    if-eqz v1, :cond_47

    iget-object v0, p0, Lat/o;->d:Lat/n;

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v0

    invoke-virtual {v0}, Lam/b;->a()Lam/b;

    move-result-object v0

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Lam/b;->a(ILam/b;)V

    :goto_28
    new-instance v1, Lat/e;

    invoke-direct {v1, v0}, Lat/e;-><init>(Lam/b;)V

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_54

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;

    instance-of v0, v0, Lat/e;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_46
    return-void

    :cond_47
    iget-object v0, p0, Lat/o;->d:Lat/n;

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v0

    goto :goto_28

    :cond_4e
    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_46

    :cond_54
    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_46

    :cond_5a
    move-object v1, v0

    goto :goto_17
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-boolean v1, p0, Lat/o;->b:Z

    iget-boolean v2, p0, Lat/o;->c:Z

    invoke-static {v0, v1, v2}, Lat/h;->a(Lat/h;ZZ)V

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    invoke-static {v1}, Lat/h;->a(Lat/h;)Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lat/h;->a(Lat/h;J)J

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "DataRequestDispatcher"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(Ljava/io/OutputStream;)V
    .registers 6

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Lat/o;->b()V

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    invoke-static {v0}, Lat/h;->e(Lat/h;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {}, Laf/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v0, v0, Lat/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v0, v0, Lat/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    invoke-static {v0}, Lat/h;->f(Lat/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;

    invoke-interface {v0}, Lat/g;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-interface {v0, v1}, Lat/g;->a(Ljava/io/DataOutput;)V

    goto :goto_42

    :cond_59
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public run()V
    .registers 5

    :goto_0
    :try_start_0
    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    invoke-static {v0}, Lat/h;->b(Lat/h;)Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lat/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_ad

    monitor-enter p0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_60

    :try_start_13
    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v0, v0, Lat/h;->e:Lat/l;

    invoke-static {v0}, Lat/l;->a(Lat/l;)J
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_76

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_26

    :try_start_23
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_76
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_c2

    :cond_26
    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_76

    :try_start_27
    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v0, v0, Lat/h;->e:Lat/l;

    invoke-direct {p0, v0}, Lat/o;->a(Lat/l;)V

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v0, v0, Lat/h;->j:Lak/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lak/i;->a(Z)Z

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    invoke-static {v0}, Lat/h;->c(Lat/h;)V

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    invoke-static {v1}, Lat/h;->a(Lat/h;)Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lat/h;->b(Lat/h;J)J
    :try_end_54
    .catchall {:try_start_27 .. :try_end_54} :catchall_60
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_54} :catch_55
    .catch Lat/m; {:try_start_27 .. :try_end_54} :catch_79
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_54} :catch_84
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_54} :catch_8f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_54} :catch_9f

    goto :goto_0

    :catch_55
    move-exception v0

    :try_start_56
    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    iget-object v1, v1, Lat/h;->e:Lat/l;

    invoke-static {v1, v0}, Lat/l;->a(Lat/l;Ljava/lang/Exception;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_60

    goto :goto_0

    :catchall_60
    move-exception v0

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    iget-boolean v2, p0, Lat/o;->b:Z

    iget-boolean v3, p0, Lat/o;->c:Z

    invoke-static {v1, v2, v3}, Lat/h;->b(Lat/h;ZZ)V

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    iget-object v1, v1, Lat/h;->e:Lat/l;

    invoke-static {v1}, Lat/l;->b(Lat/l;)V

    throw v0

    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    :try_start_78
    throw v0

    :catch_79
    move-exception v0

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lat/h;->a(Lat/h;ILjava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_84
    move-exception v0

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lat/h;->a(Lat/h;ILjava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_8f
    move-exception v0

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lat/h;->a(Lat/h;ILjava/lang/Throwable;)V

    const-string v1, "REQUEST"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_9f
    move-exception v0

    invoke-static {}, Laf/l;->b()V

    iget-object v1, p0, Lat/o;->d:Lat/n;

    iget-object v1, v1, Lat/n;->a:Lat/h;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lat/h;->a(Lat/h;ILjava/lang/Throwable;)V
    :try_end_ab
    .catchall {:try_start_78 .. :try_end_ab} :catchall_60

    goto/16 :goto_0

    :cond_ad
    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-boolean v1, p0, Lat/o;->b:Z

    iget-boolean v2, p0, Lat/o;->c:Z

    invoke-static {v0, v1, v2}, Lat/h;->b(Lat/h;ZZ)V

    iget-object v0, p0, Lat/o;->d:Lat/n;

    iget-object v0, v0, Lat/n;->a:Lat/h;

    iget-object v0, v0, Lat/h;->e:Lat/l;

    invoke-static {v0}, Lat/l;->b(Lat/l;)V

    return-void

    :catch_c2
    move-exception v0

    goto/16 :goto_26
.end method
