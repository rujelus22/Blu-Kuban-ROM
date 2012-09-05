.class Lcom/sprint/id/updater/UpdaterActivity$2;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/id/updater/UpdaterActivity;->showUpdateDialog(Landroid/content/Context;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/id/updater/UpdaterActivity;


# direct methods
.method constructor <init>(Lcom/sprint/id/updater/UpdaterActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/id/updater/UpdaterActivity$2;->this$0:Lcom/sprint/id/updater/UpdaterActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    return-void
.end method
