.class Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TaskImportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskImportListActivity$VCSEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public accountColorBar:Landroid/view/View;

.field public dDay:Landroid/widget/TextView;

.field public dueDate:Landroid/widget/TextView;

.field public priority:Landroid/widget/ImageView;

.field public reminder:Landroid/widget/ImageView;

.field public subject:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/task/TaskImportListActivity$VCSEventAdapter;


# direct methods
.method constructor <init>(Lcom/android/task/TaskImportListActivity$VCSEventAdapter;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 222
    iput-object p1, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->this$1:Lcom/android/task/TaskImportListActivity$VCSEventAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object v0, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->accountColorBar:Landroid/view/View;

    .line 224
    iput-object v0, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->subject:Landroid/widget/TextView;

    .line 225
    iput-object v0, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->dueDate:Landroid/widget/TextView;

    .line 226
    iput-object v0, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->reminder:Landroid/widget/ImageView;

    .line 227
    iput-object v0, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->priority:Landroid/widget/ImageView;

    .line 228
    iput-object v0, p0, Lcom/android/task/TaskImportListActivity$VCSEventAdapter$ViewHolder;->dDay:Landroid/widget/TextView;

    return-void
.end method
