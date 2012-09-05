.class public Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .registers 4
    .parameter "type"

    .prologue
    const v0, 0x7f0a014e

    .line 635
    if-nez p1, :cond_6

    .line 640
    :goto_5
    :pswitch_5
    return v0

    .line 636
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 640
    const v0, 0x7f0a014f

    goto :goto_5

    .line 637
    :pswitch_11
    const v0, 0x7f0a014c

    goto :goto_5

    .line 638
    :pswitch_15
    const v0, 0x7f0a014d

    goto :goto_5

    .line 636
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_15
        :pswitch_5
    .end packed-switch
.end method
