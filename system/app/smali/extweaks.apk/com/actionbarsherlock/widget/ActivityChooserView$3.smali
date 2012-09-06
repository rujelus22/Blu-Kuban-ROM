.class Lcom/actionbarsherlock/widget/ActivityChooserView$3;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$3;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    .line 248
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 252
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$3;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #calls: Lcom/actionbarsherlock/widget/ActivityChooserView;->updateAppearance()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$12(Lcom/actionbarsherlock/widget/ActivityChooserView;)V

    .line 253
    return-void
.end method
