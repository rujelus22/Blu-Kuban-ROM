.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionAltInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .registers 4
    .parameter "type"

    .prologue
    const v0, 0x7f0a0137

    .line 577
    if-nez p1, :cond_6

    .line 599
    :goto_5
    :pswitch_5
    return v0

    .line 578
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_5e

    .line 599
    const v0, 0x7f0a0130

    goto :goto_5

    .line 579
    :pswitch_11
    const v0, 0x7f0a0131

    goto :goto_5

    .line 580
    :pswitch_15
    const v0, 0x7f0a0132

    goto :goto_5

    .line 581
    :pswitch_19
    const v0, 0x7f0a0133

    goto :goto_5

    .line 582
    :pswitch_1d
    const v0, 0x7f0a0134

    goto :goto_5

    .line 583
    :pswitch_21
    const v0, 0x7f0a0135

    goto :goto_5

    .line 584
    :pswitch_25
    const v0, 0x7f0a0136

    goto :goto_5

    .line 586
    :pswitch_29
    const v0, 0x7f0a0138

    goto :goto_5

    .line 587
    :pswitch_2d
    const v0, 0x7f0a0139

    goto :goto_5

    .line 588
    :pswitch_31
    const v0, 0x7f0a013a

    goto :goto_5

    .line 589
    :pswitch_35
    const v0, 0x7f0a013b

    goto :goto_5

    .line 590
    :pswitch_39
    const v0, 0x7f0a013c

    goto :goto_5

    .line 591
    :pswitch_3d
    const v0, 0x7f0a013d

    goto :goto_5

    .line 592
    :pswitch_41
    const v0, 0x7f0a013e

    goto :goto_5

    .line 593
    :pswitch_45
    const v0, 0x7f0a013f

    goto :goto_5

    .line 594
    :pswitch_49
    const v0, 0x7f0a0140

    goto :goto_5

    .line 595
    :pswitch_4d
    const v0, 0x7f0a0141

    goto :goto_5

    .line 596
    :pswitch_51
    const v0, 0x7f0a0142

    goto :goto_5

    .line 597
    :pswitch_55
    const v0, 0x7f0a0143

    goto :goto_5

    .line 598
    :pswitch_59
    const v0, 0x7f0a0144

    goto :goto_5

    .line 578
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
    .line 572
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
