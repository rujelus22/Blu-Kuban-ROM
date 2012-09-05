.class Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;
.super Landroid/database/ContentObserver;
.source "InteractionRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "h"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 486
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 487
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 491
    const-string v0, "InteractionRecentFragment"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->access$002(Z)Z

    .line 495
    return-void
.end method
