.class public Lcom/google/android/gm/GmailWebViewContextMenu;
.super Lcom/android/mailcommon/WebViewContextMenu;
.source "GmailWebViewContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/GmailWebViewContextMenu$1;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter "host"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/mailcommon/WebViewContextMenu;-><init>(Landroid/app/Activity;)V

    .line 15
    iput-object p1, p0, Lcom/google/android/gm/GmailWebViewContextMenu;->mActivity:Landroid/app/Activity;

    .line 16
    return-void
.end method


# virtual methods
.method protected getChooserTitleStringResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I
    .registers 4
    .parameter "menuType"

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    invoke-virtual {p1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected MenuType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_13
    const v0, 0x7f0c0165

    return v0

    .line 80
    nop

    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_13
    .end packed-switch
.end method

.method protected getMenuGroupResId(Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;)I
    .registers 4
    .parameter "menuGroupType"

    .prologue
    .line 100
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuGroupType:[I

    invoke-virtual {p1}, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected MenuGroupType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :pswitch_13
    const v0, 0x7f0f00fb

    .line 108
    :goto_16
    return v0

    .line 104
    :pswitch_17
    const v0, 0x7f0f0100

    goto :goto_16

    .line 106
    :pswitch_1b
    const v0, 0x7f0f0103

    goto :goto_16

    .line 108
    :pswitch_1f
    const v0, 0x7f0f0106

    goto :goto_16

    .line 100
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
    .end packed-switch
.end method

.method protected getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I
    .registers 4
    .parameter "menuType"

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    invoke-virtual {p1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected MenuType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :pswitch_13
    const v0, 0x7f0f0107

    .line 72
    :goto_16
    return v0

    .line 54
    :pswitch_17
    const v0, 0x7f0f0108

    goto :goto_16

    .line 56
    :pswitch_1b
    const v0, 0x7f0f0109

    goto :goto_16

    .line 58
    :pswitch_1f
    const v0, 0x7f0f00fc

    goto :goto_16

    .line 60
    :pswitch_23
    const v0, 0x7f0f00fd

    goto :goto_16

    .line 62
    :pswitch_27
    const v0, 0x7f0f00fe

    goto :goto_16

    .line 64
    :pswitch_2b
    const v0, 0x7f0f00ff

    goto :goto_16

    .line 66
    :pswitch_2f
    const v0, 0x7f0f0101

    goto :goto_16

    .line 68
    :pswitch_33
    const v0, 0x7f0f0102

    goto :goto_16

    .line 70
    :pswitch_37
    const v0, 0x7f0f0104

    goto :goto_16

    .line 72
    :pswitch_3b
    const v0, 0x7f0f0105

    goto :goto_16

    .line 50
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
    .end packed-switch
.end method

.method protected getMenuResourceId()I
    .registers 2

    .prologue
    .line 116
    const v0, 0x7f12000b

    return v0
.end method

.method protected getTitleViewLayoutResId(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I
    .registers 4
    .parameter "menuType"

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    invoke-virtual {p1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected MenuType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :pswitch_13
    const v0, 0x7f040042

    return v0

    .line 90
    nop

    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_13
    .end packed-switch
.end method

.method protected onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "menuItem"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gm/GmailWebViewContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
