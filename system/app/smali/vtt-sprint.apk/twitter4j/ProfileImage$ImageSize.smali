.class public Ltwitter4j/ProfileImage$ImageSize;
.super Ljava/lang/Object;
.source "ProfileImage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/ProfileImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSize"
.end annotation


# static fields
.field private static final instances:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/ProfileImage$ImageSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2eabdece0fdb075bL


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/ProfileImage$ImageSize;->instances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    .line 48
    sget-object v0, Ltwitter4j/ProfileImage$ImageSize;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ltwitter4j/ProfileImage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ltwitter4j/ProfileImage$ImageSize;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static getInstance(Ljava/lang/String;)Ltwitter4j/ProfileImage$ImageSize;
    .registers 2
    .parameter "name"

    .prologue
    .line 78
    sget-object v0, Ltwitter4j/ProfileImage$ImageSize;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/ProfileImage$ImageSize;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    invoke-static {v0}, Ltwitter4j/ProfileImage$ImageSize;->getInstance(Ljava/lang/String;)Ltwitter4j/ProfileImage$ImageSize;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    if-ne p0, p1, :cond_5

    .line 64
    :cond_4
    :goto_4
    return v1

    .line 58
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 60
    check-cast v0, Ltwitter4j/ProfileImage$ImageSize;

    .line 62
    .local v0, imageSize:Ltwitter4j/ProfileImage$ImageSize;
    iget-object v3, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    return-object v0
.end method
