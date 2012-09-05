.class Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$9;
.super Ljava/lang/Object;
.source "EvTextToSpeechHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$9;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 424
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$9;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-eqz v1, :cond_18

    .line 425
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$9;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->finalizeSpeech()V

    .line 426
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$9;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 428
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 430
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TextToSpeechSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 433
    :goto_35
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$9;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 434
    return-void

    .line 432
    :cond_3d
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_35
.end method
