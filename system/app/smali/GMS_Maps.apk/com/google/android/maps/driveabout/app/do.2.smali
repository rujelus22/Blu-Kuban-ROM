.class Lcom/google/android/maps/driveabout/app/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/am;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/SettingsActivity;Lcom/google/android/maps/driveabout/app/am;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/do;->b:Lcom/google/android/maps/driveabout/app/SettingsActivity;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/do;->a:Lcom/google/android/maps/driveabout/app/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/do;->a:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->h()V

    const/4 v0, 0x1

    return v0
.end method
