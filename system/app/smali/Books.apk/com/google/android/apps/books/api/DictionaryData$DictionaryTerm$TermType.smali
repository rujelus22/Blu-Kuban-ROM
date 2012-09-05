.class final enum Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;
.super Ljava/lang/Enum;
.source "DictionaryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TermType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

.field public static final enum IMAGE:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

.field public static final enum PHONETIC:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

.field public static final enum SOUND:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

.field public static final enum TEXT:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

.field public static final enum UNKNOWN:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

.field public static final enum URL:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lookupText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 394
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    const-string v1, "TEXT"

    const-string v2, "text"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->TEXT:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    .line 395
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    const-string v1, "PHONETIC"

    const-string v2, "phonetic"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->PHONETIC:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    .line 396
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    const-string v1, "SOUND"

    const-string v2, "sound"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->SOUND:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    .line 397
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    const-string v1, "URL"

    const-string v2, "url"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->URL:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    .line 398
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    const-string v1, "IMAGE"

    const-string v2, "image"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->IMAGE:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    .line 399
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->UNKNOWN:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    .line 393
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->TEXT:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->PHONETIC:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->SOUND:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->URL:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->IMAGE:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->UNKNOWN:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->$VALUES:[Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->lookup:Ljava/util/Map;

    .line 404
    const-class v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_76
    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    .line 405
    invoke-virtual {v0}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 406
    if-eqz v2, :cond_76

    .line 407
    sget-object v2, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 410
    :cond_92
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "lookupText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 414
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 415
    iput-object p3, p0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->lookupText:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;
    .registers 5
    .parameter "lookupText"

    .prologue
    .line 423
    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->lookup:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    .line 424
    .local v0, found:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;
    if-eqz v0, :cond_b

    .line 430
    .end local v0           #found:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;
    :goto_a
    return-object v0

    .line 427
    .restart local v0       #found:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;
    :cond_b
    const-string v1, "DictionaryData"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 428
    const-string v1, "DictionaryData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown term type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_2c
    sget-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->UNKNOWN:Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;
    .registers 2
    .parameter

    .prologue
    .line 393
    const-class v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;
    .registers 1

    .prologue
    .line 393
    sget-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->$VALUES:[Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryTerm$TermType;->lookupText:Ljava/lang/String;

    return-object v0
.end method
