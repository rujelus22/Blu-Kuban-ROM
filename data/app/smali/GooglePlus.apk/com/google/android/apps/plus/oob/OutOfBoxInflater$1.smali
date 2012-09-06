.class Lcom/google/android/apps/plus/oob/OutOfBoxInflater$1;
.super Ljava/lang/Object;
.source "OutOfBoxInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->inflateFromResponse(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Lcom/google/android/apps/plus/oob/ActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/oob/OutOfBoxInflater;

.field final synthetic val$action:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

.field final synthetic val$actionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/oob/OutOfBoxInflater;Lcom/google/android/apps/plus/oob/ActionCallback;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater$1;->this$0:Lcom/google/android/apps/plus/oob/OutOfBoxInflater;

    iput-object p2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater$1;->val$actionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    iput-object p3, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater$1;->val$action:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater$1;->val$actionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater$1;->val$action:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/oob/ActionCallback;->onAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)V

    .line 116
    return-void
.end method
