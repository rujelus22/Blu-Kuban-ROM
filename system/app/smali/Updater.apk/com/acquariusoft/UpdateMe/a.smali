.class public final Lcom/acquariusoft/UpdateMe/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/acquariusoft/UpdateMe/b/e;

.field b:Landroid/app/Dialog;

.field c:Landroid/app/Activity;

.field d:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;

.field e:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->a:Lcom/acquariusoft/UpdateMe/b/e;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->e:Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/a;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/acquariusoft/UpdateMe/a;->d:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/a;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/a;->a:Lcom/acquariusoft/UpdateMe/b/e;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/a;->a:Lcom/acquariusoft/UpdateMe/b/e;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/a;->a:Lcom/acquariusoft/UpdateMe/b/e;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/a;->a:Lcom/acquariusoft/UpdateMe/b/e;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/acquariusoft/UpdateMe/b;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/b;-><init>(Lcom/acquariusoft/UpdateMe/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/acquariusoft/UpdateMe/e;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/e;-><init>(Lcom/acquariusoft/UpdateMe/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
