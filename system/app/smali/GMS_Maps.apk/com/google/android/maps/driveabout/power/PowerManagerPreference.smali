.class public Lcom/google/android/maps/driveabout/power/PowerManagerPreference;
.super Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/power/PowerManagerPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "UserPreference"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->b(Ljava/lang/String;)V

    const-string v0, "M"

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/power/PowerManagerPreference;->setChecked(Z)V

    :goto_15
    return-void

    :cond_16
    const-string v0, "UserPreference"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    const-string v0, "M"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/power/PowerManagerPreference;->setChecked(Z)V

    goto :goto_15
.end method
