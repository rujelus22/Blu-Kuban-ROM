.class final Lcom/acquariusoft/UpdateMe/PreferencePage/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/d;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->b:Ljava/lang/String;

    const-string v2, "[br]"

    const-string v3, "\r\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/acquariusoft/UpdateMe/PreferencePage/e;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/PreferencePage/e;-><init>(Lcom/acquariusoft/UpdateMe/PreferencePage/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x0

    return v0
.end method
