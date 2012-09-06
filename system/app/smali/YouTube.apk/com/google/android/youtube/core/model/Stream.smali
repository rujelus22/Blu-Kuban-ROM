.class public Lcom/google/android/youtube/core/model/Stream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FORMAT_100_OVER_HTTP:I = 0x18

.field public static final FORMAT_101_OVER_HTTP:I = 0x19

.field public static final FORMAT_102_OVER_HTTP:I = 0x1a

.field public static final FORMAT_113_OVER_HTTP:I = 0x10

.field public static final FORMAT_114_OVER_HTTP:I = 0xf

.field public static final FORMAT_119_OVER_HTTP:I = 0x14

.field public static final FORMAT_17_OVER_HTTP:I = 0x2

.field public static final FORMAT_18_OVER_HTTP:I = 0x3

.field public static final FORMAT_22_OVER_HTTP:I = 0x8

.field public static final FORMAT_36_OVER_HTTP:I = 0x9

.field public static final FORMAT_37_OVER_HTTP:I = 0x1e

.field public static final FORMAT_62_OVER_HTTP:I = 0xe

.field public static final FORMAT_64_OVER_HTTP:I = 0x1f

.field public static final FORMAT_80_OVER_HTTP:I = 0xb

.field public static final FORMAT_81_OVER_HTTP:I = 0xc

.field public static final FORMAT_82_OVER_HTTP:I = 0x15

.field public static final FORMAT_83_OVER_HTTP:I = 0x16

.field public static final FORMAT_84_OVER_HTTP:I = 0x17

.field public static final FORMAT_88_OVER_HTTP:I = 0xd

.field public static final FORMAT_HLS:I = 0x1c

.field private static final STREAMS_3D:Ljava/util/Set;


# instance fields
.field public final gdataFormat:I

.field public final is3D:Z

.field public final isEncrypted:Z

.field public final isOffline:Z

.field public final mimeType:Ljava/lang/String;

.field public final quality:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public final sizeInBytes:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 134
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 192
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 196
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    .line 197
    const-string v0, "video/wvm"

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isEncrypted:Z

    .line 198
    sget-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    iget v1, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 181
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 185
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    .line 186
    const-string v0, "video/wvm"

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isEncrypted:Z

    .line 187
    sget-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    iget v1, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 170
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 171
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    .line 172
    iput p4, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 174
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    .line 175
    const-string v0, "video/wvm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isEncrypted:Z

    .line 176
    sget-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 158
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 159
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    .line 160
    iput p4, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    .line 161
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_44

    const/4 v0, 0x1

    :goto_24
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    .line 162
    iput-wide p5, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 163
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    .line 164
    const-string v0, "video/wvm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isEncrypted:Z

    .line 165
    sget-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    .line 166
    return-void

    .line 161
    :cond_44
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public static getFirstAvailableFormat(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 325
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 326
    if-eqz v0, :cond_4

    .line 330
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 253
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;
    .registers 4

    .prologue
    .line 240
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Stream$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->quality(Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes(J)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat(I)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 214
    if-ne p0, p1, :cond_4

    .line 215
    const/4 v0, 0x1

    .line 221
    :goto_3
    return v0

    .line 217
    :cond_4
    instance-of v0, p1, Lcom/google/android/youtube/core/model/Stream;

    if-nez v0, :cond_a

    .line 218
    const/4 v0, 0x0

    goto :goto_3

    .line 220
    :cond_a
    check-cast p1, Lcom/google/android/youtube/core/model/Stream;

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHD()Z
    .registers 3

    .prologue
    .line 202
    sget-object v0, Lcom/google/android/youtube/core/model/j;->a:[I

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 209
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 207
    :pswitch_f
    const/4 v0, 0x1

    goto :goto_e

    .line 202
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
