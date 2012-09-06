.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$51;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getUseDifferentAccountClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 3145
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$51;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$51;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    .line 3149
    return-void
.end method
