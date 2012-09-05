.class public Lcom/google/android/apps/books/common/Position;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/books/common/Position;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Position"


# instance fields
.field private final mPosition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/apps/books/common/Position$1;

    invoke-direct {v0}, Lcom/google/android/apps/books/common/Position$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/common/Position;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, position:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/common/Position;->isNormalized(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 63
    iput-object v0, p0, Lcom/google/android/apps/books/common/Position;->mPosition:Ljava/lang/String;

    .line 70
    :goto_f
    return-void

    .line 65
    :cond_10
    const-string v1, "Position"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 66
    const-string v1, "Position"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating position from unnormalized parcel string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_31
    invoke-static {v0}, Lcom/google/android/apps/books/common/Position;->addNormalisationPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/common/Position;->mPosition:Ljava/lang/String;

    goto :goto_f
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "position"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/android/apps/books/common/Position;->isNormalized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 51
    iput-object p1, p0, Lcom/google/android/apps/books/common/Position;->mPosition:Ljava/lang/String;

    .line 58
    :goto_b
    return-void

    .line 53
    :cond_c
    const-string v0, "Position"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 54
    const-string v0, "Position"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating position from unnormalized string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2d
    invoke-static {p1}, Lcom/google/android/apps/books/common/Position;->addNormalisationPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/common/Position;->mPosition:Ljava/lang/String;

    goto :goto_b
.end method

.method private static addNormalisationPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBS."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createPositionOrNull(Ljava/lang/String;)Lcom/google/android/apps/books/common/Position;
    .registers 2
    .parameter "position"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 74
    new-instance v0, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    .line 76
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static extractPageId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "position"

    .prologue
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing/empty position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkIsGraphic(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :cond_1d
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    if-lez v2, :cond_30

    .line 89
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, token:Ljava/lang/String;
    const-string v2, "GBS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 94
    .end local v0           #token:Ljava/lang/String;
    :goto_2f
    return-object v0

    :cond_30
    const-string v0, ""

    goto :goto_2f
.end method

.method private static isNormalized(Ljava/lang/String;)Z
    .registers 2
    .parameter "position"

    .prologue
    .line 37
    const-string v0, "GBS."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "position"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/apps/books/common/Position;->isNormalized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .end local p0
    :goto_6
    return-object p0

    .restart local p0
    :cond_7
    invoke-static {p0}, Lcom/google/android/apps/books/common/Position;->addNormalisationPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "other"

    .prologue
    .line 108
    instance-of v0, p1, Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_f

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/books/common/Position;->mPosition:Ljava/lang/String;

    check-cast p1, Lcom/google/android/apps/books/common/Position;

    .end local p1
    iget-object v1, p1, Lcom/google/android/apps/books/common/Position;->mPosition:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 111
    :goto_e
    return v0

    .restart local p1
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getPageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/books/common/Position;->mPosition:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/books/common/Position;->mPosition:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/books/common/Position;->mPosition:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/books/common/Position;->mPosition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return-void
.end method
