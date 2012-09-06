.class final Lcom/google/android/youtube/app/honeycomb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;

.field private b:Landroid/preference/CheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/g;->a:Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/g;-><init>(Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/preference/CheckBoxPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/g;->b:Landroid/preference/CheckBoxPreference;

    .line 367
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/g;->a:Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/g;->b:Landroid/preference/CheckBoxPreference;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;->a(Lcom/google/android/youtube/app/honeycomb/SettingsActivity$PrefetchPrefsFragment;Landroid/preference/CheckBoxPreference;)V

    .line 371
    return-void
.end method
