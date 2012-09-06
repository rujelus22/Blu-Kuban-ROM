.class Lcom/google/android/apps/reader/preference/ProviderPreferences$ApplyTask;
.super Landroid/os/AsyncTask;
.source "ProviderPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/preference/ProviderPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/preference/ProviderPreferences;)V
    .registers 2
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$ApplyTask;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/preference/ProviderPreferences;Lcom/google/android/apps/reader/preference/ProviderPreferences$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/preference/ProviderPreferences$ApplyTask;-><init>(Lcom/google/android/apps/reader/preference/ProviderPreferences;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/Boolean;
    .registers 4
    .parameter "params"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$ApplyTask;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    #getter for: Lcom/google/android/apps/reader/preference/ProviderPreferences;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->access$100(Lcom/google/android/apps/reader/preference/ProviderPreferences;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$ApplyTask;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    #getter for: Lcom/google/android/apps/reader/preference/ProviderPreferences;->mContentUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->access$000(Lcom/google/android/apps/reader/preference/ProviderPreferences;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 231
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/preference/ProviderPreferences$ApplyTask;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
