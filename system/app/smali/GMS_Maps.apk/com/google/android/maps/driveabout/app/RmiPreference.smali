.class public Lcom/google/android/maps/driveabout/app/RmiPreference;
.super Landroid/preference/CheckBoxPreference;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/android/maps/driveabout/app/am;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    const-string v0, "ShowRmiWarning"

    invoke-static {p0, v0, p1}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "OneButtonRmi"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "ShowRmiWarning"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

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

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->f(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_10

    const/4 v0, -0x1

    :goto_8
    return v0

    :pswitch_9
    const/16 v0, 0x17

    goto :goto_8

    :pswitch_c
    const/16 v0, 0x1b

    goto :goto_8

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->f(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    const-string v0, ""

    :goto_9
    return-object v0

    :pswitch_a
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_12
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method

.method private static f(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/16 v0, 0x1b

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/am;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->b:Lcom/google/android/maps/driveabout/app/am;

    return-void
.end method

.method protected onClick()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->b:Lcom/google/android/maps/driveabout/app/am;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->b:Lcom/google/android/maps/driveabout/app/am;

    new-instance v1, Lcom/google/android/maps/driveabout/app/df;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/df;-><init>(Lcom/google/android/maps/driveabout/app/RmiPreference;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/am;->b(Landroid/content/DialogInterface$OnClickListener;)V

    :goto_22
    return-void

    :cond_23
    const-string v0, "1"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setChecked(Z)V

    goto :goto_22

    :cond_2d
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setChecked(Z)V

    goto :goto_22
.end method
