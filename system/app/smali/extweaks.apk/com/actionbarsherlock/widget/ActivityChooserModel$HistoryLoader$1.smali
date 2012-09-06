.class Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;->this$1:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;->this$1:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v0

    #calls: Lcom/actionbarsherlock/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$6(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V

    .line 1048
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;->this$1:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v0

    #calls: Lcom/actionbarsherlock/widget/ActivityChooserModel;->sortActivities()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$7(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V

    .line 1049
    return-void
.end method
