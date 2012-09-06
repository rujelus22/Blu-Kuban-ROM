.class public final Lcom/google/googlenav/common/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Vector;

.field private static b:[B

.field private static c:Z

.field private static d:J

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/common/j;->c:Z

    .line 76
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/google/googlenav/common/j;->d:J

    .line 81
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/googlenav/common/j;->e:J

    .line 84
    invoke-static {}, Lcom/google/googlenav/common/j;->c()V

    .line 85
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/j;Ljava/lang/String;)Ljava/io/DataInput;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-interface {p0, p1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v1

    .line 122
    if-nez v1, :cond_8

    .line 123
    const/4 v0, 0x0

    .line 126
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-static {p0}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    .line 258
    if-nez v1, :cond_8

    .line 276
    :goto_7
    return-object v0

    .line 263
    :cond_8
    packed-switch p1, :pswitch_data_50

    .line 273
    :try_start_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :catch_2e
    move-exception v1

    goto :goto_7

    .line 265
    :pswitch_30
    invoke-interface {v1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    .line 267
    :pswitch_39
    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    .line 269
    :pswitch_42
    invoke-interface {v1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7

    .line 271
    :pswitch_4b
    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_4e} :catch_2e

    move-result-object v0

    goto :goto_7

    .line 263
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_30
        :pswitch_39
        :pswitch_42
        :pswitch_4b
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 207
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/googlenav/common/j;->a(Z)V

    .line 385
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/h;)V
    .registers 3
    .parameter

    .prologue
    .line 342
    sget-boolean v0, Lcom/google/googlenav/common/j;->c:Z

    if-eqz v0, :cond_11

    .line 343
    invoke-static {}, Lcom/google/googlenav/common/j;->e()V

    .line 344
    sget-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_11
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 174
    if-nez p1, :cond_f

    .line 175
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 200
    :goto_e
    return-void

    .line 179
    :cond_f
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 184
    :try_start_19
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_33

    .line 185
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 196
    :goto_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2d} :catch_2e

    goto :goto_e

    .line 197
    :catch_2e
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 186
    :cond_33
    :try_start_33
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3d

    .line 187
    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_26

    .line 188
    :cond_3d
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_4b

    .line 189
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_26

    .line 190
    :cond_4b
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_59

    .line 191
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_26

    .line 193
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_80} :catch_2e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method private static a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 400
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/common/j;->b:[B

    .line 404
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz p0, :cond_30

    const-string v0, "LowOnMemory"

    :goto_9
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/google/googlenav/common/j;->e()V

    .line 409
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    sget-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 410
    sget-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 411
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/h;

    .line 414
    if-eqz v0, :cond_2c

    .line 415
    invoke-interface {v0, p0}, Lcom/google/googlenav/common/h;->a(Z)V

    .line 409
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 404
    :cond_30
    const-string v0, "OutOfMemory"

    goto :goto_9

    .line 420
    :cond_33
    invoke-static {}, Lcom/google/googlenav/common/j;->c()V

    .line 421
    return-void
.end method

.method public static b(Ljava/lang/String;J)J
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 238
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :cond_d
    return-wide p1
.end method

.method public static b(Ljava/lang/String;)Ljava/io/DataInput;
    .registers 4
    .parameter

    .prologue
    .line 291
    invoke-static {}, Lcom/google/googlenav/common/j;->d()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v1

    .line 293
    if-nez v1, :cond_c

    .line 294
    const/4 v0, 0x0

    .line 297
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_b
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 499
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 501
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 503
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 507
    :goto_29
    return-object v0

    .line 504
    :catch_2a
    move-exception v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p1

    .line 507
    goto :goto_29
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/common/j;->a(Z)V

    .line 396
    return-void
.end method

.method public static b(Lcom/google/googlenav/common/h;)V
    .registers 4
    .parameter

    .prologue
    .line 353
    sget-boolean v0, Lcom/google/googlenav/common/j;->c:Z

    if-eqz v0, :cond_12

    .line 354
    invoke-static {}, Lcom/google/googlenav/common/j;->e()V

    .line 355
    sget-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 357
    :cond_12
    return-void
.end method

.method public static b(Ljava/lang/String;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_d
    return p1
.end method

.method private static c()V
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/google/googlenav/common/j;->b:[B

    if-nez v0, :cond_b

    .line 103
    const v0, 0x8000

    :try_start_7
    new-array v0, v0, [B

    sput-object v0, Lcom/google/googlenav/common/j;->b:[B
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_b} :catch_c

    .line 108
    :cond_b
    :goto_b
    return-void

    .line 104
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public static c(Lcom/google/googlenav/common/h;)V
    .registers 3
    .parameter

    .prologue
    .line 366
    invoke-static {}, Lcom/google/googlenav/common/j;->e()V

    .line 368
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    sget-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 369
    sget-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 370
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_21

    .line 371
    sget-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 375
    :cond_20
    return-void

    .line 368
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method private static d()Lcom/google/googlenav/common/io/j;
    .registers 1

    .prologue
    .line 143
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    return-object v0
.end method

.method private static e()V
    .registers 6

    .prologue
    .line 315
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    .line 316
    sget-wide v0, Lcom/google/googlenav/common/j;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1e

    sget-wide v0, Lcom/google/googlenav/common/j;->e:J

    sub-long v0, v2, v0

    sget-wide v4, Lcom/google/googlenav/common/j;->d:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_42

    .line 319
    :cond_1e
    sget-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_27
    if-ltz v1, :cond_40

    .line 320
    sget-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 321
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 322
    sget-object v0, Lcom/google/googlenav/common/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 319
    :cond_3c
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_27

    .line 325
    :cond_40
    sput-wide v2, Lcom/google/googlenav/common/j;->e:J

    .line 327
    :cond_42
    return-void
.end method
