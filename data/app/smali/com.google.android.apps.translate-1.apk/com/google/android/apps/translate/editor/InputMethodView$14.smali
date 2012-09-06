.class Lcom/google/android/apps/translate/editor/InputMethodView$14;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->showCameraLoggingDialog(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InputMethodView;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 980
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$14;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    iput-object p2, p0, Lcom/google/android/apps/translate/editor/InputMethodView$14;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$14;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/google/android/apps/translate/Profile;->setCameraLogging(Landroid/content/Context;Z)V

    .line 984
    return-void
.end method
