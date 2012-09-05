.class Lcom/sec/android/app/ve/activity/PenDrawActivity$1;
.super Ljava/lang/Object;
.source "PenDrawActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/PenDrawActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$1;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$1;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/ve/activity/PenDrawActivity;->setupPaint(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$0(Lcom/sec/android/app/ve/activity/PenDrawActivity;Z)V

    .line 241
    return-void
.end method
