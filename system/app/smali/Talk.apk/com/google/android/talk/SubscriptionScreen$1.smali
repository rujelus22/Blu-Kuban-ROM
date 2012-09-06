.class Lcom/google/android/talk/SubscriptionScreen$1;
.super Ljava/lang/Object;
.source "SubscriptionScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/SubscriptionScreen;->makeDialog(Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SubscriptionScreen;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SubscriptionScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/talk/SubscriptionScreen$1;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/SubscriptionScreen$1;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    #calls: Lcom/google/android/talk/SubscriptionScreen;->getImSession()Lcom/google/android/gtalkservice/IImSession;
    invoke-static {v2}, Lcom/google/android/talk/SubscriptionScreen;->access$000(Lcom/google/android/talk/SubscriptionScreen;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    .line 59
    .local v1, session:Lcom/google/android/gtalkservice/IImSession;
    packed-switch p2, :pswitch_data_44

    .line 71
    :goto_9
    iget-object v2, p0, Lcom/google/android/talk/SubscriptionScreen$1;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    invoke-virtual {v2}, Lcom/google/android/talk/SubscriptionScreen;->finish()V

    .line 77
    .end local v1           #session:Lcom/google/android/gtalkservice/IImSession;
    :goto_e
    return-void

    .line 61
    .restart local v1       #session:Lcom/google/android/gtalkservice/IImSession;
    :pswitch_f
    iget-object v2, p0, Lcom/google/android/talk/SubscriptionScreen$1;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    #getter for: Lcom/google/android/talk/SubscriptionScreen;->mUsername:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/SubscriptionScreen;->access$100(Lcom/google/android/talk/SubscriptionScreen;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/SubscriptionScreen$1;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    #getter for: Lcom/google/android/talk/SubscriptionScreen;->mNickname:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/SubscriptionScreen;->access$200(Lcom/google/android/talk/SubscriptionScreen;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gtalkservice/IImSession;->approveSubscriptionRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_9

    .line 72
    .end local v1           #session:Lcom/google/android/gtalkservice/IImSession;
    :catch_20
    move-exception v0

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/google/android/talk/SubscriptionScreen$1;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    invoke-virtual {v2}, Lcom/google/android/talk/SubscriptionScreen;->finish()V

    goto :goto_e

    .line 64
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #session:Lcom/google/android/gtalkservice/IImSession;
    :pswitch_27
    :try_start_27
    iget-object v2, p0, Lcom/google/android/talk/SubscriptionScreen$1;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    #getter for: Lcom/google/android/talk/SubscriptionScreen;->mUsername:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/SubscriptionScreen;->access$100(Lcom/google/android/talk/SubscriptionScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->declineSubscriptionRequest(Ljava/lang/String;)V

    goto :goto_9

    .line 67
    :pswitch_31
    iget-object v2, p0, Lcom/google/android/talk/SubscriptionScreen$1;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    #getter for: Lcom/google/android/talk/SubscriptionScreen;->mUsername:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/SubscriptionScreen;->access$100(Lcom/google/android/talk/SubscriptionScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->declineSubscriptionRequest(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/google/android/talk/SubscriptionScreen$1;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    #getter for: Lcom/google/android/talk/SubscriptionScreen;->mUsername:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/SubscriptionScreen;->access$100(Lcom/google/android/talk/SubscriptionScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->blockContact(Ljava/lang/String;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_43} :catch_20

    goto :goto_9

    .line 59
    :pswitch_data_44
    .packed-switch -0x3
        :pswitch_27
        :pswitch_31
        :pswitch_f
    .end packed-switch
.end method
