.class public Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 607
    if-nez p1, :cond_6

    const v0, 0x7f0a014b

    .line 613
    :goto_5
    return v0

    .line 608
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 613
    const v0, 0x7f0a014a

    goto :goto_5

    .line 609
    :pswitch_11
    const v0, 0x7f0a0146

    goto :goto_5

    .line 610
    :pswitch_15
    const v0, 0x7f0a0148

    goto :goto_5

    .line 611
    :pswitch_19
    const v0, 0x7f0a0149

    goto :goto_5

    .line 612
    :pswitch_1d
    const v0, 0x7f0a0147

    goto :goto_5

    .line 608
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
    .end packed-switch
.end method
