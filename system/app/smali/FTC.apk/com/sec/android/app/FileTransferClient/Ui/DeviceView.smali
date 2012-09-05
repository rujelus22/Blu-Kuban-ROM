.class public Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;
.super Landroid/preference/Preference;
.source "DeviceView.java"


# instance fields
.field private DeviceName:Ljava/lang/String;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/application/fileshare/api/DeviceItem;)V
    .registers 4
    .parameter "context"
    .parameter "dev"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->DeviceName:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->DeviceName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 39
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->mTitleText:Landroid/widget/TextView;

    .line 40
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->mTitleText:Landroid/widget/TextView;

    if-eqz v4, :cond_2e

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 45
    .local v2, res:Landroid/content/res/Resources;
    const/high16 v4, 0x7f02

    :try_start_19
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 46
    .local v3, xpp:Landroid/content/res/XmlResourceParser;
    invoke-static {v2, v3}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 47
    .local v0, csl:Landroid/content/res/ColorStateList;
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 48
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->mTitleText:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_41

    .line 56
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #xpp:Landroid/content/res/XmlResourceParser;
    :cond_2e
    :goto_2e
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->DeviceName:Ljava/lang/String;

    if-eqz v4, :cond_3d

    .line 58
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->DeviceName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    const v4, 0x7f06002f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;->setSummary(I)V

    .line 61
    :cond_3d
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 62
    return-void

    .line 50
    .restart local v2       #res:Landroid/content/res/Resources;
    :catch_41
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    const-string v5, "DeviceView :onBindView(), XmlResourceParser exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method
