.class final enum Lcom/android/musicfx/ControlPanelEffect$Key;
.super Ljava/lang/Enum;
.source "ControlPanelEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicfx/ControlPanelEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/musicfx/ControlPanelEffect$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum avl_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_preset_opensl_es_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum eq_preset_user_band_level_default:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum lm_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum lm_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum te_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum te_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

.field public static final enum virt_type:Lcom/android/musicfx/ControlPanelEffect$Key;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "global_enabled"

    invoke-direct {v0, v1, v3}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "virt_enabled"

    invoke-direct {v0, v1, v4}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "virt_strength"

    invoke-direct {v0, v1, v5}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "virt_type"

    invoke-direct {v0, v1, v6}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_type:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "bb_enabled"

    invoke-direct {v0, v1, v7}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "bb_strength"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "te_enabled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->te_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "te_strength"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->te_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "avl_enabled"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->avl_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "lm_enabled"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->lm_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "lm_strength"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->lm_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_enabled"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_num_bands"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_level_range"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_center_freq"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_band_level"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_num_presets"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_preset_name"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_preset_user_band_level"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_preset_user_band_level_default"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level_default:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_preset_opensl_es_band_level"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_opensl_es_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_preset_ci_extreme_band_level"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "eq_current_preset"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "pr_enabled"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    const-string v1, "pr_current_preset"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    .line 61
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/android/musicfx/ControlPanelEffect$Key;

    sget-object v1, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_type:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->te_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->te_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->avl_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->lm_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->lm_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level_default:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_opensl_es_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_ci_extreme_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->$VALUES:[Lcom/android/musicfx/ControlPanelEffect$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/musicfx/ControlPanelEffect$Key;
    .registers 2
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/musicfx/ControlPanelEffect$Key;

    return-object v0
.end method

.method public static values()[Lcom/android/musicfx/ControlPanelEffect$Key;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect$Key;->$VALUES:[Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-virtual {v0}, [Lcom/android/musicfx/ControlPanelEffect$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/musicfx/ControlPanelEffect$Key;

    return-object v0
.end method
