.class Lcom/sec/android/app/shareapp/ShareApp$1;
.super Ljava/lang/Object;
.source "ShareApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shareapp/ShareApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shareapp/ShareApp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$1;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f050002

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 106
    .local v0, appCheck:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp$1;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/shareapp/ShareApp;->access$100(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->isCheckedOverOneApp()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp$1;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    iget-object v1, v1, Lcom/sec/android/app/shareapp/ShareApp;->mDoneButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    :goto_20
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp$1;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #calls: Lcom/sec/android/app/shareapp/ShareApp;->closeTextKeypad()V
    invoke-static {v1}, Lcom/sec/android/app/shareapp/ShareApp;->access$200(Lcom/sec/android/app/shareapp/ShareApp;)V

    .line 115
    return-void

    .line 111
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp$1;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    iget-object v1, v1, Lcom/sec/android/app/shareapp/ShareApp;->mDoneButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method
