.class public Lcom/google/userfeedback/android/api/SendUserFeedbackService$SendUserFeedbackServiceBinder;
.super Landroid/os/Binder;
.source "SendUserFeedbackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/SendUserFeedbackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendUserFeedbackServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$SendUserFeedbackServiceBinder;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/google/userfeedback/android/api/SendUserFeedbackService;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$SendUserFeedbackServiceBinder;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    return-object v0
.end method
