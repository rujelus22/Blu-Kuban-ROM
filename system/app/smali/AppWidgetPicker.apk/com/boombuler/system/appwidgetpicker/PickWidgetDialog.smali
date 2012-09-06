.class public Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;
.super Ljava/lang/Object;
.source "PickWidgetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$CancelListener;,
        Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$ClickListener;
    }
.end annotation


# instance fields
.field fDialog:Landroid/app/AlertDialog;

.field fItemAdapter:Lcom/boombuler/system/appwidgetpicker/ItemAdapter;

.field private final fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;


# direct methods
.method public constructor <init>(Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;)V
    .registers 2
    .parameter "owner"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;)Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    return-object v0
.end method


# virtual methods
.method public showDialog(Lcom/boombuler/system/appwidgetpicker/SubItem;)V
    .registers 10
    .parameter "subItem"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    if-eqz p1, :cond_8

    instance-of v3, p1, Lcom/boombuler/system/appwidgetpicker/Item;

    if-eqz v3, :cond_8c

    .line 70
    :cond_8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v1, ab:Landroid/app/AlertDialog$Builder;
    if-nez p1, :cond_4d

    .line 73
    iget-object v3, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    new-instance v3, Lcom/boombuler/system/appwidgetpicker/ItemAdapter;

    iget-object v4, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    iget-object v5, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    invoke-virtual {v5}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v4, v6, v5}, Lcom/boombuler/system/appwidgetpicker/ItemAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fItemAdapter:Lcom/boombuler/system/appwidgetpicker/ItemAdapter;

    .line 75
    iget-object v3, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fItemAdapter:Lcom/boombuler/system/appwidgetpicker/ItemAdapter;

    new-instance v4, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$ClickListener;

    invoke-direct {v4, p0}, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$ClickListener;-><init>(Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    :goto_36
    new-instance v3, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$CancelListener;

    if-nez p1, :cond_8a

    move v4, v7

    :goto_3b
    invoke-direct {v3, p0, v4}, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$CancelListener;-><init>(Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;Z)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fDialog:Landroid/app/AlertDialog;

    .line 91
    iget-object v3, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 95
    .end local v1           #ab:Landroid/app/AlertDialog$Builder;
    .end local p0
    :goto_4c
    return-void

    .line 78
    .restart local v1       #ab:Landroid/app/AlertDialog$Builder;
    .restart local p0
    :cond_4d
    move-object v0, p1

    check-cast v0, Lcom/boombuler/system/appwidgetpicker/Item;

    move-object v2, v0

    .line 79
    .local v2, itm:Lcom/boombuler/system/appwidgetpicker/Item;
    invoke-virtual {v2}, Lcom/boombuler/system/appwidgetpicker/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_6b

    .line 80
    iget-object v3, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    invoke-virtual {v2}, Lcom/boombuler/system/appwidgetpicker/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/boombuler/system/appwidgetpicker/SubItem;

    invoke-virtual {v3, p0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->finishOk(Lcom/boombuler/system/appwidgetpicker/SubItem;)V

    goto :goto_4c

    .line 84
    .restart local p0
    :cond_6b
    invoke-virtual {p1}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 85
    new-instance v3, Lcom/boombuler/system/appwidgetpicker/ItemAdapter;

    iget-object v4, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    invoke-virtual {v2}, Lcom/boombuler/system/appwidgetpicker/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v4, v6, v5}, Lcom/boombuler/system/appwidgetpicker/ItemAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fItemAdapter:Lcom/boombuler/system/appwidgetpicker/ItemAdapter;

    .line 86
    iget-object v3, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fItemAdapter:Lcom/boombuler/system/appwidgetpicker/ItemAdapter;

    new-instance v4, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$ClickListener;

    invoke-direct {v4, p0}, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$ClickListener;-><init>(Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_36

    .end local v2           #itm:Lcom/boombuler/system/appwidgetpicker/Item;
    :cond_8a
    move v4, v6

    .line 89
    goto :goto_3b

    .line 94
    .end local v1           #ab:Landroid/app/AlertDialog$Builder;
    :cond_8c
    iget-object v3, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    invoke-virtual {v3, p1}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->finishOk(Lcom/boombuler/system/appwidgetpicker/SubItem;)V

    goto :goto_4c
.end method
