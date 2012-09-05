.class Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;
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
    .line 195
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$000(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$000(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderSettingsFragment;->mTextSize:Lcom/google/android/apps/books/preference/TextZoomPreference;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$200(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/preference/TextZoomPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/books/preference/TextZoomPreference;->getTextZoom()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onTextZoomSettingChanged(F)V

    .line 201
    :cond_1d
    return-void
.end method
