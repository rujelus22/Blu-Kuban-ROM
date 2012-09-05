.class Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$1;
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
    .line 69
    iput-object p1, p0, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$1;->this$0:Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity$1;->this$0:Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/DownloadFoursquarePopupActivity;->finish()V

    .line 72
    return-void
.end method
