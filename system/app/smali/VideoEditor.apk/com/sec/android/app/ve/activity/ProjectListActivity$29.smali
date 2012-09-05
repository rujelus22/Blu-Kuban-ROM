.class Lcom/sec/android/app/ve/activity/ProjectListActivity$29;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$29;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$29;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->eContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$35(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/ve/util/Utils;->setCheckBoxValue(ZLandroid/content/Context;)V

    .line 2383
    return-void
.end method
