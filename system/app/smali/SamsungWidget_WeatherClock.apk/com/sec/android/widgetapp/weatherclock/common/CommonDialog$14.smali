.class final Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$14;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;IZ)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$interaction:Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V
    .registers 2
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$14;->val$interaction:Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$14;->val$interaction:Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;

    if-eqz v0, :cond_b

    .line 404
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$14;->val$interaction:Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;->click(I)V

    .line 406
    :cond_b
    return-void
.end method
