.class public final enum Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;
.super Ljava/lang/Enum;
.source "DictionaryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

.field public static final enum CONTAINER:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

.field public static final enum EXAMPLE:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

.field public static final enum HEADWORD:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

.field public static final enum MEANING:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

.field public static final enum RELATED:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

.field public static final enum UNKNOWN:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;",
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

    .line 187
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    const-string v1, "HEADWORD"

    const-string v2, "headword"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->HEADWORD:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    .line 188
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    const-string v1, "MEANING"

    const-string v2, "meaning"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->MEANING:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    .line 189
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    const-string v1, "EXAMPLE"

    const-string v2, "example"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->EXAMPLE:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    .line 190
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    const-string v1, "CONTAINER"

    const-string v2, "container"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->CONTAINER:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    .line 191
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    const-string v1, "RELATED"

    const-string v2, "related"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->RELATED:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    .line 192
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->UNKNOWN:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    .line 186
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->HEADWORD:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->MEANING:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->EXAMPLE:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->CONTAINER:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->RELATED:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->UNKNOWN:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->$VALUES:[Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->lookup:Ljava/util/Map;

    .line 197
    const-class v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

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

    check-cast v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    .line 198
    invoke-virtual {v0}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_76

    .line 200
    sget-object v2, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 203
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
    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 208
    iput-object p3, p0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->lookupText:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;
    .registers 5
    .parameter "lookupText"

    .prologue
    .line 216
    sget-object v1, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->lookup:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    .line 217
    .local v0, found:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;
    if-eqz v0, :cond_b

    .line 223
    .end local v0           #found:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;
    :goto_a
    return-object v0

    .line 220
    .restart local v0       #found:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;
    :cond_b
    const-string v1, "DictionaryData"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 221
    const-string v1, "DictionaryData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown entry type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2c
    sget-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->UNKNOWN:Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;
    .registers 2
    .parameter

    .prologue
    .line 186
    const-class v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;
    .registers 1

    .prologue
    .line 186
    sget-object v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->$VALUES:[Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryEntry$EntryType;->lookupText:Ljava/lang/String;

    return-object v0
.end method
