.class Lcom/google/android/maps/driveabout/app/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/al;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;Lcom/google/android/maps/driveabout/app/al;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dd;->b:Lcom/google/android/maps/driveabout/app/SettingsActivity;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dd;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dd;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->h()V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
