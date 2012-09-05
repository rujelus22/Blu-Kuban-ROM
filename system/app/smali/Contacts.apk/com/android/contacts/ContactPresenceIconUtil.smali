.class public Lcom/android/contacts/ContactPresenceIconUtil;
.super Ljava/lang/Object;
.source "ContactPresenceIconUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChatCapabilityIcon(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "context"
    .parameter "status"
    .parameter "chatCapability"

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, resourceId:I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1f

    .line 53
    packed-switch p1, :pswitch_data_3c

    .line 82
    :cond_8
    :goto_8
    if-eqz v0, :cond_3a

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    :goto_12
    return-object v1

    .line 55
    :pswitch_13
    const v0, 0x10800ae

    .line 56
    goto :goto_8

    .line 59
    :pswitch_17
    const v0, 0x10800ac

    .line 60
    goto :goto_8

    .line 62
    :pswitch_1b
    const v0, 0x10800ad

    goto :goto_8

    .line 65
    :cond_1f
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_33

    .line 66
    packed-switch p1, :pswitch_data_48

    goto :goto_8

    .line 72
    :pswitch_27
    const v0, 0x10800af

    .line 73
    goto :goto_8

    .line 68
    :pswitch_2b
    const v0, 0x10800b1

    .line 69
    goto :goto_8

    .line 75
    :pswitch_2f
    const v0, 0x10800b0

    goto :goto_8

    .line 78
    :cond_33
    if-eqz p1, :cond_8

    .line 79
    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    goto :goto_8

    .line 86
    :cond_3a
    const/4 v1, 0x0

    goto :goto_12

    .line 53
    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_17
        :pswitch_17
        :pswitch_1b
        :pswitch_13
    .end packed-switch

    .line 66
    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_27
        :pswitch_27
        :pswitch_2f
        :pswitch_2b
    .end packed-switch
.end method

.method public static getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "context"
    .parameter "status"

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_12

    .line 46
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 41
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    .line 35
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
