.class public Lcom/sprint/w/installer/delivery/KeyWordLookup;
.super Landroid/app/Activity;
.source "KeyWordLookup.java"


# static fields
.field private static final TYPE_MANUAL_ENTER:I = 0x1

.field static sErrorId:I

.field static sNoMatch:Z

.field static sProgress:Landroid/app/ProgressDialog;

.field static sSearchInProgress:Z

.field static sType:I


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field mErrMsgToDisplay:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field mSearchString:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/w/installer/delivery/KeyWordLookup;->sProgress:Landroid/app/ProgressDialog;

    .line 33
    const/4 v0, 0x1

    sput v0, Lcom/sprint/w/installer/delivery/KeyWordLookup;->sType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const-class v0, Lcom/sprint/w/installer/delivery/KeyWordLookup;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/KeyWordLookup;->log:Lcom/sprint/id/logger/Logger;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/KeyWordLookup;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/KeyWordLookup;->setContentView(I)V

    .line 46
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/KeyWordLookup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/delivery/KeyWordLookup$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/KeyWordLookup$1;-><init>(Lcom/sprint/w/installer/delivery/KeyWordLookup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const v3, 0x7f0c0097

    const v6, 0x7f0c003c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/KeyWordLookup;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 69
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getZoneLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, zone_label:Ljava/lang/String;
    if-eqz v0, :cond_33

    .line 72
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getZoneIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 73
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 80
    :goto_32
    return v5

    .line 77
    :cond_33
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0600ef

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/delivery/KeyWordLookup;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 78
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_32
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    .line 104
    :goto_7
    const/4 v1, 0x1

    return v1

    .line 88
    :sswitch_9
    :try_start_9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/KeyWordLookup;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_7

    .line 89
    :catch_14
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/KeyWordLookup;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Error opening Wi-Fi settings"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 94
    .end local v0           #e:Ljava/lang/RuntimeException;
    :sswitch_1d
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->launchZoneApp(Landroid/content/Context;)V

    goto :goto_7

    .line 98
    :sswitch_21
    :try_start_21
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0600f5

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/delivery/KeyWordLookup;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/KeyWordLookup;->startActivity(Landroid/content/Intent;)V
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_50} :catch_51

    goto :goto_7

    .line 99
    :catch_51
    move-exception v0

    .line 100
    .restart local v0       #e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/KeyWordLookup;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Error opening Dialer"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 85
    :sswitch_data_5a
    .sparse-switch
        0x7f0c003c -> :sswitch_1d
        0x7f0c0097 -> :sswitch_21
        0x7f0c0098 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 60
    sget-object v0, Lcom/sprint/w/installer/delivery/KeyWordLookup;->sProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/sprint/w/installer/delivery/KeyWordLookup;->sProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 61
    sget-object v0, Lcom/sprint/w/installer/delivery/KeyWordLookup;->sProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/w/installer/delivery/KeyWordLookup;->sProgress:Landroid/app/ProgressDialog;

    .line 64
    :cond_17
    return-void
.end method
