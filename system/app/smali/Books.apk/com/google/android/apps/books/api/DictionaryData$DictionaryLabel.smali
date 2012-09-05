.class public Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;
.super Ljava/lang/Object;
.source "DictionaryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/api/DictionaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DictionaryLabel"
.end annotation


# instance fields
.field public labelText:Ljava/lang/String;

.field public labelTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    return-void
.end method

.method public static parseDictionaryLabel(Lorg/json/JSONObject;)Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;
    .registers 3
    .parameter "labelJson"

    .prologue
    .line 517
    new-instance v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;

    invoke-direct {v0}, Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;-><init>()V

    .line 518
    .local v0, dictLabel:Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;->labelTitle:Ljava/lang/String;

    .line 519
    const-string v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/books/api/DictionaryData$DictionaryLabel;->labelText:Ljava/lang/String;

    .line 520
    return-object v0
.end method
