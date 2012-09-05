.class Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$2;
.super Ljava/lang/Object;
.source "DownloadFoursquarePopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$2;->this$0:Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://search?q=pname:com.joelapenna.foursquared"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .local v0, downloadIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$2;->this$0:Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v1, p0, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$2;->this$0:Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;->finish()V

    .line 67
    return-void
.end method
