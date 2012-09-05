.class public Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;
.super Landroid/app/Activity;
.source "BuddySelection.java"


# instance fields
.field private mAppWidgetId:I

.field private final mrequestCode:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const-string v0, "Buddies--------------------------->"

    iput-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->tag:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->mAppWidgetId:I

    .line 35
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->mrequestCode:I

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivity  Result Code==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Request code==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7e

    .line 68
    packed-switch p1, :pswitch_data_82

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->finish()V

    .line 99
    :goto_2b
    return-void

    .line 72
    :pswitch_2c
    const/4 v0, 0x0

    .line 74
    if-eqz p3, :cond_33

    .line 75
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 77
    :cond_33
    iget-object v1, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing intent to updateWidget, the AppwidgetId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-nez v0, :cond_59

    .line 80
    iget-object v1, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->tag:Ljava/lang/String;

    const-string v2, "Contact Uri is NULL!, Invalid contact selection!."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->finish()V

    .line 84
    :cond_59
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.buddiesnow.updateWidget"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v2, "com.sec.android.widgetapp.buddiesnow"

    const-class v3, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidget;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v2, "ContactUri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    const-string v0, "widgetId"

    iget v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->mAppWidgetId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->finish()V

    goto :goto_2b

    .line 97
    :cond_7e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->finish()V

    goto :goto_2b

    .line 68
    :pswitch_data_82
    .packed-switch 0x5
        :pswitch_2c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 40
    iget-object v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->tag:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "widgetId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->mAppWidgetId:I

    .line 46
    iget v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->mAppWidgetId:I

    if-nez v2, :cond_26

    .line 47
    iget-object v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->tag:Ljava/lang/String;

    const-string v3, "OOPS!! This is embarassing! AppWidgetID is NULL, finishing the activity..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->finish()V

    .line 51
    :cond_26
    iget-object v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppWidget oncreate config act"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->mAppWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->setRequestedOrientation(I)V

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .local v1, mIntent:Landroid/content/Intent;
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;->startActivityForResult(Landroid/content/Intent;I)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method
