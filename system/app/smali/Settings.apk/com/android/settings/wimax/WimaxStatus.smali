.class public Lcom/android/settings/wimax/WimaxStatus;
.super Ljava/lang/Object;
.source "WimaxStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxStatus$1;
    }
.end annotation


# static fields
.field private static m_bLog:Z

.field private static m_bNapId:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bLog:Z

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static getPrintable(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxState;I)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "wimaxState"
    .parameter "wimaxStateDetail"

    .prologue
    const/4 v0, 0x0

    .line 34
    sget-object v1, Lcom/android/settings/wimax/WimaxStatus$1;->$SwitchMap$android$net$fourG$wimax$WimaxState:[I

    invoke-virtual {p1}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 52
    :goto_c
    :pswitch_c
    return-object v0

    .line 36
    :pswitch_d
    const v0, 0x7f0b085a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 40
    :pswitch_15
    const v0, 0x7f0b085b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 42
    :pswitch_1d
    const v0, 0x7f0b085c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 44
    :pswitch_25
    const v0, 0x7f0b085d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 46
    :pswitch_2d
    const v0, 0x7f0b085e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 48
    :pswitch_35
    const v0, 0x7f0b085f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 50
    :pswitch_3d
    const v0, 0x7f0b0860

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 34
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_15
        :pswitch_1d
        :pswitch_25
        :pswitch_2d
        :pswitch_35
        :pswitch_3d
    .end packed-switch
.end method

.method public static getStatus(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxState;I)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "wimaxState"
    .parameter "wimaxStateDetail"

    .prologue
    .line 14
    sget-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bLog:Z

    if-eqz v0, :cond_32

    const-string v0, "WimaxStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getStatus]\tm_bNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WimaxState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extraStateDetail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_32
    invoke-static {p0, p1, p2}, Lcom/android/settings/wimax/WimaxStatus;->getPrintable(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxState;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setEnableLog(Z)V
    .registers 1
    .parameter "blog"

    .prologue
    .line 61
    sput-boolean p0, Lcom/android/settings/wimax/WimaxStatus;->m_bLog:Z

    .line 62
    return-void
.end method

.method public static updateNapId(Z)V
    .registers 1
    .parameter "bNapId"

    .prologue
    .line 57
    sput-boolean p0, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    .line 58
    return-void
.end method
