.class Lcom/google/android/apps/plus/hangout/ToastsView$1;
.super Ljava/lang/Object;
.source "ToastsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/ToastsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/ToastsView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/ToastsView$1;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$1;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    #calls: Lcom/google/android/apps/plus/hangout/ToastsView;->hideToast()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->access$200(Lcom/google/android/apps/plus/hangout/ToastsView;)V

    .line 217
    return-void
.end method
