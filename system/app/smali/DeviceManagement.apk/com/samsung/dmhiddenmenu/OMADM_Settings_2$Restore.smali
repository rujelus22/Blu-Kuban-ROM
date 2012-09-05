.class Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;
.super Landroid/preference/Preference;
.source "OMADM_Settings_2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Restore"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;


# direct methods
.method public constructor <init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    .line 326
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 327
    return-void
.end method


# virtual methods
.method protected onClick()V
    .registers 4

    .prologue
    .line 331
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 332
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    iget-object v1, v1, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->myCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    const v2, 0x7f050060

    invoke-virtual {v1, v2}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore$2;

    invoke-direct {v2, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore$2;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore$1;

    invoke-direct {v2, p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore$1;-><init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 346
    return-void
.end method
