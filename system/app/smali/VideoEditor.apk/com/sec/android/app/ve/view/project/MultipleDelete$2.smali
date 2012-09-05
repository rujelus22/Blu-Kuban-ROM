.class Lcom/sec/android/app/ve/view/project/MultipleDelete$2;
.super Ljava/lang/Object;
.source "MultipleDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/project/MultipleDelete;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/project/MultipleDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/project/MultipleDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete$2;->this$0:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 156
    const-string v0, "Cancel"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete$2;->this$0:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->setVisibility(I)V

    .line 158
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeCheckBoxesInvisible()V

    .line 159
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeButtonLayoutVisible()V

    .line 161
    return-void
.end method
