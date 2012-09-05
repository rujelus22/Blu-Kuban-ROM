.class Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;
.super Ljava/lang/Object;
.source "SendAppListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/SendAppListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendAppItem"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field final synthetic this$0:Lcom/arcsoft/quickview/SendAppListDialog;


# direct methods
.method public constructor <init>(Lcom/arcsoft/quickview/SendAppListDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "appicon"
    .parameter "appname"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 313
    iput-object p3, p0, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;->mAppName:Ljava/lang/String;

    .line 314
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method
