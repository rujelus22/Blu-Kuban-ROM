.class public final Lcom/google/common/StaticUtil;
.super Ljava/lang/Object;


# static fields
.field private static IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

.field private static REFERENCE_CLEANUP_TIME_OUT_MSEC:J

.field private static emergencyMemory:[B

.field private static final outOfMemoryHandlers:Ljava/util/Vector;

.field private static referenceCleanupTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/google/common/StaticUtil;->REFERENCE_CLEANUP_TIME_OUT_MSEC:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/common/StaticUtil;->referenceCleanupTime:J

    invoke-static {}, Lcom/google/common/StaticUtil;->allocateEmergencyMemory()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateEmergencyMemory()V
    .registers 1

    sget-object v0, Lcom/google/common/StaticUtil;->emergencyMemory:[B

    if-nez v0, :cond_b

    const v0, 0x8000

    :try_start_7
    new-array v0, v0, [B

    sput-object v0, Lcom/google/common/StaticUtil;->emergencyMemory:[B
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method private static getPersistentStore()Lcom/google/common/io/PersistentStore;
    .registers 1

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method public static readPreferenceAsBoolean(Ljava/lang/String;Z)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_d
    return p1
.end method

.method public static readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    .registers 4

    invoke-static {}, Lcom/google/common/StaticUtil;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_b
.end method

.method public static readPreferenceAsLong(Ljava/lang/String;J)J
    .registers 4

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :cond_d
    return-wide p1
.end method

.method private static readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v2

    if-nez v2, :cond_8

    :goto_7
    return-object v0

    :cond_8
    packed-switch p1, :pswitch_data_56

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

    :catch_2e
    move-exception v1

    goto :goto_7

    :pswitch_30
    new-instance v1, Ljava/lang/Boolean;

    invoke-interface {v2}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    goto :goto_7

    :pswitch_3b
    new-instance v1, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    goto :goto_7

    :pswitch_46
    new-instance v1, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_7

    :pswitch_51
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_54} :catch_2e

    move-result-object v0

    goto :goto_7

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_30
        :pswitch_3b
        :pswitch_46
        :pswitch_51
    .end packed-switch
.end method

.method public static savePreferenceAsBoolean(Ljava/lang/String;Z)V
    .registers 3

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/google/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static savePreferenceAsLong(Ljava/lang/String;J)V
    .registers 4

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0}, Lcom/google/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v0

    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

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

    invoke-interface {v0, p0, v1}, Lcom/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
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

    invoke-static {v1, v0}, Lcom/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

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
