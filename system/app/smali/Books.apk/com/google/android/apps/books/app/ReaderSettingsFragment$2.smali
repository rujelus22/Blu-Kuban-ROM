.class Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;
.super Ljava/lang/Object;
.source "ReaderSettingsFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$000(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$000(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onThemeChanged()V

    .line 184
    :cond_11
    return-void
.end method
