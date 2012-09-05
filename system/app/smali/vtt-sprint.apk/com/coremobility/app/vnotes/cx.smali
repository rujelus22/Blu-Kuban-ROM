.class final Lcom/coremobility/app/vnotes/cx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cx;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cx;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cx;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->finish()V

    :cond_11
    return-void
.end method
