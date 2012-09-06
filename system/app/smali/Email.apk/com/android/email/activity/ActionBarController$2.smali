.class Lcom/android/email/activity/ActionBarController$2;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ActionBarController;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ActionBarController;)V
    .registers 2
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$2;->this$0:Lcom/android/email/activity/ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$2;->this$0:Lcom/android/email/activity/ActionBarController;

    #calls: Lcom/android/email/activity/ActionBarController;->refreshInernal()V
    invoke-static {v0}, Lcom/android/email/activity/ActionBarController;->access$200(Lcom/android/email/activity/ActionBarController;)V

    .line 360
    return-void
.end method
