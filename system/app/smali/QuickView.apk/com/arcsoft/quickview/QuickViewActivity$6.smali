.class Lcom/arcsoft/quickview/QuickViewActivity$6;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->showMorePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$6;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$6;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z
    invoke-static {v0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$002(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z

    .line 542
    return-void
.end method
