.class Lcom/android/calendar/AlertActivity$2;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AlertActivity;->addListHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    #getter for: Lcom/android/calendar/AlertActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/calendar/AlertActivity;->access$100(Lcom/android/calendar/AlertActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v0, 0x1

    .line 313
    .local v0, checked:Z
    :goto_d
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    #getter for: Lcom/android/calendar/AlertActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/calendar/AlertActivity;->access$100(Lcom/android/calendar/AlertActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 314
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    #calls: Lcom/android/calendar/AlertActivity;->setAllItemChecked(Z)V
    invoke-static {v1, v0}, Lcom/android/calendar/AlertActivity;->access$200(Lcom/android/calendar/AlertActivity;Z)V

    .line 315
    return-void

    .line 312
    .end local v0           #checked:Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method
