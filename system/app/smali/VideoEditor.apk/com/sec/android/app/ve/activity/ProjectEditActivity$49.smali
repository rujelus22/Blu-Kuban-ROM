.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$49;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$49;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2515
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/sec/android/app/ve/util/Utils;->setCheckBoxValue(ZLandroid/content/Context;)V

    .line 2516
    return-void
.end method
