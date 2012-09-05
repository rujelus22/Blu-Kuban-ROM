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

.field public static final FORMAT_62_OVER_HTTP:I = 0xe

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
    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 125
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 183
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 187
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    .line 188
    const-string v0, "video/wvm"

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isEncrypted:Z

    .line 189
    sget-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    iget v1, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 172
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 176
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    .line 177
    const-string v0, "video/wvm"

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isEncrypted:Z

    .line 178
    sget-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    iget v1, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 161
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 162
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    .line 163
    iput p4, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 165
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    .line 166
    const-string v0, "video/wvm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isEncrypted:Z

    .line 167
    sget-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    .line 168
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
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 149
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 150
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    .line 151
    iput p4, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    .line 152
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_44

    const/4 v0, 0x1

    :goto_24
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/k;->a(Z)V

    .line 153
    iput-wide p5, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 154
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    .line 155
    const-string v0, "video/wvm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isEncrypted:Z

    .line 156
    sget-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    .line 157
    return-void

    .line 152
    :cond_44
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public static varargs firstAvailable2DStream(Ljava/util/Set;Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/youtube/core/model/Stream;->firstAvailableStream(Ljava/util/Set;ZLjava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs firstAvailable3DStream(Ljava/util/Set;Ljava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/youtube/core/model/Stream;->firstAvailableStream(Ljava/util/Set;ZLjava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    return-object v0
.end method

.method private static varargs firstAvailableStream(Ljava/util/Set;ZLjava/util/Set;[Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    array-length v2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_12

    aget-object v0, p3, v1

    .line 347
    invoke-static {p0, v0, p1, p2}, Lcom/google/android/youtube/core/model/Stream;->getMatchingStream(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;ZLjava/util/Set;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_e

    .line 352
    :goto_d
    return-object v0

    .line 346
    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 352
    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static getFirstAvailableFormat(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 315
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 316
    if-eqz v0, :cond_4

    .line 320
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getMatchingStream(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;ZLjava/util/Set;)Lcom/google/android/youtube/core/model/Stream;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 331
    iget-boolean v2, v0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    if-ne v2, p2, :cond_4

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v2, p1, :cond_4

    if-eqz p3, :cond_22

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    :cond_22
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 243
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;
    .registers 4

    .prologue
    .line 230
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
    .line 204
    if-ne p0, p1, :cond_4

    .line 205
    const/4 v0, 0x1

    .line 211
    :goto_3
    return v0

    .line 207
    :cond_4
    instance-of v0, p1, Lcom/google/android/youtube/core/model/Stream;

    if-nez v0, :cond_a

    .line 208
    const/4 v0, 0x0

    goto :goto_3

    .line 210
    :cond_a
    check-cast p1, Lcom/google/android/youtube/core/model/Stream;

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHD()Z
    .registers 3

    .prologue
    .line 193
    sget-object v0, Lcom/google/android/youtube/core/model/k;->a:[I

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 199
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 197
    :pswitch_f
    const/4 v0, 0x1

    goto :goto_e

    .line 193
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
