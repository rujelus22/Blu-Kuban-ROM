.class public final Lcom/google/android/youtube/googlemobile/common/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Vector;

.field private static b:[B

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/i;->a:Ljava/util/Vector;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/youtube/googlemobile/common/i;->c:Z

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/i;->b:[B

    if-eqz v0, :cond_17

    invoke-static {}, Ljava/lang/System;->gc()V

    const/16 v0, 0x1000

    :try_start_13
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/i;->b:[B
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/b;->a()Lcom/google/android/youtube/googlemobile/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/common/b;->h()Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_13

    move-object v2, v0

    :goto_10
    if-nez v2, :cond_1f

    :goto_12
    return-object v0

    :cond_13
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v1

    goto :goto_10

    :cond_1f
    packed-switch p1, :pswitch_data_6e

    :try_start_22
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

    :catch_45
    move-exception v1

    goto :goto_12

    :pswitch_47
    new-instance v1, Ljava/lang/Boolean;

    invoke-interface {v2}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    goto :goto_12

    :pswitch_52
    new-instance v1, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    goto :goto_12

    :pswitch_5d
    new-instance v1, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_12

    :pswitch_68
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_6b} :catch_45

    move-result-object v0

    goto :goto_12

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_47
        :pswitch_52
        :pswitch_5d
        :pswitch_68
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;J)V
    .registers 4

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/googlemobile/common/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/b;->a()Lcom/google/android/youtube/googlemobile/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/b;->h()Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    move-result-object v0

    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z

    :goto_e
    return-void

    :cond_f
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_19
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_46

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeBoolean(Z)V

    :goto_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2d} :catch_2e

    goto :goto_e

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/youtube/googlemobile/common/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_46
    :try_start_46
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_50

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_26

    :cond_50
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_5e

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_26

    :cond_5e
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_6c

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_26

    :cond_6c
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
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_93} :catch_2e
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/google/android/youtube/googlemobile/common/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/String;J)J
    .registers 5

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/youtube/googlemobile/common/i;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_d
    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_d
.end method

.method public static b(Ljava/lang/String;Z)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/youtube/googlemobile/common/i;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method
