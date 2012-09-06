.class Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "ActionTagHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/oob/ActionTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionClickableSpan"
.end annotation


# instance fields
.field private final mActionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/plus/oob/ActionTagHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/oob/ActionTagHandler;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "actionId"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionClickableSpan;->this$0:Lcom/google/android/apps/plus/oob/ActionTagHandler;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionClickableSpan;->mActionId:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "widget"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionClickableSpan;->this$0:Lcom/google/android/apps/plus/oob/ActionTagHandler;

    #getter for: Lcom/google/android/apps/plus/oob/ActionTagHandler;->mCallback:Lcom/google/android/apps/plus/oob/ActionTagHandler$Callback;
    invoke-static {v0}, Lcom/google/android/apps/plus/oob/ActionTagHandler;->access$000(Lcom/google/android/apps/plus/oob/ActionTagHandler;)Lcom/google/android/apps/plus/oob/ActionTagHandler$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionClickableSpan;->mActionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/oob/ActionTagHandler$Callback;->onActionId(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .parameter "textPaint"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionClickableSpan;->this$0:Lcom/google/android/apps/plus/oob/ActionTagHandler;

    #getter for: Lcom/google/android/apps/plus/oob/ActionTagHandler;->mLinkColor:I
    invoke-static {v0}, Lcom/google/android/apps/plus/oob/ActionTagHandler;->access$100(Lcom/google/android/apps/plus/oob/ActionTagHandler;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 78
    return-void
.end method
