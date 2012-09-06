.class public Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompat.java"


# static fields
.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field private static final IMPL:Landroid/support/v4/accessibilityservice/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 91
    new-instance v0, Landroid/support/v4/accessibilityservice/a;

    invoke-direct {v0}, Landroid/support/v4/accessibilityservice/a;-><init>()V

    sput-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/c;

    .line 95
    :goto_d
    return-void

    .line 93
    :cond_e
    new-instance v0, Landroid/support/v4/accessibilityservice/b;

    invoke-direct {v0}, Landroid/support/v4/accessibilityservice/b;-><init>()V

    sput-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/c;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :goto_b
    if-lez p0, :cond_43

    .line 192
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int v1, v3, v1

    .line 193
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr p0, v2

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v3, :cond_21

    .line 195
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_21
    sparse-switch v1, :sswitch_data_4e

    goto :goto_b

    .line 208
    :sswitch_25
    const-string v1, "FEEDBACK_SPOKEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 199
    :sswitch_2b
    const-string v1, "FEEDBACK_AUDIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 202
    :sswitch_31
    const-string v1, "FEEDBACK_HAPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 205
    :sswitch_37
    const-string v1, "FEEDBACK_GENERIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 211
    :sswitch_3d
    const-string v1, "FEEDBACK_VISUAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 215
    :cond_43
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    nop

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_31
        0x4 -> :sswitch_2b
        0x8 -> :sswitch_3d
        0x10 -> :sswitch_37
    .end sparse-switch
.end method

.method public static flagToString(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 228
    packed-switch p0, :pswitch_data_8

    .line 232
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 230
    :pswitch_5
    const-string v0, "DEFAULT"

    goto :goto_4

    .line 228
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public static getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2
    .parameter

    .prologue
    .line 164
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/c;

    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/c;->a(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public static getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 177
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/c;

    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/c;->b(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 126
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/c;

    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/c;->c(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .parameter

    .prologue
    .line 138
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/c;

    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/c;->d(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 151
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/c;

    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/c;->e(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
