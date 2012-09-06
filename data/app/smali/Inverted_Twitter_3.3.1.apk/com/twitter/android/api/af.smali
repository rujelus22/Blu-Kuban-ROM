.class public final Lcom/twitter/android/api/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:J

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/android/api/ag;

    invoke-direct {v0}, Lcom/twitter/android/api/ag;-><init>()V

    sput-object v0, Lcom/twitter/android/api/af;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_29

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/twitter/android/api/af;->b:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/api/af;->a:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2b

    :goto_1a
    iput-boolean v1, p0, Lcom/twitter/android/api/af;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/af;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/af;->e:I

    return-void

    :cond_29
    move v0, v2

    goto :goto_c

    :cond_2b
    move v1, v2

    goto :goto_1a
.end method

.method private constructor <init>(ZJZII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/twitter/android/api/af;->b:Z

    iput-wide p2, p0, Lcom/twitter/android/api/af;->a:J

    iput-boolean p4, p0, Lcom/twitter/android/api/af;->c:Z

    iput p5, p0, Lcom/twitter/android/api/af;->d:I

    iput p6, p0, Lcom/twitter/android/api/af;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/twitter/android/api/af;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    sget-object v1, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v1, p0}, Lorg/codehaus/jackson/a;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_15

    move-result-object v1

    :try_start_a
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v1}, Lcom/twitter/android/api/af;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/af;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_25

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_15
    move-exception v1

    move-object v1, v0

    :goto_17
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1b
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1f
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_23
    move-exception v0

    goto :goto_1f

    :catch_25
    move-exception v2

    goto :goto_17
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/af;
    .registers 15

    const-wide/16 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_8

    move-object v0, v8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move v6, v7

    move v5, v7

    move v4, v7

    move-wide v2, v9

    move v1, v7

    :goto_11
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v11, :cond_df

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/twitter/android/api/ah;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_e6

    :cond_24
    :goto_24
    :pswitch_24
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_11

    :pswitch_29
    const-string v0, "sleep_time"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_35
    if-eqz v0, :cond_24

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v11, :cond_24

    sget-object v11, Lcom/twitter/android/api/ah;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v11, v0

    packed-switch v0, :pswitch_data_f4

    :cond_46
    :goto_46
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_35

    :pswitch_4b
    const-string v0, "enabled"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Z

    move-result v4

    goto :goto_46

    :pswitch_5c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v11, "start_time"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6d

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v5

    goto :goto_46

    :cond_6d
    const-string v11, "end_time"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v6

    goto :goto_46

    :cond_7a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_24

    :catch_7e
    move-exception v0

    move-object v0, v8

    goto :goto_7

    :pswitch_81
    const-string v0, "trend_location"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-wide v2, v9

    :goto_8e
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v11, :cond_24

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v11, :cond_c3

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_9a
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v11, :cond_c3

    sget-object v11, Lcom/twitter/android/api/ah;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v11, v0

    packed-switch v0, :pswitch_data_fe

    :cond_a9
    :goto_a9
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_9a

    :pswitch_ae
    const-string v0, "woeid"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v2

    goto :goto_a9

    :pswitch_bf
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_a9

    :cond_c3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_8e

    :cond_c8
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_24

    :pswitch_cd
    const-string v12, "geo_enabled"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d7} :catch_7e

    if-ne v0, v1, :cond_dd

    const/4 v0, 0x1

    :goto_da
    move v1, v0

    goto/16 :goto_24

    :cond_dd
    move v0, v7

    goto :goto_da

    :cond_df
    new-instance v0, Lcom/twitter/android/api/af;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/api/af;-><init>(ZJZII)V

    goto/16 :goto_7

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_cd
        :pswitch_cd
        :pswitch_24
        :pswitch_29
        :pswitch_81
    .end packed-switch

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4b
        :pswitch_5c
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x3
        :pswitch_ae
        :pswitch_bf
        :pswitch_bf
    .end packed-switch
.end method

.method private static a(I)Ljava/lang/String;
    .registers 5

    const/16 v0, 0xa

    if-lt p0, v0, :cond_9

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "0%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/twitter/android/api/af;->d:I

    invoke-static {v0}, Lcom/twitter/android/api/af;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/twitter/android/api/af;->e:I

    invoke-static {v0}, Lcom/twitter/android/api/af;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/StringWriter;

    const/16 v1, 0x200

    invoke-direct {v2, v1}, Ljava/io/StringWriter;-><init>(I)V

    sget-object v1, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/a;->a(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_60
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_58

    move-result-object v1

    :try_start_e
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    const-string v0, "sleep_time"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonGenerator;->d(Ljava/lang/String;)V

    const-string v0, "start_time"

    iget v3, p0, Lcom/twitter/android/api/af;->d:I

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    const-string v0, "enabled"

    iget-boolean v3, p0, Lcom/twitter/android/api/af;->c:Z

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Z)V

    const-string v0, "end_time"

    iget v3, p0, Lcom/twitter/android/api/af;->e:I

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    const-string v0, "geo_enabled"

    iget-boolean v3, p0, Lcom/twitter/android/api/af;->b:Z

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Z)V

    const-string v0, "trend_location"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonGenerator;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    const-string v0, "woeid"

    iget-wide v3, p0, Lcom/twitter/android/api/af;->a:J

    invoke-virtual {v1, v0, v3, v4}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;J)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_e .. :try_end_53} :catchall_68
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_53} :catch_6a

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    :goto_57
    return-object v0

    :catch_58
    move-exception v1

    move-object v1, v0

    :goto_5a
    const-string v0, ""

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_57

    :catchall_60
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_64
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_68
    move-exception v0

    goto :goto_64

    :catch_6a
    move-exception v0

    goto :goto_5a
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/twitter/android/api/af;->b:Z

    if-eqz v0, :cond_21

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/api/af;->a:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/twitter/android/api/af;->c:Z

    if-eqz v0, :cond_23

    :goto_13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/api/af;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/api/af;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_21
    move v0, v2

    goto :goto_7

    :cond_23
    move v1, v2

    goto :goto_13
.end method
