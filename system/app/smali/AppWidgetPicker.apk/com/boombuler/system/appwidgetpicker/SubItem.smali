.class public Lcom/boombuler/system/appwidgetpicker/SubItem;
.super Ljava/lang/Object;
.source "SubItem.java"


# instance fields
.field public fExtra:Landroid/os/Bundle;

.field private fImage:Landroid/graphics/drawable/Drawable;

.field private fName:Ljava/lang/String;

.field public fProvider:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "name"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/boombuler/system/appwidgetpicker/SubItem;->fExtra:Landroid/os/Bundle;

    .line 27
    iput-object v0, p0, Lcom/boombuler/system/appwidgetpicker/SubItem;->fProvider:Landroid/content/ComponentName;

    .line 30
    iput-object p1, p0, Lcom/boombuler/system/appwidgetpicker/SubItem;->fName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/boombuler/system/appwidgetpicker/SubItem;->fImage:Landroid/graphics/drawable/Drawable;

    .line 32
    return-void
.end method


# virtual methods
.method public getExtra()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boombuler/system/appwidgetpicker/SubItem;->fExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boombuler/system/appwidgetpicker/SubItem;->fImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boombuler/system/appwidgetpicker/SubItem;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boombuler/system/appwidgetpicker/SubItem;->fProvider:Landroid/content/ComponentName;

    return-object v0
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .registers 2
    .parameter "aValue"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boombuler/system/appwidgetpicker/SubItem;->fExtra:Landroid/os/Bundle;

    .line 36
    return-void
.end method

.method public setProvider(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "aValue"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/boombuler/system/appwidgetpicker/SubItem;->fProvider:Landroid/content/ComponentName;

    .line 43
    return-void
.end method
