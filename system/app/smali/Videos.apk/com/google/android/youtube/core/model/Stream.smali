.class public Lcom/google/android/youtube/core/model/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Stream$Builder;,
        Lcom/google/android/youtube/core/model/Stream$Quality;
    }
.end annotation


# static fields
.field private static final STREAMS_3D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


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
    .local v0, streams3D:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
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

    move-result-object v1

    sput-object v1, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->isFileUri(Landroid/net/Uri;)Z

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
    .parameter "uri"
    .parameter "quality"

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 172
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->isFileUri(Landroid/net/Uri;)Z

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
    .parameter "uri"
    .parameter "quality"
    .parameter "mimeType"
    .parameter "gdataFormat"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 161
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->isFileUri(Landroid/net/Uri;)Z

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
    .parameter "uri"
    .parameter "quality"
    .parameter "mimeType"
    .parameter "gdataFormat"
    .parameter "sizeInBytes"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 149
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 150
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 153
    iput-wide p5, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 154
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->isFileUri(Landroid/net/Uri;)Z

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

.method public static getFirstAvailableFormat(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;)",
            "Lcom/google/android/youtube/core/model/Stream;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, preferredStreamFormats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p1, streams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 305
    .local v0, i:Ljava/lang/Integer;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Stream;

    .line 306
    .local v2, stream:Lcom/google/android/youtube/core/model/Stream;
    if-eqz v2, :cond_4

    .line 310
    .end local v0           #i:Ljava/lang/Integer;
    .end local v2           #stream:Lcom/google/android/youtube/core/model/Stream;
    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;
    .registers 4

    .prologue
    .line 220
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
    .registers 5
    .parameter "o"

    .prologue
    .line 194
    if-ne p0, p1, :cond_4

    .line 195
    const/4 v1, 0x1

    .line 201
    :goto_3
    return v1

    .line 197
    :cond_4
    instance-of v1, p1, Lcom/google/android/youtube/core/model/Stream;

    if-nez v1, :cond_a

    .line 198
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    move-object v0, p1

    .line 200
    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 201
    .local v0, other:Lcom/google/android/youtube/core/model/Stream;
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 211
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
