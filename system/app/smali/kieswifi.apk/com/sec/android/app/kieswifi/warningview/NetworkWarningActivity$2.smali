.class Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$2;
.super Ljava/lang/Object;
.source "NetworkWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$2;->this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$2;->this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->setResult(I)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$2;->this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->finishSelf()V

    .line 149
    return-void
.end method
