.class Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;
.super Ljava/lang/Object;
.source "ProviderPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/preference/ProviderPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferencesEditor"
.end annotation


# instance fields
.field private final mContentValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/preference/ProviderPreferences;)V
    .registers 3
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->mContentValuesList:Ljava/util/List;

    .line 244
    return-void
.end method

.method private record(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 247
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 248
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->mContentValuesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 5

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->mContentValuesList:Ljava/util/List;

    #calls: Lcom/google/android/apps/reader/preference/ProviderPreferences;->newContentValuesArray(Ljava/util/List;)[Landroid/content/ContentValues;
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->access$200(Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->mContentValuesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 282
    new-instance v1, Lcom/google/android/apps/reader/preference/ProviderPreferences$ApplyTask;

    iget-object v2, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/preference/ProviderPreferences$ApplyTask;-><init>(Lcom/google/android/apps/reader/preference/ProviderPreferences;Lcom/google/android/apps/reader/preference/ProviderPreferences$1;)V

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/preference/ProviderPreferences$ApplyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 283
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public commit()Z
    .registers 4

    .prologue
    .line 271
    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->mContentValuesList:Ljava/util/List;

    #calls: Lcom/google/android/apps/reader/preference/ProviderPreferences;->newContentValuesArray(Ljava/util/List;)[Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->access$200(Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v0

    .line 272
    .local v0, values:[Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->mContentValuesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 273
    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    #getter for: Lcom/google/android/apps/reader/preference/ProviderPreferences;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->access$100(Lcom/google/android/apps/reader/preference/ProviderPreferences;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    #getter for: Lcom/google/android/apps/reader/preference/ProviderPreferences;->mContentUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->access$000(Lcom/google/android/apps/reader/preference/ProviderPreferences;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 289
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 297
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 305
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 313
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/preference/ProviderPreferences$PreferencesEditor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 329
    .local p2, value:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .parameter "key"

    .prologue
    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
