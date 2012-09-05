.class Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$6;
.super Ljava/lang/Object;
.source "Ui3dMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$6;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$6;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->removeDialog(I)V

    .line 1015
    return-void
.end method
