.class public Lcom/android/contacts/ContactStatusUtil;
.super Ljava/lang/Object;
.source "ContactStatusUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "presence"

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, resources:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_22

    .line 43
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 34
    :pswitch_9
    const v1, 0x7f0a01e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 37
    :pswitch_11
    const v1, 0x7f0a01e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 39
    :pswitch_19
    const v1, 0x7f0a01e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 32
    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_11
        :pswitch_11
        :pswitch_19
        :pswitch_9
    .end packed-switch
.end method
