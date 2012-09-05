.class final Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;
.super Ljava/lang/Object;
.source "CarTTSTesterItem2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/test/CarTTSTesterItem2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemWrapper"
.end annotation


# instance fields
.field private final cache:Lcom/vlingo/client/core/tts/TTSFileCache;

.field private final file:Ljava/io/File;

.field private final filename:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/io/File;Lcom/vlingo/client/core/tts/TTSFileCache;)V
    .registers 4
    .parameter "file"
    .parameter "cache"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->file:Ljava/io/File;

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->filename:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->cache:Lcom/vlingo/client/core/tts/TTSFileCache;

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/vlingo/client/core/tts/TTSFileCache;Lcom/vlingo/client/car/test/CarTTSTesterItem2$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;-><init>(Ljava/io/File;Lcom/vlingo/client/core/tts/TTSFileCache;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->filename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;)Lcom/vlingo/client/core/tts/TTSFileCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->cache:Lcom/vlingo/client/core/tts/TTSFileCache;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;->filename:Ljava/lang/String;

    return-object v0
.end method
