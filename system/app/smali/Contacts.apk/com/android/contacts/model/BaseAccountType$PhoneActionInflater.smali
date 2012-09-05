.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .registers 4
    .parameter "type"

    .prologue
    const v0, 0x7f0a0122

    .line 542
    if-nez p1, :cond_6

    .line 564
    :goto_5
    :pswitch_5
    return v0

    .line 543
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_5e

    .line 564
    const v0, 0x7f0a011b

    goto :goto_5

    .line 544
    :pswitch_11
    const v0, 0x7f0a011c

    goto :goto_5

    .line 545
    :pswitch_15
    const v0, 0x7f0a011d

    goto :goto_5

    .line 546
    :pswitch_19
    const v0, 0x7f0a011e

    goto :goto_5

    .line 547
    :pswitch_1d
    const v0, 0x7f0a011f

    goto :goto_5

    .line 548
    :pswitch_21
    const v0, 0x7f0a0120

    goto :goto_5

    .line 549
    :pswitch_25
    const v0, 0x7f0a0121

    goto :goto_5

    .line 551
    :pswitch_29
    const v0, 0x7f0a0123

    goto :goto_5

    .line 552
    :pswitch_2d
    const v0, 0x7f0a0124

    goto :goto_5

    .line 553
    :pswitch_31
    const v0, 0x7f0a0125

    goto :goto_5

    .line 554
    :pswitch_35
    const v0, 0x7f0a0126

    goto :goto_5

    .line 555
    :pswitch_39
    const v0, 0x7f0a0127

    goto :goto_5

    .line 556
    :pswitch_3d
    const v0, 0x7f0a0128

    goto :goto_5

    .line 557
    :pswitch_41
    const v0, 0x7f0a0129

    goto :goto_5

    .line 558
    :pswitch_45
    const v0, 0x7f0a012a

    goto :goto_5

    .line 559
    :pswitch_49
    const v0, 0x7f0a012b

    goto :goto_5

    .line 560
    :pswitch_4d
    const v0, 0x7f0a012c

    goto :goto_5

    .line 561
    :pswitch_51
    const v0, 0x7f0a012d

    goto :goto_5

    .line 562
    :pswitch_55
    const v0, 0x7f0a012e

    goto :goto_5

    .line 563
    :pswitch_59
    const v0, 0x7f0a012f

    goto :goto_5

    .line 543
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_5
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
        :pswitch_41
        :pswitch_45
        :pswitch_49
        :pswitch_4d
        :pswitch_51
        :pswitch_55
        :pswitch_59
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .registers 4
    .parameter "type"

    .prologue
    .line 537
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
