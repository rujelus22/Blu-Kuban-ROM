.class Lcom/google/android/apps/translate/asreditor/ProgressSpinner$2;
.super Ljava/lang/Object;
.source "ProgressSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/asreditor/ProgressSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/asreditor/ProgressSpinner;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/asreditor/ProgressSpinner;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$2;->this$0:Lcom/google/android/apps/translate/asreditor/ProgressSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$2;->this$0:Lcom/google/android/apps/translate/asreditor/ProgressSpinner;

    #getter for: Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->access$000(Lcom/google/android/apps/translate/asreditor/ProgressSpinner;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 35
    return-void
.end method
