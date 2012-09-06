.class Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;
.super Ljava/lang/Object;
.source "BinaryDictionaryGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/BinaryDictionaryGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictPackSettings"
.end annotation


# instance fields
.field final mDictPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    .line 179
    .local v0, dictPackContext:Landroid/content/Context;
    const v3, 0x7f0c0076

    :try_start_7
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, dictPackName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_16

    move-result-object v0

    .line 186
    .end local v1           #dictPackName:Ljava/lang/String;
    :goto_10
    if-nez v0, :cond_21

    const/4 v3, 0x0

    :goto_13
    iput-object v3, p0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->mDictPreferences:Landroid/content/SharedPreferences;

    .line 189
    return-void

    .line 181
    :catch_16
    move-exception v2

    .line 184
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not find a dictionary pack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 187
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_21
    const-string v3, "LatinImeDictPrefs"

    .line 188
    const/4 v4, 0x1

    .line 187
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    goto :goto_13
.end method


# virtual methods
.method public isWordListActive(Ljava/lang/String;)Z
    .registers 4
    .parameter "dictId"

    .prologue
    const/4 v0, 0x1

    .line 191
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->mDictPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_6

    .line 203
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->mDictPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_5
.end method
