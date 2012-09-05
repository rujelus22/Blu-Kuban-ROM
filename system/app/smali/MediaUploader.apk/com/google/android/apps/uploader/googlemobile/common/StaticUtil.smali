.class public final Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;
.super Ljava/lang/Object;


# static fields
.field private static final BOOLEAN_CLASS:I = 0x0

.field private static final EMERGENCY_MEMORY_SIZE:I = 0x1000

.field private static final INTEGER_CLASS:I = 0x1

.field private static IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z = false

.field private static final LONG_CLASS:I = 0x2

.field public static final RECORD_STORE_FULL:I = -0x2

.field public static final RECORD_STORE_WRITE_FAILED:I = -0x1

.field private static final STRING_CLASS:I = 0x3

.field private static emergencyMemory:[B

.field private static final outOfMemoryHandlers:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->allocateEmergencyMemory()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateEmergencyMemory()V
    .registers 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->emergencyMemory:[B

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/lang/System;->gc()V

    const/16 v0, 0x1000

    :try_start_9
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->emergencyMemory:[B
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public static deleteRecordStore(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;
    .registers 1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemPropertyAsInt(Ljava/lang/String;I)I
    .registers 3

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    :try_start_6
    invoke-static {v0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static handleOutOfMemory()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->emergencyMemory:[B

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OutOfMemory"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/OutOfMemoryHandler;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/OutOfMemoryHandler;->handleOutOfMemory()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_23
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->allocateEmergencyMemory()V

    return-void
.end method

.method public static isEmergencyMemoryAvailable()Z
    .registers 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->emergencyMemory:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static loadPropertiesFile(Ljava/lang/String;)Ljava/util/Hashtable;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2f

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_2c

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2f
    return-object v0
.end method

.method public static readBlockAsDataInput(Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;Ljava/lang/String;)Ljava/io/DataInput;
    .registers 5

    invoke-interface {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_7
.end method

.method public static readBlockAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    .registers 2

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->readBlockAsDataInput(Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized readOneRecordRms(Ljava/lang/String;)[B
    .registers 3

    const-class v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized readOneRecordRmsAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    .registers 3

    const-class v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->readBlockAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static readPreference(Ljava/lang/String;)[B
    .registers 2

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readPreferenceAsBoolean(Ljava/lang/String;Z)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    move v0, p1

    goto :goto_d
.end method

.method public static readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    .registers 4

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_b
.end method

.method public static readPreferenceAsInt(Ljava/lang/String;I)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_d
    return v0

    :cond_e
    move v0, p1

    goto :goto_d
.end method

.method public static readPreferenceAsLong(Ljava/lang/String;J)J
    .registers 5

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_d
    return-wide v0

    :cond_e
    move-wide v0, p1

    goto :goto_d
.end method

.method private static readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 7

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v0, v4

    :goto_8
    return-object v0

    :cond_9
    packed-switch p1, :pswitch_data_58

    :try_start_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2f
    move-exception v0

    move-object v0, v4

    goto :goto_8

    :pswitch_32
    new-instance v1, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    goto :goto_8

    :pswitch_3d
    new-instance v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    goto :goto_8

    :pswitch_48
    new-instance v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_8

    :pswitch_53
    invoke-interface {v0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_56} :catch_2f

    move-result-object v0

    goto :goto_8

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_32
        :pswitch_3d
        :pswitch_48
        :pswitch_53
    .end packed-switch
.end method

.method public static readPreferenceAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static registerOutOfMemoryHandler(Lcom/google/android/apps/uploader/googlemobile/common/OutOfMemoryHandler;)V
    .registers 2

    sget-boolean v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public static removeOutOfMemoryHandler(Lcom/google/android/apps/uploader/googlemobile/common/OutOfMemoryHandler;)V
    .registers 2

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public static savePreferenceAsBoolean(Ljava/lang/String;Z)V
    .registers 3

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static savePreferenceAsInt(Ljava/lang/String;I)V
    .registers 3

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static savePreferenceAsLong(Ljava/lang/String;J)V
    .registers 4

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v0

    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

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

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
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

    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

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

.method public static savePreferenceAsString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static savePreferences()V
    .registers 1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->savePreferences()V

    return-void
.end method

.method public static setPreference(Ljava/lang/String;[B)V
    .registers 3

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/StaticUtil;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    return-void
.end method

.method public static setRegisterOutOfMemoryHandlerForTest(Z)V
    .registers 1

    return-void
.end method

.method public static simulateLatency(Ljava/lang/String;J)V
    .registers 3

    return-void
.end method
