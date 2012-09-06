.class public Lcom/google/android/maps/driveabout/app/RmiPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    const-string v0, "ShowRmiWarning"

    invoke-static {p0, v0, p1}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 66
    const-string v0, "OneButtonRmi"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    const-string v0, "ShowRmiWarning"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->f(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static d(Landroid/content/Context;)I
    .registers 2
    .parameter

    .prologue
    .line 89
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->f(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 95
    const/4 v0, -0x1

    :goto_8
    return v0

    .line 91
    :pswitch_9
    const/16 v0, 0x17

    goto :goto_8

    .line 93
    :pswitch_c
    const/16 v0, 0x1b

    goto :goto_8

    .line 89
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->f(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 109
    const-string v0, ""

    :goto_9
    return-object v0

    .line 105
    :pswitch_a
    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 107
    :pswitch_12
    const v0, 0x7f0d005f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 103
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method

.method private static f(Landroid/content/Context;)I
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 53
    const/4 v0, 0x1

    .line 57
    :goto_e
    return v0

    .line 54
    :cond_f
    const/16 v0, 0x1b

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 55
    const/4 v0, 0x2

    goto :goto_e

    .line 57
    :cond_19
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/al;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->b:Lcom/google/android/maps/driveabout/app/al;

    .line 47
    return-void
.end method

.method protected onClick()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->b:Lcom/google/android/maps/driveabout/app/al;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 122
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Landroid/content/Context;Z)V

    .line 123
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->b:Lcom/google/android/maps/driveabout/app/al;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cT;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cT;-><init>(Lcom/google/android/maps/driveabout/app/RmiPreference;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/al;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 137
    :goto_22
    return-void

    .line 131
    :cond_23
    const-string v0, "1"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setChecked(Z)V

    goto :goto_22

    .line 135
    :cond_2d
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setChecked(Z)V

    goto :goto_22
.end method
