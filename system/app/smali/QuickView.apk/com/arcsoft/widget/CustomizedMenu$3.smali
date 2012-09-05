.class Lcom/arcsoft/widget/CustomizedMenu$3;
.super Ljava/lang/Object;
.source "CustomizedMenu.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/CustomizedMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/CustomizedMenu;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/CustomizedMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/arcsoft/widget/CustomizedMenu$3;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "paramView"
    .parameter "paramBoolean"

    .prologue
    const/4 v2, 0x0

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2c

    .line 443
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu$3;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    iput v2, v0, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    .line 446
    :goto_c
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu$3;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    #getter for: Lcom/arcsoft/widget/CustomizedMenu;->m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;
    invoke-static {v0}, Lcom/arcsoft/widget/CustomizedMenu;->access$300(Lcom/arcsoft/widget/CustomizedMenu;)Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 447
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu$3;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    #getter for: Lcom/arcsoft/widget/CustomizedMenu;->m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;
    invoke-static {v0}, Lcom/arcsoft/widget/CustomizedMenu;->access$300(Lcom/arcsoft/widget/CustomizedMenu;)Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;->onMenuFocusChanged()V

    .line 448
    :cond_1d
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu$3;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    #calls: Lcom/arcsoft/widget/CustomizedMenu;->saveCurrentFocus(Z)V
    invoke-static {v0, v2}, Lcom/arcsoft/widget/CustomizedMenu;->access$200(Lcom/arcsoft/widget/CustomizedMenu;Z)V

    .line 449
    return-void

    .line 440
    :sswitch_23
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu$3;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    goto :goto_c

    .line 435
    :sswitch_data_2c
    .sparse-switch
        0x7f060008 -> :sswitch_23
        0x7f06000c -> :sswitch_23
        0x7f060010 -> :sswitch_23
    .end sparse-switch
.end method
