.class public Lcom/google/android/maps/driveabout/power/PowerManagerPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/power/PowerManagerPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_16

    .line 39
    const-string v0, "UserPreference"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->b(Ljava/lang/String;)V

    .line 40
    const-string v0, "M"

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/power/PowerManagerPreference;->setChecked(Z)V

    .line 47
    :goto_15
    return-void

    .line 43
    :cond_16
    const-string v0, "UserPreference"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    .line 44
    const-string v0, "M"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/power/PowerManagerPreference;->setChecked(Z)V

    goto :goto_15
.end method
