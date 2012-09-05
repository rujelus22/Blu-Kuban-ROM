.class synthetic Lcom/cooliris/media/HudLayer$60;
.super Ljava/lang/Object;
.source "HudLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/HudLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cooliris$media$HudLayer$ShareType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1766
    invoke-static {}, Lcom/cooliris/media/HudLayer$ShareType;->values()[Lcom/cooliris/media/HudLayer$ShareType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    :try_start_9
    sget-object v0, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_DEFAULT:Lcom/cooliris/media/HudLayer$ShareType;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_63

    :goto_14
    :try_start_14
    sget-object v0, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_SEND:Lcom/cooliris/media/HudLayer$ShareType;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_61

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_PLAY:Lcom/cooliris/media/HudLayer$ShareType;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5f

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_SEND_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_5d

    :goto_35
    :try_start_35
    sget-object v0, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->MULTI_SHARE_SEND_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_5b

    :goto_40
    :try_start_40
    sget-object v0, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_PLAY_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_59

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/cooliris/media/HudLayer$60;->$SwitchMap$com$cooliris$media$HudLayer$ShareType:[I

    sget-object v1, Lcom/cooliris/media/HudLayer$ShareType;->SHARE_DIALOG:Lcom/cooliris/media/HudLayer$ShareType;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer$ShareType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_57

    :goto_56
    return-void

    :catch_57
    move-exception v0

    goto :goto_56

    :catch_59
    move-exception v0

    goto :goto_4b

    :catch_5b
    move-exception v0

    goto :goto_40

    :catch_5d
    move-exception v0

    goto :goto_35

    :catch_5f
    move-exception v0

    goto :goto_2a

    :catch_61
    move-exception v0

    goto :goto_1f

    :catch_63
    move-exception v0

    goto :goto_14
.end method
