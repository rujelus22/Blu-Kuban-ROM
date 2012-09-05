.class Lcom/android/calendar/VCalListActivity$3;
.super Ljava/lang/Object;
.source "VCalListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/VCalListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/VCalListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/VCalListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/calendar/VCalListActivity$3;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 486
    new-instance v0, Lcom/android/calendar/VCalListActivity$ImportVCalTask;

    iget-object v1, p0, Lcom/android/calendar/VCalListActivity$3;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$ImportVCalTask;-><init>(Lcom/android/calendar/VCalListActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity$ImportVCalTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 488
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$3;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-virtual {v0}, Lcom/android/calendar/VCalListActivity;->finish()V

    .line 490
    return-void
.end method
