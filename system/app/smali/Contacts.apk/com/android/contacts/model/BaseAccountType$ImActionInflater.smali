.class public Lcom/android/contacts/model/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 653
    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 648
    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .registers 4
    .parameter "type"

    .prologue
    const v0, 0x7f0a0158

    .line 658
    if-nez p1, :cond_6

    .line 669
    :goto_5
    :pswitch_5
    return v0

    .line 659
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    goto :goto_5

    .line 660
    :pswitch_e
    const v0, 0x7f0a0150

    goto :goto_5

    .line 661
    :pswitch_12
    const v0, 0x7f0a0151

    goto :goto_5

    .line 662
    :pswitch_16
    const v0, 0x7f0a0152

    goto :goto_5

    .line 663
    :pswitch_1a
    const v0, 0x7f0a0153

    goto :goto_5

    .line 664
    :pswitch_1e
    const v0, 0x7f0a0154

    goto :goto_5

    .line 665
    :pswitch_22
    const v0, 0x7f0a0155

    goto :goto_5

    .line 666
    :pswitch_26
    const v0, 0x7f0a0156

    goto :goto_5

    .line 667
    :pswitch_2a
    const v0, 0x7f0a0157

    goto :goto_5

    .line 659
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_5
    .end packed-switch
.end method
