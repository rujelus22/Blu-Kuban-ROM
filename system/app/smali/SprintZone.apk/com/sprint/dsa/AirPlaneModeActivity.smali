.class public Lcom/sprint/dsa/AirPlaneModeActivity;
.super Landroid/app/Activity;
.source "AirPlaneModeActivity.java"


# static fields
.field private static final AIRPLANE_ID:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResources:Lcom/sprint/dsa/res/SzResources;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/AirPlaneModeActivity;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sprint/dsa/AirPlaneModeActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createAirPlaneDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080042

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 52
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08003f

    .line 53
    new-instance v3, Lcom/sprint/dsa/AirPlaneModeActivity$1;

    invoke-direct {v3, p0}, Lcom/sprint/dsa/AirPlaneModeActivity$1;-><init>(Lcom/sprint/dsa/AirPlaneModeActivity;)V

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 60
    const v2, 0x7f080040

    .line 61
    new-instance v3, Lcom/sprint/dsa/AirPlaneModeActivity$2;

    invoke-direct {v3, p0}, Lcom/sprint/dsa/AirPlaneModeActivity$2;-><init>(Lcom/sprint/dsa/AirPlaneModeActivity;)V

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sprint/dsa/AirPlaneModeActivity;->mResources:Lcom/sprint/dsa/res/SzResources;

    if-nez v0, :cond_f

    new-instance v0, Lcom/sprint/dsa/res/SzResources;

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dsa/res/SzResources;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sprint/dsa/AirPlaneModeActivity;->mResources:Lcom/sprint/dsa/res/SzResources;

    .line 79
    :cond_f
    iget-object v0, p0, Lcom/sprint/dsa/AirPlaneModeActivity;->mResources:Lcom/sprint/dsa/res/SzResources;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iput-object p0, p0, Lcom/sprint/dsa/AirPlaneModeActivity;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_a

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, dialog:Landroid/app/Dialog;
    :goto_4
    return-object v0

    .line 41
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_5
    invoke-direct {p0}, Lcom/sprint/dsa/AirPlaneModeActivity;->createAirPlaneDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 42
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_4

    .line 39
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/AirPlaneModeActivity;->showDialog(I)V

    .line 34
    return-void
.end method
