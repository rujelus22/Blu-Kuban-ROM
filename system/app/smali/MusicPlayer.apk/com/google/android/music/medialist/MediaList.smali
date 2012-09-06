.class public abstract Lcom/google/android/music/medialist/MediaList;
.super Ljava/lang/Object;
.source "MediaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/medialist/MediaList$MediaCursor;,
        Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/MediaList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 637
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/medialist/MediaList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/music/dl/ContentIdentifier$Domain;)V
    .registers 10
    .parameter "domain"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const v5, 0x7fffffff

    iput v5, p0, Lcom/google/android/music/medialist/MediaList;->mFlags:I

    .line 103
    iput-object p1, p0, Lcom/google/android/music/medialist/MediaList;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, c:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 112
    .local v1, ctors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    array-length v5, v1

    if-ge v3, v5, :cond_66

    .line 113
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 114
    .local v4, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v5, v4

    if-eqz v5, :cond_27

    .line 117
    :try_start_1f
    const-string v6, "getArgs"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_27} :catch_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_27} :catch_48

    .line 112
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 118
    :catch_2a
    move-exception v2

    .line 119
    .local v2, e:Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must implement getArgs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 120
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_48
    move-exception v2

    .line 121
    .local v2, e:Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must implement getArgs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 126
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    .end local v4           #params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_66
    return-void
.end method

.method private static decodeLongsArg(Ljava/lang/String;)[J
    .registers 7
    .parameter "encoded"

    .prologue
    .line 677
    if-eqz p0, :cond_a

    const-string v4, "<null>"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 678
    :cond_a
    const/4 v2, 0x0

    .line 689
    :cond_b
    :goto_b
    return-object v2

    .line 679
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    .line 680
    const/4 v4, 0x0

    new-array v2, v4, [J

    goto :goto_b

    .line 682
    :cond_16
    const/16 v4, 0x3a

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, stringValues:[Ljava/lang/String;
    array-length v1, v3

    .line 684
    .local v1, length:I
    array-length v4, v3

    new-array v2, v4, [J

    .line 685
    .local v2, longs:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_25
    if-ge v0, v1, :cond_b

    .line 686
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_25
.end method

.method protected static encodeArg([J)Ljava/lang/String;
    .registers 2
    .parameter "longs"

    .prologue
    .line 666
    if-nez p0, :cond_5

    .line 667
    const-string v0, "<null>"

    .line 671
    :goto_4
    return-object v0

    .line 668
    :cond_5
    array-length v0, p0

    if-nez v0, :cond_b

    .line 669
    const-string v0, ""

    goto :goto_4

    .line 671
    :cond_b
    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/primitives/Longs;->join(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static thaw(Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList;
    .registers 15
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 137
    const/16 v0, 0x2c

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 138
    if-lez v8, :cond_34

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_f
    invoke-static {v0}, Lcom/google/android/music/medialist/MediaList;->thawClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 142
    invoke-virtual {v9}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;

    .line 143
    array-length v2, v0

    .line 147
    if-gez v8, :cond_36

    move-object v7, v3

    .line 154
    :goto_1d
    const/4 v1, 0x1

    if-ne v2, v1, :cond_45

    .line 155
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 180
    :cond_23
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 181
    array-length v6, v5

    .line 182
    if-nez v6, :cond_d1

    .line 184
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/MediaList;

    .line 225
    :goto_33
    return-object v0

    :cond_34
    move-object v0, p0

    .line 138
    goto :goto_f

    .line 150
    :cond_36
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string v5, ","

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_1d

    .line 158
    :cond_45
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v10

    .line 159
    if-nez v7, :cond_95

    move v6, v4

    .line 160
    :goto_4c
    array-length v11, v0

    move v5, v4

    move-object v2, v3

    :goto_4f
    if-ge v5, v11, :cond_a6

    aget-object v1, v0, v5

    .line 161
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    .line 162
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_98

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has multiple "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "constructors with the same number of parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8b} :catch_8b

    .line 222
    :catch_8b
    move-exception v0

    .line 223
    const-string v1, "MediaList"

    const-string v2, "Error thawing medialist"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 225
    goto :goto_33

    .line 159
    :cond_95
    :try_start_95
    array-length v1, v7

    move v6, v1

    goto :goto_4c

    .line 166
    :cond_98
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    if-ne v6, v12, :cond_193

    .line 160
    :goto_a1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v2, v1

    goto :goto_4f

    .line 173
    :cond_a6
    if-nez v2, :cond_23

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find a constructor for class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arguments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_d1
    if-gez v8, :cond_db

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no args found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_db
    array-length v0, v7

    if-eq v6, v0, :cond_104

    .line 191
    const-string v0, "MediaList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument count mismatch: got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 193
    goto/16 :goto_33

    .line 195
    :cond_104
    new-array v8, v6, [Ljava/lang/Object;

    move v1, v4

    .line 196
    :goto_107
    if-ge v1, v6, :cond_18b

    .line 198
    aget-object v0, v7, v1

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v4, "<null>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_118

    move-object v0, v3

    .line 202
    :cond_118
    aget-object v4, v5, v1

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v9, :cond_128

    .line 203
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v1

    .line 196
    :cond_124
    :goto_124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_107

    .line 204
    :cond_128
    aget-object v4, v5, v1

    const-class v9, Ljava/lang/String;

    if-ne v4, v9, :cond_131

    .line 205
    aput-object v0, v8, v1

    goto :goto_124

    .line 206
    :cond_131
    aget-object v4, v5, v1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v9, :cond_13e

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    goto :goto_124

    .line 208
    :cond_13e
    aget-object v4, v5, v1

    const-class v9, [J

    if-ne v4, v9, :cond_14b

    .line 209
    invoke-static {v0}, Lcom/google/android/music/medialist/MediaList;->decodeLongsArg(Ljava/lang/String;)[J

    move-result-object v0

    aput-object v0, v8, v1

    goto :goto_124

    .line 210
    :cond_14b
    aget-object v4, v5, v1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v9, :cond_158

    .line 211
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v1

    goto :goto_124

    .line 212
    :cond_158
    aget-object v4, v5, v1

    const-class v9, Landroid/net/Uri;

    if-ne v4, v9, :cond_169

    .line 213
    if-nez v0, :cond_164

    move-object v0, v3

    :goto_161
    aput-object v0, v8, v1

    goto :goto_124

    :cond_164
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_161

    .line 214
    :cond_169
    aget-object v4, v5, v1

    const-class v9, Lcom/google/android/music/medialist/SongData;

    if-ne v4, v9, :cond_17a

    .line 215
    if-nez v0, :cond_175

    move-object v0, v3

    :goto_172
    aput-object v0, v8, v1

    goto :goto_124

    :cond_175
    invoke-static {v0}, Lcom/google/android/music/medialist/SongData;->parseFromJson(Ljava/lang/String;)Lcom/google/android/music/medialist/SongData;

    move-result-object v0

    goto :goto_172

    .line 216
    :cond_17a
    aget-object v4, v5, v1

    const-class v9, Lcom/google/android/music/medialist/SongDataList;

    if-ne v4, v9, :cond_124

    .line 217
    if-nez v0, :cond_186

    move-object v0, v3

    :goto_183
    aput-object v0, v8, v1

    goto :goto_124

    :cond_186
    invoke-static {v0}, Lcom/google/android/music/medialist/SongDataList;->parseFromJson(Ljava/lang/String;)Lcom/google/android/music/medialist/SongDataList;

    move-result-object v0

    goto :goto_183

    .line 221
    :cond_18b
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/MediaList;
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_191} :catch_8b

    goto/16 :goto_33

    :cond_193
    move-object v1, v2

    goto/16 :goto_a1
.end method

.method static thawClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/android/music/medialist/MediaList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v3

    .line 243
    :goto_4
    return-object v3

    .line 237
    :catch_5
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "com.android.music."

    .line 239
    .local v2, oldPackagePrefix:Ljava/lang/String;
    const-string v3, "com.android.music."

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.google.android.music."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.android.music."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, newName:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_4

    .line 245
    .end local v1           #newName:Ljava/lang/String;
    :cond_32
    throw v0
.end method


# virtual methods
.method protected createAsyncCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/music/AsyncCursor;
    .registers 14
    .parameter "context"
    .parameter "cols"
    .parameter "filter"
    .parameter "isHighPriority"

    .prologue
    const/4 v4, 0x0

    .line 470
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/MediaList;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 471
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_8

    .line 474
    :goto_7
    return-object v4

    :cond_8
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    invoke-virtual {p0, v8, p3}, Lcom/google/android/music/medialist/MediaList;->filterUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v0

    goto :goto_7
.end method

.method protected createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 411
    new-instance v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v0, p2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected createSyncCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "context"
    .parameter "cols"
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    .line 450
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/MediaList;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    .line 451
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_8

    .line 454
    :goto_7
    return-object v3

    :cond_8
    invoke-virtual {p0, v6, p3}, Lcom/google/android/music/medialist/MediaList;->filterUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_7
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "writer"

    .prologue
    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList;->getArgs()[Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, args:[Ljava/lang/String;
    if-eqz v1, :cond_27

    array-length v3, v1

    if-nez v3, :cond_28

    .line 307
    :cond_27
    return-void

    .line 296
    :cond_28
    const/4 v2, 0x0

    .local v2, i:I
    :goto_29
    array-length v3, v1

    if-ge v2, v3, :cond_27

    .line 297
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 299
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    aget-object v0, v1, v2

    .line 301
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_45

    .line 302
    const-string v3, "    <null>"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 304
    :cond_45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_42
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 321
    if-eqz p1, :cond_6

    instance-of v3, p1, Lcom/google/android/music/medialist/MediaList;

    if-nez v3, :cond_8

    .line 322
    :cond_6
    const/4 v3, 0x0

    .line 330
    :goto_7
    return v3

    .line 324
    :cond_8
    if-ne p1, p0, :cond_c

    .line 325
    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    move-object v2, p1

    .line 327
    check-cast v2, Lcom/google/android/music/medialist/MediaList;

    .line 328
    .local v2, other:Lcom/google/android/music/medialist/MediaList;
    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList;->freeze()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, ice1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList;->freeze()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, ice2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7
.end method

.method protected filterUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "uri"
    .parameter "filterWords"

    .prologue
    .line 600
    return-object p1
.end method

.method public final freeze()Ljava/lang/String;
    .registers 6

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList;->getArgs()[Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, args:[Ljava/lang/String;
    if-eqz v1, :cond_9

    array-length v4, v1

    if-nez v4, :cond_12

    .line 274
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 287
    :goto_11
    return-object v4

    .line 276
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const/4 v3, 0x0

    .local v3, i:I
    :goto_23
    array-length v4, v1

    if-ge v3, v4, :cond_3b

    .line 279
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    aget-object v0, v1, v3

    .line 281
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_31

    .line 282
    const-string v0, "<null>"

    .line 284
    :cond_31
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 287
    .end local v0           #arg:Ljava/lang/String;
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_11
.end method

.method public getAlbumId(Landroid/content/Context;)J
    .registers 4
    .parameter "context"

    .prologue
    .line 393
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public abstract getContentUri(Landroid/content/Context;)Landroid/net/Uri;
.end method

.method public final getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 5
    .parameter "context"
    .parameter "cols"
    .parameter "filter"

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/music/medialist/MediaList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    return-object v0
.end method

.method public final getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 7
    .parameter "context"
    .parameter "cols"
    .parameter "filter"
    .parameter "isHighPriority"

    .prologue
    .line 427
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/music/medialist/MediaList;->createAsyncCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/music/AsyncCursor;

    move-result-object v0

    .line 428
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_a

    .line 429
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/medialist/MediaList;->createSyncCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 432
    :cond_a
    if-eqz v0, :cond_11

    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/medialist/MediaList;->createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    .line 435
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/music/medialist/MediaList;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lcom/google/android/music/medialist/MediaList;->mFlags:I

    return v0
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/MediaList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSongCursor(Landroid/content/Context;Lcom/google/android/music/dl/ContentIdentifier;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "context"
    .parameter "songId"
    .parameter "cols"

    .prologue
    const/4 v3, 0x0

    .line 504
    const/4 v6, 0x0

    .line 505
    .local v6, cursor:Landroid/database/Cursor;
    if-nez p2, :cond_5

    .line 524
    :goto_4
    return-object v3

    .line 508
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 513
    invoke-virtual {p2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$XAudio;->getRemoteAudio(J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 516
    if-eqz v6, :cond_24

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_37

    .line 518
    :cond_24
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 519
    invoke-virtual {p2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioUri(J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_37
    move-object v3, v6

    .line 524
    goto :goto_4
.end method

.method public getStoreUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSyncMediaCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 6
    .parameter "context"
    .parameter "cols"
    .parameter "filter"

    .prologue
    .line 483
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/medialist/MediaList;->createSyncCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 484
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_8

    .line 485
    const/4 v1, 0x0

    .line 487
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/medialist/MediaList;->createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    goto :goto_7
.end method

.method public hasDifferentTrackArtists(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 662
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList;->freeze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDefaultDomain()Z
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/music/medialist/MediaList;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEditable()Z
    .registers 2

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public isFlagSet(I)Z
    .registers 3
    .parameter "flag"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList;->getFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSharedDomain()Z
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/music/medialist/MediaList;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->SHARED:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList;->getArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 644
    return-void
.end method
