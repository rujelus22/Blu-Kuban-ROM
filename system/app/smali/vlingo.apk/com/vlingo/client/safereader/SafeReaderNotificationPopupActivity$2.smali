.class Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$2;
.super Ljava/lang/Object;
.source "SafeReaderNotificationPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$2;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    const/4 v0, 0x2

    if-ne p2, v0, :cond_10

    .line 137
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$2;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    const-string v1, ""

    #calls: Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->sendSMS(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->access$200(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$2;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->finish()V

    .line 144
    :cond_f
    :goto_f
    return-void

    .line 139
    :cond_10
    const/4 v0, 0x1

    if-eq p2, v0, :cond_f

    .line 141
    if-nez p2, :cond_f

    .line 142
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$2;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    #calls: Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->startRecognition()V
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->access$000(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V

    goto :goto_f
.end method
